#include <hls_video.h>
#include "sobel.h"
//Puedo crear un objeto de imagen con:

hls::Mat<720, 1280, HLS_8UC3> imagenHLS(); //Definiendola asi, se especifica que el tamaño maximo sera de 1280x720
											//Y que imagenHLS tendrá el tamaño máximo permitido.
//Podria crearla con Mat<2100, 2100, HLS_8UC3> indicando que el maximo tamaño permitido seria de 2100x2100
//E indicando el tamaño de mi imagenHLS usando imagenHLS(1080,1920).

void sobel(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM, int rows, int cols) {

#pragma HLS INTERFACE axis port=INPUT_STREAM
#pragma HLS INTERFACE axis port=OUTPUT_STREAM
#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"
#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

	RGB_IMAGE img_0(rows, cols);
	RGB_IMAGE img_1(rows, cols);

#pragma HLS dataflow
    //Se convierte el stream de entrada, de un AXIVideo al formato MAT, y se almacena en img_0
		hls::AXIvideo2Mat(INPUT_STREAM, img_0);

    //Se le aplica el filtro sobel con la función propia, a la img_0 y el resultado, se guarda en img_1
      hls::Sobel<1,0,3>(img_0, img_1);

    //Y finalmente, transformamos la img_1 de MAT a AXIVideo, y se pega en OUTPUT_STREAM
		hls::Mat2AXIvideo(img_1, OUTPUT_STREAM);
}
