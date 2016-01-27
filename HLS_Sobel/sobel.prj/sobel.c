void sobel(AXI_STREAM& input, AXI_STREAM& output, int rows, int cols){
 //Create AXI streaming interfaces for the core
 #pragma HLS RESOURCE variable=input core=AXIS metadata="-bus_bundle INPUT_STREAM"
 #pragma HLS RESOURCE variable=output core=AXIS metadata="-bus_bundle OUTPUT_STREAM"
 #pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
 #pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
 #pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"
 #pragma HLS interface ap_stable port=rows
 #pragma HLS interface ap_stable port=cols
 hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> _src(rows,cols);
 hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> _dst(rows,cols);
 #pragma HLS dataflow
 hls::AXIvideo2Mat(input, _src);
 hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> src0(rows,cols);
 hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> src1(rows,cols);
 #pragma HLS stream depth=20000 variable=src1.data_stream
 hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC1> mask(rows,cols);
 hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC1> dmask(rows,cols);
 hls::Scalar<3, unsigned char> color(255,0,0);
 hls::Duplicate(_src,src0,src1);
FASTX(src0,mask,20,true);
 hls::Dilate(mask,dmask);
 PaintMask(src1,dmask,_dst,color);
 hls::Mat2AXIvideo(_dst, output);
}
