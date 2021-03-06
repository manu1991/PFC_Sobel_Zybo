#define FRAME_HORIZONTAL_LEN  1280*4
#define SUBFRAME_HORIZONTAL_SIZE 1280*4
#define SUBFRAME_VERTICAL_SIZE   720


int iniciaVdmaHdmi(int ID_VDMA, XAxiVdma_Config *CfgVdmaHdmi, XAxiVdma VdmaHdmi, XAxiVdma_DmaSetup StpVdmaHdmi, DisplayCtrl vgaCtrl){
	int Status,i;

	xil_printf("<-----------------INICIADA LA CONFIGURACION DEL VDMA HDMI------------------->\n\r");
	//Buscamos la configuracion del VDMA HDMI
	CfgVdmaHdmi = XAxiVdma_LookupConfig(ID_VDMA);
	//Con esto, tenemos la estructura de configuracion del VdmaHdmi en CfgVdmaHdmi.

	//Inicio el driver:
	Status = XAxiVdma_CfgInitialize(&VdmaHdmi, CfgVdmaHdmi, CfgVdmaHdmi->BaseAddress);

	//Status sera: XST_SUCCESS si todo va bien. XST_FAILURE si no.
	if (Status == XST_SUCCESS){
		//Asigno los 3 buffers de almacenamiento de frames
		Status = XAxiVdma_SetFrmStore(&VdmaHdmi, 3, XAXIVDMA_WRITE);
		if (Status == XST_SUCCESS){
			//xil_printf("Se han indicado 3 buffers de almacenamiento\n\r");
			//return Status;
		}else{
			xil_printf("Algo se ha jodido al indicar 3 buffers");
			return Status;
		}
	}else{
		xil_printf("Algo se ha jodido al iniciar el driver");
		return Status;
	}

	//Configuro los parametros necesarios para el VDMA
	StpVdmaHdmi.VertSizeInput = SUBFRAME_VERTICAL_SIZE;
	StpVdmaHdmi.HoriSizeInput = SUBFRAME_HORIZONTAL_SIZE;
	StpVdmaHdmi.Stride = FRAME_HORIZONTAL_LEN;
	StpVdmaHdmi.FrameDelay = 0;  /* This example does not test frame delay */
	StpVdmaHdmi.EnableCircularBuf = 1;
	StpVdmaHdmi.EnableSync = 0;  /* Gen-Lock */
	StpVdmaHdmi.PointNum = 1;    /* No Gen-Lock */
	StpVdmaHdmi.EnableFrameCounter = 0; /* Endless transfers */
	//StpVdmaHdmi.FixedFrameStoreAddr = vgaCtrl.curFrame;

	for (i = 0; i < DISPLAY_NUM_FRAMES; i++){
		StpVdmaHdmi.FrameStoreStartAddr[i] = (u32)(vgaCtrl.framePtr[i]);
		xil_printf("Direccion %d frameStoreStart HDMI --> %x\n\r", i, (u32)(vgaCtrl.framePtr[i]));
	}

	Status = XAxiVdma_DmaConfig(&VdmaHdmi, XAXIVDMA_WRITE, &StpVdmaHdmi);
	Status = XAxiVdma_DmaSetBufferAddr(&VdmaHdmi, XAXIVDMA_WRITE, StpVdmaHdmi.FrameStoreStartAddr);
	xil_printf("Direccion del FrameStoreStartAddr del HDMI --> %x\n\r", StpVdmaHdmi.FrameStoreStartAddr);
	Status = XAxiVdma_DmaStart(&VdmaHdmi, XAXIVDMA_WRITE);
	Status = XAxiVdma_StartParking(&VdmaHdmi, vgaCtrl.curFrame, XAXIVDMA_WRITE);

		if (Status != XST_SUCCESS)
		{
			xil_printf("Unable to park the channel %d\r\n", Status);
			return XST_FAILURE;
		}

		xil_printf("STATUS: %d", Status);

//		int direccion1 = 1147376; //0x1181f0;
//		int direccion2 = 6294752; //0x600ce0;
//		for (i = 0; i < DISPLAY_NUM_FRAMES*DISPLAYDEMO_MAX_FRAME; i++){
//	//		*(&vgaCtrl.framePtr[1]+1) = *(&vgaCtrl.framePtr[1]+1) + 0x64;
//			*(&direccion2 + i) = *(&direccion1 + i) - 64;
//			xil_printf("Direccion 1: %x\n\r", *(&direccion1+i));
//			xil_printf("Direccion 2: %x\n\r", *(&direccion2+i));
//		}

	if (Status == XST_SUCCESS){
		//Todo correcto, se devuelve XST_SUCCESS
		return Status;
	}else{
		xil_printf("Error al asignar la direccion del buffer. Status vale: %d\n\r",Status);
		//return Status;
	}

}


int iniciaVdmaHdmi2(int ID_VDMA, XAxiVdma_Config *CfgVdmaHdmi, XAxiVdma VdmaHdmi, XAxiVdma_DmaSetup StpVdmaHdmi, u32 *puntero[], DisplayCtrl vgaCtrl){
	int Status,i;

	xil_printf("<-----------------INICIADA LA CONFIGURACION DEL VDMA HDMI------------------->\n\r");
	//Buscamos la configuracion del VDMA HDMI
	CfgVdmaHdmi = XAxiVdma_LookupConfig(ID_VDMA);
	//Con esto, tenemos la estructura de configuracion del VdmaHdmi en CfgVdmaHdmi.

	//Inicio el driver:
	Status = XAxiVdma_CfgInitialize(&VdmaHdmi, CfgVdmaHdmi, CfgVdmaHdmi->BaseAddress);

	//Status sera: XST_SUCCESS si todo va bien. XST_FAILURE si no.
	if (Status == XST_SUCCESS){
		//Asigno los 3 buffers de almacenamiento de frames
		Status = XAxiVdma_SetFrmStore(&VdmaHdmi, 3, XAXIVDMA_WRITE);
		if (Status == XST_SUCCESS){
			//xil_printf("Se han indicado 3 buffers de almacenamiento\n\r");
			//return Status;
		}else{
			xil_printf("Algo se ha jodido al indicar 3 buffers");
			return Status;
		}
	}else{
		xil_printf("Algo se ha jodido al iniciar el driver");
		return Status;
	}

	//Configuro los parametros necesarios para el VDMA
	StpVdmaHdmi.VertSizeInput = SUBFRAME_VERTICAL_SIZE;
	StpVdmaHdmi.HoriSizeInput = SUBFRAME_HORIZONTAL_SIZE;
	StpVdmaHdmi.Stride = FRAME_HORIZONTAL_LEN;
	StpVdmaHdmi.FrameDelay = 0;  /* This example does not test frame delay */
	StpVdmaHdmi.EnableCircularBuf = 1;
	StpVdmaHdmi.EnableSync = 0;  /* Gen-Lock */
	StpVdmaHdmi.PointNum = 1;    /* No Gen-Lock */
	StpVdmaHdmi.EnableFrameCounter = 0; /* Endless transfers */
	//StpVdmaHdmi.FixedFrameStoreAddr = vgaCtrl.curFrame;

	for (i = 0; i < DISPLAY_NUM_FRAMES; i++){
		StpVdmaHdmi.FrameStoreStartAddr[i] = (u32) puntero[i];
		xil_printf("Direccion %d frameStoreStart HDMI --> %x\n\r", i, (u32) puntero[i]);
	}

	Status = XAxiVdma_DmaConfig(&VdmaHdmi, XAXIVDMA_WRITE, &StpVdmaHdmi);
	Status = XAxiVdma_DmaSetBufferAddr(&VdmaHdmi, XAXIVDMA_WRITE, StpVdmaHdmi.FrameStoreStartAddr);
	xil_printf("Direccion del FrameStoreStartAddr del HDMI --> %x\n\r", StpVdmaHdmi.FrameStoreStartAddr);
	Status = XAxiVdma_DmaStart(&VdmaHdmi, XAXIVDMA_WRITE);
	Status = XAxiVdma_StartParking(&VdmaHdmi, vgaCtrl.curFrame, XAXIVDMA_WRITE);

		if (Status != XST_SUCCESS)
		{
			xil_printf("Unable to park the channel %d\r\n", Status);
			return XST_FAILURE;
		}

		xil_printf("STATUS: %d", Status);

	if (Status == XST_SUCCESS){
		//Todo correcto, se devuelve XST_SUCCESS
		return Status;
	}else{
		xil_printf("Error al asignar la direccion del buffer. Status vale: %d\n\r",Status);
		//return Status;
	}

}

int iniciaVdmaHls(int ID_VDMA, XAxiVdma_Config *CfgVdmaHls, XAxiVdma VdmaHls, XAxiVdma_DmaSetup StpRead, XAxiVdma_DmaSetup StpWrite, u32 *punteroRead[], u32 *punteroWrite[], DisplayCtrl vgaCtrl)
{
	int Status,i;

	xil_printf("<-----------------INICIADA LA CONFIGURACION DEL VDMA HLS------------------->\n\r");
	//Buscamos la configuracion del VDMA HDMI
	CfgVdmaHls = XAxiVdma_LookupConfig(ID_VDMA);
	//Con esto, tenemos la estructura de configuracion del VdmaHls en CfgVdmaHls.
		//Inicio el driver:
	Status = XAxiVdma_CfgInitialize(&VdmaHls, CfgVdmaHls, CfgVdmaHls->BaseAddress);
		//Status sera: XST_SUCCESS si todo va bien. XST_FAILURE si no.
	if (Status == XST_SUCCESS){
		//Asigno los 3 buffers de almacenamiento de frames para escritura
		xil_printf("Voy a poner los 3 frames en el HLS de escritura\n\r");
		Status = XAxiVdma_SetFrmStore(&VdmaHls, 3, XAXIVDMA_WRITE);
		if (Status == XST_SUCCESS){
			xil_printf("Se han indicado 3 buffers de almacenamiento\n\r");
			//return Status;
		}else{
			xil_printf("Algo se ha jodido al indicar 3 buffers de escritura");
			return Status;
		}

		//Y ahora asigno los 3 buffers de almacenamiento de frames para lectura
		xil_printf("Voy a poner los 3 frames en el HLS de lectura\n\r");
		Status = XAxiVdma_SetFrmStore(&VdmaHls, 3, XAXIVDMA_READ);
		if (Status == XST_SUCCESS){
			//xil_printf("Se han indicado 3 buffers de almacenamiento\n\r");
			//return Status;
		}else{
			xil_printf("Algo se ha jodido al indicar 3 buffers de lectura");
			return Status;
		}
	}else{
		xil_printf("Algo se ha jodido al iniciar el driver");
		return Status;
	}
		//Configuro los parametros necesarios para el VDMA de la parte de ESCRITURA
	StpWrite.VertSizeInput = SUBFRAME_VERTICAL_SIZE;
	StpWrite.HoriSizeInput = SUBFRAME_HORIZONTAL_SIZE;
	StpWrite.Stride = FRAME_HORIZONTAL_LEN;
	StpWrite.FrameDelay = 0;  /* This example does not test frame delay */
	StpWrite.EnableCircularBuf = 1;
	StpWrite.EnableSync = 0;  /* Gen-Lock */
	StpWrite.PointNum = 1;    /* No Gen-Lock */
	StpWrite.EnableFrameCounter = 0; /* Endless transfers */
	StpWrite.FixedFrameStoreAddr = vgaCtrl.curFrame;
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++){
		StpWrite.FrameStoreStartAddr[i] = (u32) punteroWrite[i];
		xil_printf("Direccion %d frameStoreStart Escritura HLS --> %x\n\r", i, (u32) punteroWrite[i]);
	}

	Status = XAxiVdma_DmaConfig(&VdmaHls, XAXIVDMA_WRITE, &StpWrite);
	if (Status != XST_SUCCESS){
		xil_printf("$$$$$$$$$$$$$$$$ Se jodio el dmaConfig del VDMA HLS $$$$$$$$$$$$$$$$\n\r");
	}

	xil_printf("Direccion del FrameStoreStartAddr de ESCRITURA HLS --> %x\n\r", StpWrite.FrameStoreStartAddr);
	Status = XAxiVdma_DmaSetBufferAddr(&VdmaHls, XAXIVDMA_WRITE, StpWrite.FrameStoreStartAddr);
	if (Status == XST_SUCCESS){
		//Todo correcto, se devuelve XST_SUCCESS
		xil_printf("DmaSetBufferAddr HLS WRITE todo correcto. Status vale: %d\n\r",Status);
	}else{
		xil_printf("Error en DmaSetBufferAddres de la ESCRITURA en el VDMA HLS. Status vale: %d\n\r",Status);
		//return Status;
	}

	Status = XAxiVdma_DmaStart(&VdmaHls, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS){
		xil_printf("%%%%%%%%% Se jodio el DMAStart de escritura del VDMA HLS %%%%%%%%%\n\r");
	}

	Status = XAxiVdma_StartParking(&VdmaHls, vgaCtrl.curFrame, XAXIVDMA_WRITE);
	if (Status == XST_SUCCESS){
		//Todo correcto, se devuelve XST_SUCCESS
		xil_printf("Configurada correctamente StartParking en la ESCRITURA en el VDMA HLS. Status vale: %d\n\r",Status);
	}else{
		xil_printf("Error en StartParking en la ESCRITURA en el VDMA HLS. Status vale: %d\n\r",Status);
		//return Status;
	}


	//Configuro los parametros necesarios para el VDMA de la parte de LECTURA
	StpRead.VertSizeInput = SUBFRAME_VERTICAL_SIZE;
	StpRead.HoriSizeInput = SUBFRAME_HORIZONTAL_SIZE;
	StpRead.Stride = FRAME_HORIZONTAL_LEN;
	StpRead.FrameDelay = 0;  /* This example does not test frame delay */
	StpRead.EnableCircularBuf = 1;
	StpRead.EnableSync = 0;  /* Gen-Lock */
	StpRead.PointNum = 1;    /* No Gen-Lock */
	StpRead.EnableFrameCounter = 0; /* Endless transfers */
	StpRead.FixedFrameStoreAddr = vgaCtrl.curFrame;

	for (i = 0; i < DISPLAY_NUM_FRAMES; i++){
		StpRead.FrameStoreStartAddr[i] = (u32) punteroRead[i];
		xil_printf("Direccion %d frameStoreStart Lectura HLS --> %x\n\r", i, (u32) punteroRead[i]);
	}

	Status = XAxiVdma_DmaConfig(&VdmaHls, XAXIVDMA_READ, &StpRead);
	Status = XAxiVdma_DmaSetBufferAddr(&VdmaHls, XAXIVDMA_READ, StpRead.FrameStoreStartAddr);
	xil_printf("Direccion del FrameStoreStartAddr de LECTURA HLS --> %x\n\r", StpRead.FrameStoreStartAddr);

	if (Status == XST_SUCCESS){
		//Todo correcto, se devuelve XST_SUCCESS
		xil_printf("DmaSetBufferAddr HLS READ todo correcto. Status vale: %d\n\r",Status);
	}else{
		xil_printf("Error al configurar la ESCRITURA en el VDMA HLS. Status vale: %d\n\r",Status);
		return Status;
	}


	Status = XAxiVdma_DmaStart(&VdmaHls, XAXIVDMA_READ);
	Status = XAxiVdma_StartParking(&VdmaHls, vgaCtrl.curFrame, XAXIVDMA_READ);

		if (Status != XST_SUCCESS)
		{
			xil_printf("Unable to park the read channel %d\r\n", Status);
			return XST_FAILURE;
		}

	if (Status == XST_SUCCESS){
		//Todo correcto, se devuelve XST_SUCCESS
		xil_printf("Configurada correctamente la LECTURA en el VDMA HLS. Status vale: %d\n\r",Status);
		return Status;
	}else{
		xil_printf("Error al asignar la direccion del buffer. Status vale: %d\n\r",Status);
		return Status;
	}

}

