/* ------------------------------------------------------------ */
/*        				Ficheros incluidos						*/
/* ------------------------------------------------------------ */

#include "display_demo.h"
#include "xaxivdma.h"
#include "timer_ps.h"
#include "xparameters.h"
#include "xuartps.h"
#include "funcionesVdma.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xsdps.h"
#include "xsobel.h"
#include "xgpio.h"


/* ------------------------------------------------------------ */
/*				        Variables Globales						*/
/* ------------------------------------------------------------ */

/*
 * Estructuras del driver para el display
 */
DisplayCtrl vgaCtrl;
XAxiVdma VdmaHDMI;


//Array de 3 x (1280x720 = 2764800) 1 frame para cada color.
u32 vgaBuf[DISPLAY_NUM_FRAMES][DISPLAYDEMO_MAX_FRAME];
u32 hdmiBuf[DISPLAY_NUM_FRAMES][DISPLAYDEMO_MAX_FRAME];

/*
 * Definiciones
 */
#define VGA_BASEADDR XPAR_AXI_DISPCTRL_VGA_S_AXI_BASEADDR //Direccion de inicio del DisplayController para el VGA OUT
#define VGA_VDMA_ID XPAR_AXI_VDMA_VGA_DEVICE_ID //Identificador del core VDMA VGA
#define HDMI_VDMA_ID XPAR_AXI_VDMA_HDMI_DEVICE_ID //Identificador del core VDMA HDMI
#define HLS_VDMA_ID XPAR_AXI_VDMA_HLS_DEVICE_ID //Identificador del core VDMA HLS
#define SCU_TIMER_ID XPAR_SCUTIMER_DEVICE_ID //Reloj interno
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR //Control de puertos serie
#define SW_BASEADDR XPAR_SWS_4BITS_BASEADDR
#define SW_ID XPAR_SWS_4BITS_DEVICE_ID
//#define BTN_BASEADDR XPAR_BTNS_4BITS_BASEADDR //Botones GPIO de 4 bits.
#define TIMER_LOAD_VALUE	0x64C4B8
//#define PROCESADO_BASEADDR XPAR_XPROCESADO_0_S_AXI_VIDEO_BASEADDR
//#define PROCESADO_ID XPAR_PROCESADO_0_DEVICE_ID
#define SOBEL_ID XPAR_SOBEL_0_DEVICE_ID

void MainDemoPrintMenu();

/*Variables necesarias para la inicializacion del VDMA HDMI*/
XAxiVdma_Config *CfgVdmaHdmi;
XAxiVdma VdmaHdmi;
XAxiVdma_DmaSetup StpVdmaHdmi;

/*Variables necesarias para la inicializacion del VDMA VGA*/
XAxiVdma_Config *CfgVdmaVga;
XAxiVdma VdmaVga;
XAxiVdma_DmaSetup StpVdmaVga;

/*Variables necesarias para la inicializacion del VDMA HLS*/
XAxiVdma_Config *CfgVdmaHls;
XAxiVdma VdmaHls;
XAxiVdma_DmaSetup StpRead;
XAxiVdma_DmaSetup StpWrite;

/*SCU Timer*/
XScuTimer TimerPS7;

/* ------------------------------------------------------------ */
/*				Definición de procesos							*/
/* ------------------------------------------------------------ */


void MainDemoPrintMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*         ZYBO Base System User Demo             *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - Audio Demo\n\r");
	xil_printf("2 - VGA output demo\n\r");
	xil_printf("3 - HDMI output demo\n\r");
	xil_printf("q - Quit\n\r");
	xil_printf("\n\r");
	xil_printf("Select a demo to run:");
}

int IniciarTimerPS7(XScuTimer *TimerInstancePtr, u16 TimerDeviceId){
	int Status;
	int LastTimerExpired = 0;
	XScuTimer_Config *ConfigPtr;
	//XScuTimer *TimerInstancePtr = &TimerPS7;

	volatile u32 CntValue1 = 0;
	volatile u32 CntValue2 = 0;
	/*
	 * Initialize the Scu Private Timer so that it is ready to use.
	 */
	ConfigPtr = XScuTimer_LookupConfig(TimerDeviceId);

	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XScuTimer_CfgInitialize(TimerInstancePtr, ConfigPtr,
				 ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Se carga el timer con el valor: 0x64C4B8 (TIMER_LOAD_VALUE) ya que
	 * el timer es decreciente, y lo que hago es que configuro un prescaler de 100
	 * para que cada evento del timer, ocurra en 1s segun la formula:
	 *
	 * tEvento = (Prescaler+1)*(TIMER_LOAD_VALUE+1)/(RelojPS)
	 * Donde el RelojPS lo tomo como 667MHz (Reloj del procesador de la Zybo)
	 *
	 * Despejando:
	 * Prescaler = (667MHz/TIMER_LOAD_VALUE) - 1.
	 */
	XScuTimer_LoadTimer(TimerInstancePtr, TIMER_LOAD_VALUE);

	//Configuro el preescaler:
	XScuTimer_SetPrescaler(&TimerPS7, 100);

	return XST_SUCCESS;
}


int main(void)
{
	//Vacio la cache para que no se muestre lo que hubiera anteriormente.
	Xil_DCacheDisable();


	xil_printf("\x1B[H"); //Coloco el cursor para escritura en la primera posicion arriba izquierda
	xil_printf("\x1B[2J"); //Limpio el terminal.

	u32 *vgaPtr[DISPLAY_NUM_FRAMES]; //Se crea un puntero array para vga de "DISPLAY_NUM_FRAMES" (3) Posiciones
	u32 *hdmiPtr[DISPLAY_NUM_FRAMES]; //Se crea un puntero array para hdmi de "DISPLAY_NUM_FRAMES" (3) Posiciones

	int i,j,Status;
	//char userInput = 0;

	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		//Se copian las direcciones reservadas para el vgaBuf en vgaPtr y para hdmiBuf en hdmiPtr:
		vgaPtr[i] = vgaBuf[i];
		hdmiPtr[i] = hdmiBuf[i];
	}

	TimerInitialize(SCU_TIMER_ID); //Necesario para que funcione el reloj del Zynq7

	XSobel *coreSobel;
	XSobel_Config *coreSobelCfg;

	//Comienzo a configurar el Core HLS "SOBEL":
	Status = XSobel_Initialize(&coreSobel, SOBEL_ID);
	xil_printf("Iniciado el core SOBEL. Status vale: %x\n\r", Status);

	coreSobelCfg = XSobel_LookupConfig(SOBEL_ID);
	Status = XSobel_CfgInitialize(&coreSobel, coreSobelCfg);
	xil_printf("Iniciado el core SOBEL. Status vale: %x\n\r", Status);

	XSobel_SetRows(&coreSobel, 720);
	xil_printf("Puestas las filas: %d\n\r", XSobel_GetRows(&coreSobel));
	XSobel_SetCols(&coreSobel, 1280);
	xil_printf("Puestas las columnas: %d\n\r", XSobel_GetCols(&coreSobel));
//	XSobel_SetModo(&coreSobel, 1);
//	xil_printf("Puesto el modo: %d\n\r", XSobel_GetModo(&coreSobel));
	XSobel_Start(&coreSobel);
	XSobel_EnableAutoRestart(&coreSobel);


	//Ahora, toca configurar el VDMA HLS para que LEA del hdmiPtr (entrada) y ESCRIBA en el vgaPtr (salida)
	Status = iniciaVdmaHls(HLS_VDMA_ID, CfgVdmaHls, VdmaHls, StpRead, StpWrite, hdmiPtr, vgaPtr, vgaCtrl);
	if (Status != XST_SUCCESS){
			xil_printf("No se ha iniciado correctamente el VDMA HLS Error: %d\n\r", Status);
	}

	//Configuro el VDMA VGA (SALIDA) con el puntero: vgaPtr, por tanto, la lectura, la hace DE ESE puntero.
	Status = DisplayDemoInitialize(&vgaCtrl, VGA_VDMA_ID, SCU_TIMER_ID, VGA_BASEADDR, DISPLAY_NOT_HDMI, vgaPtr);

	if (Status != XST_SUCCESS){
		xil_printf("<------Algo no se ha hecho bien------> %d\n\r", Status);
	}

	//Configuro el VDMA HDMI (ENTRADA) con el puntero: hdmiPtr, por tanto, la escritura, la hace EN ESE puntero.
	Status = iniciaVdmaHdmi2(HDMI_VDMA_ID, CfgVdmaHdmi, VdmaHdmi, StpVdmaHdmi, hdmiPtr, vgaCtrl);
	if (Status != XST_SUCCESS){
		xil_printf("No se ha iniciado correctamente el VDMA HDMI Error: %d\n\r", Status);
	}

	//Probando configuración de switches:
	XGpio *SW_4b;

	Status = XGpio_Initialize(&SW_4b, SW_ID);
	if (Status != XST_SUCCESS){
		xil_printf("Error al iniciar los Switches: %d\n\r", Status);
	}

	XGpio_SetDataDirection(&SW_4b, 1, 0xffff);

	int modo;
	int modoOld;

	modo = 9999;
	modoOld = 9999;

//	while(1){
//		modo = XGpio_DiscreteRead(&SW_4b, 1);
//		xil_printf("Valor del switch: %d\r\n", modo);
//
//		if (modoOld != modo){
//			modoOld = modo;
////			XSobel_SetModo(&coreSobel, modo);
////			xil_printf("Puesto el modo %d\n\r", XSobel_GetModo(&coreSobel));
//			xil_printf("Valor del switch: %d\r\n", modo);
//		}
//
//		sleep(1);
//	}

}
