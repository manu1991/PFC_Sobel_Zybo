; ModuleID = 'D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str1805 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1807 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str1808 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str1813 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1814 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1818 = private unnamed_addr constant [13 x i8] c"hls_label_18\00", align 1
@p_str1821 = private unnamed_addr constant [10 x i8] c"rows >= 8\00", align 1
@p_str1822 = private unnamed_addr constant [80 x i8] c"C:/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot/hls/hls_video_imgproc.h\00", align 1
@p_str1823 = private unnamed_addr constant [10 x i8] c"cols >= 8\00", align 1
@p_str1824 = private unnamed_addr constant [19 x i8] c"rows <= IMG_HEIGHT\00", align 1
@p_str1825 = private unnamed_addr constant [18 x i8] c"cols <= IMG_WIDTH\00", align 1
@p_str1827 = private unnamed_addr constant [79 x i8] c"(x < IMG_WIDTH) && ((BORDERMODE::value == BORDER_CONSTANT::value) || (x >= 0))\00", align 1
@p_str1828 = private unnamed_addr constant [40 x i8] c"t < 0 || (locy >= 0 && locy < K_HEIGHT)\00", align 1
@p_str1829 = private unnamed_addr constant [49 x i8] c"row >= 0 && row < ROWS && col >= 0 && col < COLS\00", align 1
@p_str1830 = private unnamed_addr constant [76 x i8] c"C:/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot/hls/hls_video_mem.h\00", align 1
@p_str1836 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1837 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@p_str1838 = private unnamed_addr constant [13 x i8] c"hls_label_20\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [6 x i8] c"sobel\00"
@p_str1 = internal constant [61 x i8] c"hls::LineBuffer<3, 1280, unsigned char>::LineBuffer.1.region\00"
@p_str2 = internal constant [58 x i8] c"hls::LineBuffer<3, 3, unsigned char>::LineBuffer.1.region\00"
@p_str4 = internal constant [58 x i8] c"hls::LineBuffer<3, 1, unsigned char>::LineBuffer.1.region\00"
@str76 = internal constant [23 x i8] c"img_0.data_stream[0].V\00"
@str77 = internal constant [1 x i8] zeroinitializer
@str78 = internal constant [8 x i8] c"ap_fifo\00"
@str79 = internal constant [1 x i8] zeroinitializer
@str80 = internal constant [23 x i8] c"img_0.data_stream[1].V\00"
@str81 = internal constant [1 x i8] zeroinitializer
@str82 = internal constant [8 x i8] c"ap_fifo\00"
@str83 = internal constant [1 x i8] zeroinitializer
@str84 = internal constant [23 x i8] c"img_0.data_stream[2].V\00"
@str85 = internal constant [1 x i8] zeroinitializer
@str86 = internal constant [8 x i8] c"ap_fifo\00"
@str87 = internal constant [1 x i8] zeroinitializer
@str88 = internal constant [23 x i8] c"img_1.data_stream[0].V\00"
@str89 = internal constant [1 x i8] zeroinitializer
@str90 = internal constant [8 x i8] c"ap_fifo\00"
@str91 = internal constant [1 x i8] zeroinitializer
@str92 = internal constant [23 x i8] c"img_1.data_stream[1].V\00"
@str93 = internal constant [1 x i8] zeroinitializer
@str94 = internal constant [8 x i8] c"ap_fifo\00"
@str95 = internal constant [1 x i8] zeroinitializer
@str96 = internal constant [23 x i8] c"img_1.data_stream[2].V\00"
@str97 = internal constant [1 x i8] zeroinitializer
@str98 = internal constant [8 x i8] c"ap_fifo\00"
@str99 = internal constant [1 x i8] zeroinitializer

define void @sobel(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, i32 %rows, i32 %cols) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %INPUT_STREAM_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %INPUT_STREAM_V_keep_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %INPUT_STREAM_V_strb_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_user_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_last_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_id_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_dest_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %OUTPUT_STREAM_V_data_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %OUTPUT_STREAM_V_keep_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %OUTPUT_STREAM_V_strb_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_user_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_last_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_id_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_dest_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rows), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %cols), !map !69
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  %cols_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %rows)
  %img_0_data_stream_0_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str76, i32 1, [1 x i8]* @str77, [1 x i8]* @str77, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str79, [1 x i8]* @str79, [8 x i8]* @str78)
  %img_0_data_stream_1_V = alloca i8, align 1
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str80, i32 1, [1 x i8]* @str81, [1 x i8]* @str81, i32 1, i32 1, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_1_V, [8 x i8]* @str82, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str83, [1 x i8]* @str83, [8 x i8]* @str82)
  %img_0_data_stream_2_V = alloca i8, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str84, i32 1, [1 x i8]* @str85, [1 x i8]* @str85, i32 1, i32 1, i8* %img_0_data_stream_2_V, i8* %img_0_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_2_V, [8 x i8]* @str86, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str87, [1 x i8]* @str87, [8 x i8]* @str86)
  %img_1_data_stream_0_V = alloca i8, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str88, i32 1, [1 x i8]* @str89, [1 x i8]* @str89, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str91, [1 x i8]* @str91, [8 x i8]* @str90)
  %img_1_data_stream_1_V = alloca i8, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str92, i32 1, [1 x i8]* @str93, [1 x i8]* @str93, i32 1, i32 1, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V, [8 x i8]* @str94, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str95, [1 x i8]* @str95, [8 x i8]* @str94)
  %img_1_data_stream_2_V = alloca i8, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str96, i32 1, [1 x i8]* @str97, [1 x i8]* @str97, i32 1, i32 1, i8* %img_1_data_stream_2_V, i8* %img_1_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_2_V, [8 x i8]* @str98, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str99, [1 x i8]* @str99, [8 x i8]* @str98)
  call void (...)* @_ssdm_op_SpecInterface(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecInterface(i32 %rows, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %cols, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  %call_ret = call fastcc { i12, i12, i12, i12, i12, i12 } @sobel_Block__proc(i32 %rows_read, i32 %cols_read)
  %img_0_rows_V_channel = extractvalue { i12, i12, i12, i12, i12, i12 } %call_ret, 0
  %img_0_rows_V_channel1 = extractvalue { i12, i12, i12, i12, i12, i12 } %call_ret, 1
  %img_0_cols_V_channel = extractvalue { i12, i12, i12, i12, i12, i12 } %call_ret, 2
  %img_0_cols_V_channel1 = extractvalue { i12, i12, i12, i12, i12, i12 } %call_ret, 3
  %img_1_rows_V = extractvalue { i12, i12, i12, i12, i12, i12 } %call_ret, 4
  %img_1_cols_V = extractvalue { i12, i12, i12, i12, i12, i12 } %call_ret, 5
  call fastcc void @sobel_AXIvideo2Mat(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i12 %img_0_rows_V_channel, i12 %img_0_cols_V_channel, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V)
  call fastcc void @sobel_Sobel(i12 %img_0_rows_V_channel1, i12 %img_0_cols_V_channel1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V)
  call fastcc void @sobel_Mat2AXIvideo(i12 %img_1_rows_V, i12 %img_1_cols_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V)
  ret void
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i8
  ret i8 %empty_13
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_14 = zext i8 %3 to i16
  %empty_15 = shl i16 %empty, 8
  %empty_16 = or i16 %empty_15, %empty_14
  %empty_17 = zext i8 %1 to i24
  %empty_18 = zext i16 %empty_16 to i24
  %empty_19 = shl i24 %empty_17, 16
  %empty_20 = or i24 %empty_19, %empty_18
  %empty_21 = zext i8 %0 to i32
  %empty_22 = zext i24 %empty_20 to i32
  %empty_23 = shl i32 %empty_21, 24
  %empty_24 = or i32 %empty_23, %empty_22
  ret i32 %empty_24
}

define internal fastcc void @sobel_Filter2D(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V) {
arrayctor.loop1.i.preheader:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_2_V, [8 x i8]* @str98, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str99, [1 x i8]* @str99, [8 x i8]* @str98)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_1_V, [8 x i8]* @str94, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str95, [1 x i8]* @str95, [8 x i8]* @str94)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_0_V, [8 x i8]* @str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str91, [1 x i8]* @str91, [8 x i8]* @str90)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_2_V, [8 x i8]* @str86, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str87, [1 x i8]* @str87, [8 x i8]* @str86)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @str82, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str83, [1 x i8]* @str83, [8 x i8]* @str82)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str79, [1 x i8]* @str79, [8 x i8]* @str78)
  %p_src_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  %k_buf_0_val_0 = alloca [1280 x i8], align 1
  %k_buf_0_val_1 = alloca [1280 x i8], align 1
  %k_buf_0_val_2 = alloca [1280 x i8], align 1
  %k_buf_1_val_0 = alloca [1280 x i8], align 1
  %k_buf_1_val_1 = alloca [1280 x i8], align 1
  %k_buf_1_val_2 = alloca [1280 x i8], align 1
  %k_buf_2_val_0 = alloca [1280 x i8], align 1
  %k_buf_2_val_1 = alloca [1280 x i8], align 1
  %k_buf_2_val_2 = alloca [1280 x i8], align 1
  %right_border_buf_0_val_0_0 = alloca i8, align 1
  %right_border_buf_0_val_0_1 = alloca i8, align 1
  %right_border_buf_0_val_0_2 = alloca i8, align 1
  %right_border_buf_1_val_0_0 = alloca i8, align 1
  %right_border_buf_1_val_0_1 = alloca i8, align 1
  %right_border_buf_1_val_0_2 = alloca i8, align 1
  %right_border_buf_2_val_0_0 = alloca i8, align 1
  %right_border_buf_2_val_0_1 = alloca i8, align 1
  %right_border_buf_2_val_0_2 = alloca i8, align 1
  %col_buf_0_val_0_0 = alloca i8, align 1
  %col_buf_1_val_0_0 = alloca i8, align 1
  %col_buf_2_val_0_0 = alloca i8, align 1
  %tmp = trunc i12 %p_src_rows_V_read_1 to i10
  %tmp_6 = trunc i12 %p_src_cols_V_read_1 to i11
  %cols_cast1 = zext i12 %p_src_cols_V_read_1 to i13
  br label %arrayctor.loop1.i

arrayctor.loop1.i:                                ; preds = %arrayctor.loop1.i214215, %arrayctor.loop1.i.preheader
  %tmp_7 = phi i2 [ %tmp_8, %arrayctor.loop1.i214215 ], [ 0, %arrayctor.loop1.i.preheader ]
  %tmp_8 = add i2 %tmp_7, 1
  %rbegin_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([61 x i8]* @p_str1) nounwind
  switch i2 %tmp_7, label %branch2 [
    i2 0, label %branch0
    i2 1, label %branch1
  ]

arrayctor.loop1.i214:                             ; preds = %branch2, %branch1, %branch0
  switch i2 %tmp_7, label %branch5 [
    i2 0, label %branch3
    i2 1, label %branch4
  ]

arrayctor.loop1.i214215:                          ; preds = %branch5, %branch4, %branch3
  %rend_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([61 x i8]* @p_str1, i32 %rbegin_i_i) nounwind
  %tmp_9 = icmp eq i2 %tmp_7, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_9, label %arrayctor.loop2.i, label %arrayctor.loop1.i

arrayctor.loop2.i:                                ; preds = %arrayctor.loop1.i214215, %arrayctor.loop2.i291292
  %tmp_s = phi i2 [ %tmp_1, %arrayctor.loop2.i291292 ], [ 0, %arrayctor.loop1.i214215 ]
  %tmp_1 = add i2 %tmp_s, 1
  %rbegin_i251_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([58 x i8]* @p_str2) nounwind
  switch i2 %tmp_s, label %branch8 [
    i2 0, label %branch6
    i2 1, label %branch7
  ]

arrayctor.loop2.i291:                             ; preds = %branch8, %branch7, %branch6
  switch i2 %tmp_s, label %branch11 [
    i2 0, label %branch9
    i2 1, label %branch10
  ]

arrayctor.loop2.i291292:                          ; preds = %branch11, %branch10, %branch9
  %rend_i252_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([58 x i8]* @p_str2, i32 %rbegin_i251_i) nounwind
  %tmp_2 = icmp eq i2 %tmp_s, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_2, label %arrayctor.loop3.i, label %arrayctor.loop2.i

arrayctor.loop3.i:                                ; preds = %arrayctor.loop2.i291292, %arrayctor.loop3.i368369
  %tmp_3 = phi i2 [ %tmp_4, %arrayctor.loop3.i368369 ], [ 0, %arrayctor.loop2.i291292 ]
  %tmp_4 = add i2 %tmp_3, 1
  %rbegin_i253_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([58 x i8]* @p_str4) nounwind
  switch i2 %tmp_3, label %branch14 [
    i2 0, label %branch12
    i2 1, label %branch13
  ]

arrayctor.loop3.i368:                             ; preds = %branch14, %branch13, %branch12
  switch i2 %tmp_3, label %branch17 [
    i2 0, label %branch15
    i2 1, label %branch16
  ]

arrayctor.loop3.i368369:                          ; preds = %branch17, %branch16, %branch15
  %rend_i254_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([58 x i8]* @p_str4, i32 %rbegin_i253_i) nounwind
  %tmp_5 = icmp eq i2 %tmp_3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_5, label %._crit_edge.i, label %arrayctor.loop3.i

._crit_edge.i:                                    ; preds = %arrayctor.loop3.i368369
  %src_kernel_win_0_val_0_1 = alloca i8, align 1
  %src_kernel_win_0_val_0_2 = alloca i8, align 1
  %col_buf_2_val_0_0_3 = alloca i8, align 1
  %src_kernel_win_0_val_2_1 = alloca i8, align 1
  %src_kernel_win_0_val_1_1 = alloca i8, align 1
  %src_kernel_win_0_val_1_2 = alloca i8, align 1
  %col_buf_2_val_0_0_5 = alloca i8, align 1
  %src_kernel_win_0_val_2_2 = alloca i8, align 1
  %col_buf_2_val_0_0_6 = alloca i8, align 1
  %src_kernel_win_1_val_0_1 = alloca i8, align 1
  %src_kernel_win_1_val_0_2 = alloca i8, align 1
  %right_border_buf_2_val_1_2_1 = alloca i8, align 1
  %src_kernel_win_1_val_2_1 = alloca i8, align 1
  %src_kernel_win_1_val_1_1 = alloca i8, align 1
  %src_kernel_win_1_val_1_2 = alloca i8, align 1
  %right_border_buf_2_val_1_2_2 = alloca i8, align 1
  %src_kernel_win_1_val_2_2 = alloca i8, align 1
  %right_border_buf_2_val_1_2_3 = alloca i8, align 1
  %src_kernel_win_2_val_0_1 = alloca i8, align 1
  %src_kernel_win_2_val_0_2 = alloca i8, align 1
  %col_buf_1_val_0_0_3 = alloca i8, align 1
  %src_kernel_win_2_val_2_1 = alloca i8, align 1
  %src_kernel_win_2_val_1_1 = alloca i8, align 1
  %src_kernel_win_2_val_1_2 = alloca i8, align 1
  %col_buf_1_val_0_0_5 = alloca i8, align 1
  %src_kernel_win_2_val_2_2 = alloca i8, align 1
  %col_buf_1_val_0_0_6 = alloca i8, align 1
  %right_border_buf_0_val_1_2_1 = alloca i8, align 1
  %right_border_buf_0_val_1_2_2 = alloca i8, align 1
  %right_border_buf_0_val_1_2_7 = alloca i8, align 1
  %col_buf_0_val_0_0_3 = alloca i8, align 1
  %col_buf_0_val_0_0_5 = alloca i8, align 1
  %col_buf_0_val_0_0_6 = alloca i8, align 1
  %right_border_buf_1_val_1_2_1 = alloca i8, align 1
  %right_border_buf_1_val_1_2_2 = alloca i8, align 1
  %right_border_buf_1_val_1_2_7 = alloca i8, align 1
  %heightloop = add i10 %tmp, 5
  %widthloop = add i11 %tmp_6, 2
  %tmp_10 = add i11 %tmp_6, -3
  %tmp_15_cast = zext i11 %tmp_10 to i12
  %p_neg229_i = sub i12 3, %p_src_cols_V_read_1
  %tmp_11 = trunc i12 %p_neg229_i to i2
  %ref = add i10 %tmp, -1
  %ref_cast = zext i10 %ref to i11
  %tmp_12 = trunc i10 %ref to i2
  br label %0

; <label>:0                                       ; preds = %9, %._crit_edge.i
  %p_012_0_i = phi i10 [ 0, %._crit_edge.i ], [ %i_V, %9 ]
  %tmp_23_cast_cast = zext i10 %p_012_0_i to i11
  %tmp_13 = icmp ult i10 %p_012_0_i, %heightloop
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 725, i64 0)
  %i_V = add i10 %p_012_0_i, 1
  br i1 %tmp_13, label %1, label %"filter<32, 32, ap_int<8>, int, 720, 1280, 3, 3>.exit"

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  %tmp_15 = icmp ugt i10 %p_012_0_i, 4
  %ImagLoc_y = add i11 %tmp_23_cast_cast, -4
  %tmp_16 = icmp slt i11 %ImagLoc_y, -1
  %tmp_17 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %ImagLoc_y, i32 1, i32 10)
  %icmp = icmp sgt i10 %tmp_17, 0
  %tmp_76_2 = icmp slt i11 %ImagLoc_y, %ref_cast
  %or_cond6_2 = and i1 %icmp, %tmp_76_2
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %ImagLoc_y, i32 10)
  %tmp_21 = select i1 %tmp_76_2, i2 -2, i2 %tmp_12
  %ImagLoc_y_cast_cast = zext i11 %ImagLoc_y to i12
  %y_1_2 = add i11 %tmp_23_cast_cast, -5
  %y_1_2_cast_cast = sext i11 %y_1_2 to i12
  %y_1_2_1 = add i11 %tmp_23_cast_cast, -6
  %y_1_2_1_cast_cast = sext i11 %y_1_2_1 to i12
  %p_i = select i1 %tmp_76_2, i10 2, i10 %ref
  %tmp_22 = trunc i10 %p_i to i2
  %tmp_23 = trunc i10 %p_i to i2
  %brmerge = or i1 %tmp_16, %or_cond6_2
  br label %2

; <label>:2                                       ; preds = %._crit_edge246.i.2, %1
  %p_025_0_i = phi i11 [ 0, %1 ], [ %j_V, %._crit_edge246.i.2 ]
  %src_kernel_win_0_val_0_1_6 = load i8* %src_kernel_win_0_val_0_1, align 1
  %src_kernel_win_0_val_2_1_9 = load i8* %src_kernel_win_0_val_2_1, align 1
  %src_kernel_win_0_val_1_1_6 = load i8* %src_kernel_win_0_val_1_1, align 1
  %src_kernel_win_1_val_0_1_6 = load i8* %src_kernel_win_1_val_0_1, align 1
  %src_kernel_win_1_val_2_1_9 = load i8* %src_kernel_win_1_val_2_1, align 1
  %src_kernel_win_1_val_1_1_6 = load i8* %src_kernel_win_1_val_1_1, align 1
  %src_kernel_win_2_val_0_1_6 = load i8* %src_kernel_win_2_val_0_1, align 1
  %src_kernel_win_2_val_2_1_9 = load i8* %src_kernel_win_2_val_2_1, align 1
  %src_kernel_win_2_val_1_1_6 = load i8* %src_kernel_win_2_val_1_1, align 1
  %tmp_27_cast = zext i11 %p_025_0_i to i12
  %tmp_19 = icmp ult i11 %p_025_0_i, %widthloop
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 1282, i64 0)
  %j_V = add i11 %p_025_0_i, 1
  br i1 %tmp_19, label %.preheader227.i.preheader.0.0, label %9

.preheader227.i.preheader.0.0:                    ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_25 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_025_0_i, i32 1, i32 10)
  %icmp1 = icmp ne i10 %tmp_25, 0
  %or_cond222_i = and i1 %tmp_15, %icmp1
  %ImagLoc_x = add i12 %tmp_27_cast, -1
  %tmp_26 = trunc i12 %ImagLoc_x to i2
  %ImagLoc_x_cast = sext i12 %ImagLoc_x to i13
  %x = call fastcc i14 @sobel_borderInterpolate(i12 %ImagLoc_x, i12 %p_src_cols_V_read_1) nounwind
  %x_ext = sext i14 %x to i32
  %tmp_27 = trunc i14 %x to i2
  %tmp_24 = zext i32 %x_ext to i64
  %k_buf_0_val_0_addr = getelementptr [1280 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_24
  %right_border_buf_0_val_2_0 = load i8* %k_buf_0_val_0_addr, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0, align 1
  %k_buf_0_val_1_addr = getelementptr [1280 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_24
  %right_border_buf_0_val_1_0 = load i8* %k_buf_0_val_1_addr, align 1
  %k_buf_0_val_2_addr = getelementptr [1280 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_24
  %src_kernel_win_0_val_2_0 = load i8* %k_buf_0_val_2_addr, align 1
  br i1 %brmerge, label %._crit_edge235.i.0, label %._crit_edge236.i.0

._crit_edge246.i.0:                               ; preds = %.preheader.0, %.loopexit225.i.0
  %k_buf_1_val_0_addr = getelementptr [1280 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_24
  %right_border_buf_1_val_2_0 = load i8* %k_buf_1_val_0_addr, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %col_buf_1_val_0_0, align 1
  %k_buf_1_val_1_addr = getelementptr [1280 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_24
  %right_border_buf_1_val_1_0 = load i8* %k_buf_1_val_1_addr, align 1
  %k_buf_1_val_2_addr = getelementptr [1280 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_24
  %src_kernel_win_1_val_2_0 = load i8* %k_buf_1_val_2_addr, align 1
  br i1 %brmerge, label %._crit_edge235.i.1, label %._crit_edge236.i.1

.loopexit225.i.0.pre:                             ; preds = %._crit_edge239.i.0
  store i8 %right_border_buf_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

.loopexit225.i.0.pre254:                          ; preds = %._crit_edge244.i.0.0
  store i8 %src_kernel_win_0_val_1_1_3, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %right_border_buf_0_val_1_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %src_kernel_win_0_val_0_1_3, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

.loopexit225.i.0:                                 ; preds = %._crit_edge236.i.0, %.loopexit225.i.0.pre254, %.loopexit225.i.0.pre, %branch47, %branch46, %branch45, %branch26, %branch24, %4, %._crit_edge242.i.0.1
  br i1 %or_cond222_i, label %.preheader.0, label %._crit_edge246.i.0

._crit_edge242.i.0.1.critedge.critedge:           ; preds = %3
  store i8 %right_border_buf_0_val_1_0, i8* %k_buf_0_val_2_addr, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %k_buf_0_val_1_addr, align 1
  br label %._crit_edge242.i.0.1

._crit_edge242.i.0.1.pre:                         ; preds = %"operator().exit291.i.0886"
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0_3, align 1
  store i8 %right_border_buf_0_val_1_2_4, i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_2_6, i8* %right_border_buf_0_val_1_2_2, align 1
  store i8 %right_border_buf_0_val_1_2_8, i8* %right_border_buf_0_val_1_2_1, align 1
  br label %._crit_edge242.i.0.1

._crit_edge242.i.0.1:                             ; preds = %._crit_edge242.i.0.1.pre, %branch62, %branch61, %._crit_edge242.i.0.1.critedge.critedge
  %tmp_35 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_0_V)
  store i8 %tmp_35, i8* %k_buf_0_val_0_addr, align 1
  store i8 %right_border_buf_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

; <label>:3                                       ; preds = %._crit_edge235.i.0
  %tmp_30 = icmp slt i12 %ImagLoc_x, %tmp_15_cast
  br i1 %tmp_30, label %._crit_edge242.i.0.1.critedge.critedge, label %"operator().exit291.i.0"

._crit_edge235.i.0:                               ; preds = %.preheader227.i.preheader.0.0
  %tmp_28 = icmp ne i11 %p_025_0_i, 0
  %tmp_29 = icmp slt i13 %ImagLoc_x_cast, %cols_cast1
  %or_cond7 = and i1 %tmp_28, %tmp_29
  br i1 %or_cond7, label %3, label %._crit_edge239.i.0

"operator().exit291.i.0886":                      ; preds = %branch50, %branch49, %branch48
  %right_border_buf_0_val_1_2_s = load i8* %right_border_buf_0_val_1_2_1, align 1
  %right_border_buf_0_val_1_2_1_25 = load i8* %right_border_buf_0_val_1_2_2, align 1
  %right_border_buf_0_val_1_2_2_26 = load i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_0, i8* %k_buf_0_val_2_addr, align 1
  %sel_tmp6 = icmp eq i2 %col_assign, 1
  %right_border_buf_0_val_1_2_3 = select i1 %sel_tmp6, i8 %right_border_buf_0_val_1_2_2_26, i8 %right_border_buf_0_val_1_0
  %sel_tmp7 = icmp eq i2 %col_assign, 0
  %right_border_buf_0_val_1_2_4 = select i1 %sel_tmp7, i8 %right_border_buf_0_val_1_2_2_26, i8 %right_border_buf_0_val_1_2_3
  %right_border_buf_0_val_1_2_5 = select i1 %sel_tmp6, i8 %right_border_buf_0_val_1_0, i8 %right_border_buf_0_val_1_2_1_25
  %right_border_buf_0_val_1_2_6 = select i1 %sel_tmp7, i8 %right_border_buf_0_val_1_2_1_25, i8 %right_border_buf_0_val_1_2_5
  %right_border_buf_0_val_1_2_8 = select i1 %sel_tmp7, i8 %right_border_buf_0_val_1_0, i8 %right_border_buf_0_val_1_2_s
  store i8 %right_border_buf_0_val_2_0, i8* %k_buf_0_val_1_addr, align 1
  switch i2 %col_assign, label %branch62 [
    i2 0, label %._crit_edge242.i.0.1.pre
    i2 1, label %branch61
  ]

"operator().exit291.i.0":                         ; preds = %3
  %col_assign = add i2 %tmp_26, %tmp_11
  switch i2 %col_assign, label %branch50 [
    i2 0, label %branch48
    i2 1, label %branch49
  ]

; <label>:4                                       ; preds = %._crit_edge239.i.0
  br i1 %tmp_29, label %.loopexit225.i.0, label %.preheader.preheader.i.0

._crit_edge239.i.0:                               ; preds = %._crit_edge235.i.0
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  br i1 %tmp_31, label %.loopexit225.i.0.pre, label %4

.preheader.preheader.i.0:                         ; preds = %4
  %right_border_buf_0_val_1_2_3_27 = load i8* %right_border_buf_0_val_1_2_1, align 1
  %right_border_buf_0_val_1_2_4_28 = load i8* %right_border_buf_0_val_1_2_2, align 1
  %right_border_buf_0_val_1_2_5_29 = load i8* %right_border_buf_0_val_1_2_7, align 1
  %col_buf_0_val_0_0_3_load = load i8* %col_buf_0_val_0_0_3, align 1
  %col_buf_0_val_0_0_5_load = load i8* %col_buf_0_val_0_0_5, align 1
  %col_buf_0_val_0_0_6_load = load i8* %col_buf_0_val_0_0_6, align 1
  %col_assign_3 = add i2 %tmp_27, %tmp_11
  %sel_tmp = icmp eq i2 %col_assign_3, 1
  %col_buf_0_val_0_0_2 = select i1 %sel_tmp, i8 %col_buf_0_val_0_0_5_load, i8 %col_buf_0_val_0_0_6_load
  %sel_tmp2 = icmp eq i2 %col_assign_3, 0
  %col_buf_0_val_0_0_9 = select i1 %sel_tmp2, i8 %col_buf_0_val_0_0_3_load, i8 %col_buf_0_val_0_0_2
  %right_border_buf_0_val_1_2 = select i1 %sel_tmp, i8 %right_border_buf_0_val_1_2_4_28, i8 %right_border_buf_0_val_1_2_5_29
  %right_border_buf_0_val_1_2_11 = select i1 %sel_tmp2, i8 %right_border_buf_0_val_1_2_3_27, i8 %right_border_buf_0_val_1_2
  switch i2 %col_assign_3, label %branch47 [
    i2 0, label %branch45
    i2 1, label %branch46
  ]

._crit_edge236.i.0:                               ; preds = %.preheader227.i.preheader.0.0
  br i1 %tmp_18, label %.loopexit225.i.0, label %._crit_edge244.i.0.0

._crit_edge244.i.0.0:                             ; preds = %._crit_edge236.i.0
  %t = call fastcc i14 @sobel_borderInterpolate(i12 %ImagLoc_y_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_32 = trunc i14 %t to i2
  %locy = sub i2 %tmp_22, %tmp_32
  %sel_tmp8 = icmp eq i2 %tmp_22, %tmp_32
  %sel_tmp9 = select i1 %sel_tmp8, i8 %right_border_buf_0_val_2_0, i8 %src_kernel_win_0_val_2_0
  %sel_tmp1 = icmp eq i2 %locy, 1
  %src_kernel_win_0_val_0_1_3 = select i1 %sel_tmp1, i8 %right_border_buf_0_val_1_0, i8 %sel_tmp9
  %t_0_1 = call fastcc i14 @sobel_borderInterpolate(i12 %y_1_2_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_33 = trunc i14 %t_0_1 to i2
  %locy_0_1_t = sub i2 %tmp_23, %tmp_33
  %sel_tmp3 = icmp eq i2 %tmp_23, %tmp_33
  %sel_tmp4 = select i1 %sel_tmp3, i8 %right_border_buf_0_val_2_0, i8 %src_kernel_win_0_val_2_0
  %sel_tmp5 = icmp eq i2 %locy_0_1_t, 1
  %src_kernel_win_0_val_1_1_3 = select i1 %sel_tmp5, i8 %right_border_buf_0_val_1_0, i8 %sel_tmp4
  %t_0_2 = call fastcc i14 @sobel_borderInterpolate(i12 %y_1_2_1_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_34 = trunc i14 %t_0_2 to i2
  %locy_0_2_t = sub i2 %tmp_23, %tmp_34
  switch i2 %locy_0_2_t, label %branch26 [
    i2 0, label %branch24
    i2 1, label %.loopexit225.i.0.pre254
  ]

.preheader.0:                                     ; preds = %.loopexit225.i.0
  %src_kernel_win_0_val_0_1_lo = load i8* %src_kernel_win_0_val_0_1, align 1
  %src_kernel_win_0_val_0_2_lo = load i8* %src_kernel_win_0_val_0_2, align 1
  %src_kernel_win_0_val_2_1_lo = load i8* %src_kernel_win_0_val_2_1, align 1
  %src_kernel_win_0_val_1_1_lo = load i8* %src_kernel_win_0_val_1_1, align 1
  %src_kernel_win_0_val_1_2_lo = load i8* %src_kernel_win_0_val_1_2, align 1
  %src_kernel_win_0_val_2_2_lo = load i8* %src_kernel_win_0_val_2_2, align 1
  %OP1_V_0_0_cast = zext i8 %src_kernel_win_0_val_2_2_lo to i9
  %tmp_136_0_0_2_cast = zext i8 %src_kernel_win_0_val_2_1_lo to i9
  %p_Val2_3_0_0_2 = sub i9 %tmp_136_0_0_2_cast, %OP1_V_0_0_cast
  %p_Val2_3_0_0_2_cast_cast = sext i9 %p_Val2_3_0_0_2 to i10
  %p_shl = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_0_val_1_2_lo, i1 false)
  %p_shl_cast = zext i9 %p_shl to i10
  %p_Val2_0_1 = sub i10 0, %p_shl_cast
  %tmp_136_0_1_cast = sext i10 %p_Val2_0_1 to i11
  %p_Val2_0_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_0_val_1_1_lo, i1 false)
  %tmp_136_0_1_cast_30 = zext i9 %p_Val2_0_1_2 to i11
  %OP1_V_0_2_cast = zext i8 %src_kernel_win_0_val_0_2_lo to i9
  %p_Val2_0_2 = sub i9 0, %OP1_V_0_2_cast
  %tmp_136_0_2_cast = sext i9 %p_Val2_0_2 to i11
  %tmp_136_0_2_2_cast_cast = zext i8 %src_kernel_win_0_val_0_1_lo to i10
  %tmp13 = add i11 %tmp_136_0_1_cast, %tmp_136_0_2_cast
  %tmp14 = add i10 %p_Val2_3_0_0_2_cast_cast, %tmp_136_0_2_2_cast_cast
  %tmp88_cast = sext i10 %tmp14 to i11
  %tmp15 = add i11 %tmp88_cast, %tmp_136_0_1_cast_30
  %p_Val2_1 = add i11 %tmp15, %tmp13
  %isneg = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_Val2_1, i32 10)
  %p_Val2_2 = trunc i11 %p_Val2_1 to i8
  %tmp_36 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %p_Val2_1, i32 8, i32 10)
  %tmp_i_i = xor i1 %isneg, true
  %not_i_i_i = icmp ne i3 %tmp_36, 0
  %overflow = and i1 %not_i_i_i, %tmp_i_i
  %p_mux_i_i_cast = select i1 %tmp_i_i, i8 -1, i8 0
  %tmp_i_i_31 = or i1 %isneg, %overflow
  %p_Val2_9 = select i1 %tmp_i_i_31, i8 %p_mux_i_i_cast, i8 %p_Val2_2
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %p_Val2_9)
  br label %._crit_edge246.i.0

._crit_edge246.i.1:                               ; preds = %.preheader.1, %.loopexit225.i.1
  %k_buf_2_val_0_addr = getelementptr [1280 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_24
  %right_border_buf_2_val_2_0 = load i8* %k_buf_2_val_0_addr, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %col_buf_2_val_0_0, align 1
  %k_buf_2_val_1_addr = getelementptr [1280 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_24
  %right_border_buf_2_val_1_0 = load i8* %k_buf_2_val_1_addr, align 1
  %k_buf_2_val_2_addr = getelementptr [1280 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_24
  %src_kernel_win_2_val_2_0 = load i8* %k_buf_2_val_2_addr, align 1
  br i1 %brmerge, label %._crit_edge235.i.2, label %._crit_edge236.i.2

.loopexit225.i.1.pre:                             ; preds = %._crit_edge239.i.1
  store i8 %right_border_buf_1_val_1_0, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %src_kernel_win_1_val_2_0, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

.loopexit225.i.1.pre249:                          ; preds = %._crit_edge244.i.1.0_ifconv
  store i8 %src_kernel_win_1_val_1_1_3, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %right_border_buf_1_val_1_0, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %src_kernel_win_1_val_0_1_3, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

.loopexit225.i.1:                                 ; preds = %._crit_edge236.i.1, %.loopexit225.i.1.pre249, %.loopexit225.i.1.pre, %branch65, %branch64, %branch63, %branch35, %branch33, %6, %"operator().exit.i.1"
  br i1 %or_cond222_i, label %.preheader.1, label %._crit_edge246.i.1

"operator().exit.i.1.critedge.critedge":          ; preds = %5
  store i8 %right_border_buf_1_val_1_0, i8* %k_buf_1_val_2_addr, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %k_buf_1_val_1_addr, align 1
  br label %"operator().exit.i.1"

"operator().exit.i.1.pre":                        ; preds = %"operator().exit291.i.1923"
  store i8 %right_border_buf_1_val_1_2_4, i8* %right_border_buf_1_val_1_2_7, align 1
  store i8 %right_border_buf_1_val_1_2_6, i8* %right_border_buf_1_val_1_2_2, align 1
  store i8 %right_border_buf_1_val_1_2_8, i8* %right_border_buf_1_val_1_2_1, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %col_buf_1_val_0_0_6, align 1
  br label %"operator().exit.i.1"

"operator().exit.i.1":                            ; preds = %"operator().exit.i.1.pre", %branch80, %branch79, %"operator().exit.i.1.critedge.critedge"
  %tmp_44 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_1_V)
  store i8 %tmp_44, i8* %k_buf_1_val_0_addr, align 1
  store i8 %right_border_buf_1_val_1_0, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %src_kernel_win_1_val_2_0, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

; <label>:5                                       ; preds = %._crit_edge235.i.1
  %tmp_85_1 = icmp slt i12 %ImagLoc_x, %tmp_15_cast
  br i1 %tmp_85_1, label %"operator().exit.i.1.critedge.critedge", label %"operator().exit291.i.1"

._crit_edge235.i.1:                               ; preds = %._crit_edge246.i.0
  %tmp_81_1 = icmp ne i11 %p_025_0_i, 0
  %tmp_83_1 = icmp slt i13 %ImagLoc_x_cast, %cols_cast1
  %or_cond7_1 = and i1 %tmp_81_1, %tmp_83_1
  br i1 %or_cond7_1, label %5, label %._crit_edge239.i.1

"operator().exit291.i.1":                         ; preds = %5
  %col_assign_1 = add i12 %ImagLoc_x, %p_neg229_i
  %tmp_43 = trunc i12 %col_assign_1 to i2
  switch i2 %tmp_43, label %branch68 [
    i2 0, label %branch66
    i2 1, label %branch67
  ]

"operator().exit291.i.1923":                      ; preds = %branch68, %branch67, %branch66
  %right_border_buf_1_val_1_2_s = load i8* %right_border_buf_1_val_1_2_1, align 1
  %right_border_buf_1_val_1_2_1_32 = load i8* %right_border_buf_1_val_1_2_2, align 1
  %right_border_buf_1_val_1_2_2_33 = load i8* %right_border_buf_1_val_1_2_7, align 1
  store i8 %right_border_buf_1_val_1_0, i8* %k_buf_1_val_2_addr, align 1
  %sel_tmp18 = icmp eq i2 %tmp_43, 1
  %right_border_buf_1_val_1_2_3 = select i1 %sel_tmp18, i8 %right_border_buf_1_val_1_2_2_33, i8 %right_border_buf_1_val_1_0
  %sel_tmp19 = icmp eq i2 %tmp_43, 0
  %right_border_buf_1_val_1_2_4 = select i1 %sel_tmp19, i8 %right_border_buf_1_val_1_2_2_33, i8 %right_border_buf_1_val_1_2_3
  %right_border_buf_1_val_1_2_5 = select i1 %sel_tmp18, i8 %right_border_buf_1_val_1_0, i8 %right_border_buf_1_val_1_2_1_32
  %right_border_buf_1_val_1_2_6 = select i1 %sel_tmp19, i8 %right_border_buf_1_val_1_2_1_32, i8 %right_border_buf_1_val_1_2_5
  %right_border_buf_1_val_1_2_8 = select i1 %sel_tmp19, i8 %right_border_buf_1_val_1_0, i8 %right_border_buf_1_val_1_2_s
  store i8 %right_border_buf_1_val_2_0, i8* %k_buf_1_val_1_addr, align 1
  switch i2 %tmp_43, label %branch80 [
    i2 0, label %"operator().exit.i.1.pre"
    i2 1, label %branch79
  ]

; <label>:6                                       ; preds = %._crit_edge239.i.1
  br i1 %tmp_83_1, label %.loopexit225.i.1, label %.preheader.preheader.i.1_ifconv

._crit_edge239.i.1:                               ; preds = %._crit_edge235.i.1
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  br i1 %tmp_39, label %.loopexit225.i.1.pre, label %6

.preheader.preheader.i.1_ifconv:                  ; preds = %6
  %col_buf_1_val_0_0_3_load = load i8* %col_buf_1_val_0_0_3, align 1
  %col_buf_1_val_0_0_5_load = load i8* %col_buf_1_val_0_0_5, align 1
  %col_buf_1_val_0_0_6_load = load i8* %col_buf_1_val_0_0_6, align 1
  %right_border_buf_1_val_1_2_3_34 = load i8* %right_border_buf_1_val_1_2_1, align 1
  %right_border_buf_1_val_1_2_4_35 = load i8* %right_border_buf_1_val_1_2_2, align 1
  %right_border_buf_1_val_1_2_5_36 = load i8* %right_border_buf_1_val_1_2_7, align 1
  %col_assign_3_1_t1 = add i2 %tmp_27, %tmp_11
  %sel_tmp16 = icmp eq i2 %col_assign_3_1_t1, 1
  %col_buf_1_val_0_0_2 = select i1 %sel_tmp16, i8 %col_buf_1_val_0_0_5_load, i8 %col_buf_1_val_0_0_3_load
  %sel_tmp17 = icmp eq i2 %col_assign_3_1_t1, 0
  %col_buf_1_val_0_0_9 = select i1 %sel_tmp17, i8 %col_buf_1_val_0_0_6_load, i8 %col_buf_1_val_0_0_2
  %right_border_buf_1_val_1_2 = select i1 %sel_tmp16, i8 %right_border_buf_1_val_1_2_4_35, i8 %right_border_buf_1_val_1_2_5_36
  %right_border_buf_1_val_1_2_11 = select i1 %sel_tmp17, i8 %right_border_buf_1_val_1_2_3_34, i8 %right_border_buf_1_val_1_2
  switch i2 %col_assign_3_1_t1, label %branch65 [
    i2 0, label %branch63
    i2 1, label %branch64
  ]

._crit_edge236.i.1:                               ; preds = %._crit_edge246.i.0
  br i1 %tmp_18, label %.loopexit225.i.1, label %._crit_edge244.i.1.0_ifconv

._crit_edge244.i.1.0_ifconv:                      ; preds = %._crit_edge236.i.1
  %t_1 = call fastcc i14 @sobel_borderInterpolate(i12 %ImagLoc_y_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_40 = trunc i14 %t_1 to i2
  %locy_1_0_t = sub i2 %tmp_21, %tmp_40
  %sel_tmp10 = icmp eq i2 %tmp_21, %tmp_40
  %sel_tmp11 = select i1 %sel_tmp10, i8 %right_border_buf_1_val_2_0, i8 %src_kernel_win_1_val_2_0
  %sel_tmp12 = icmp eq i2 %locy_1_0_t, 1
  %src_kernel_win_1_val_0_1_3 = select i1 %sel_tmp12, i8 %right_border_buf_1_val_1_0, i8 %sel_tmp11
  %t_1_1 = call fastcc i14 @sobel_borderInterpolate(i12 %y_1_2_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_41 = trunc i14 %t_1_1 to i2
  %locy_1_1_t = sub i2 %tmp_21, %tmp_41
  %sel_tmp13 = icmp eq i2 %tmp_21, %tmp_41
  %sel_tmp14 = select i1 %sel_tmp13, i8 %right_border_buf_1_val_2_0, i8 %src_kernel_win_1_val_2_0
  %sel_tmp15 = icmp eq i2 %locy_1_1_t, 1
  %src_kernel_win_1_val_1_1_3 = select i1 %sel_tmp15, i8 %right_border_buf_1_val_1_0, i8 %sel_tmp14
  %t_1_2 = call fastcc i14 @sobel_borderInterpolate(i12 %y_1_2_1_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_42 = trunc i14 %t_1_2 to i2
  %locy_1_2_t = sub i2 %tmp_21, %tmp_42
  switch i2 %locy_1_2_t, label %branch35 [
    i2 0, label %branch33
    i2 1, label %.loopexit225.i.1.pre249
  ]

.preheader.1:                                     ; preds = %.loopexit225.i.1
  %src_kernel_win_1_val_0_1_lo = load i8* %src_kernel_win_1_val_0_1, align 1
  %src_kernel_win_1_val_0_2_lo = load i8* %src_kernel_win_1_val_0_2, align 1
  %src_kernel_win_1_val_2_1_lo = load i8* %src_kernel_win_1_val_2_1, align 1
  %src_kernel_win_1_val_1_1_lo = load i8* %src_kernel_win_1_val_1_1, align 1
  %src_kernel_win_1_val_1_2_lo = load i8* %src_kernel_win_1_val_1_2, align 1
  %src_kernel_win_1_val_2_2_lo = load i8* %src_kernel_win_1_val_2_2, align 1
  %OP1_V_1_0_cast = zext i8 %src_kernel_win_1_val_2_2_lo to i9
  %tmp_136_1_0_2_cast = zext i8 %src_kernel_win_1_val_2_1_lo to i9
  %p_Val2_3_1_0_2 = sub i9 %tmp_136_1_0_2_cast, %OP1_V_1_0_cast
  %p_Val2_3_1_0_2_cast_cast = sext i9 %p_Val2_3_1_0_2 to i10
  %p_shl1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_1_val_1_2_lo, i1 false)
  %p_shl1_cast = zext i9 %p_shl1 to i10
  %p_Val2_112_1 = sub i10 0, %p_shl1_cast
  %tmp_136_1_1_cast = sext i10 %p_Val2_112_1 to i11
  %p_Val2_112_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_1_val_1_1_lo, i1 false)
  %tmp_136_1_1_cast_37 = zext i9 %p_Val2_112_1_2 to i11
  %OP1_V_1_2_cast = zext i8 %src_kernel_win_1_val_0_2_lo to i9
  %p_Val2_112_2 = sub i9 0, %OP1_V_1_2_cast
  %tmp_136_1_2_cast = sext i9 %p_Val2_112_2 to i11
  %tmp_136_1_2_2_cast_cast = zext i8 %src_kernel_win_1_val_0_1_lo to i10
  %tmp43 = add i11 %tmp_136_1_1_cast, %tmp_136_1_2_cast
  %tmp44 = add i10 %p_Val2_3_1_0_2_cast_cast, %tmp_136_1_2_2_cast_cast
  %tmp93_cast = sext i10 %tmp44 to i11
  %tmp45 = add i11 %tmp93_cast, %tmp_136_1_1_cast_37
  %p_Val2_4 = add i11 %tmp45, %tmp43
  %isneg_1 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_Val2_4, i32 10)
  %p_Val2_5 = trunc i11 %p_Val2_4 to i8
  %tmp_37 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %p_Val2_4, i32 8, i32 10)
  %tmp_i_i1 = xor i1 %isneg_1, true
  %not_i_i_i1 = icmp ne i3 %tmp_37, 0
  %overflow_1 = and i1 %not_i_i_i1, %tmp_i_i1
  %p_mux_i_i39_cast = select i1 %tmp_i_i1, i8 -1, i8 0
  %tmp_i_i1_38 = or i1 %isneg_1, %overflow_1
  %p_Val2_10 = select i1 %tmp_i_i1_38, i8 %p_mux_i_i39_cast, i8 %p_Val2_5
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %p_Val2_10)
  br label %._crit_edge246.i.1

._crit_edge246.i.2:                               ; preds = %.preheader.2, %.loopexit225.i.2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_20)
  store i8 %src_kernel_win_2_val_2_1_9, i8* %src_kernel_win_2_val_2_2, align 1
  store i8 %src_kernel_win_2_val_1_1_6, i8* %src_kernel_win_2_val_1_2, align 1
  store i8 %src_kernel_win_2_val_0_1_6, i8* %src_kernel_win_2_val_0_2, align 1
  store i8 %src_kernel_win_1_val_2_1_9, i8* %src_kernel_win_1_val_2_2, align 1
  store i8 %src_kernel_win_1_val_1_1_6, i8* %src_kernel_win_1_val_1_2, align 1
  store i8 %src_kernel_win_1_val_0_1_6, i8* %src_kernel_win_1_val_0_2, align 1
  store i8 %src_kernel_win_0_val_2_1_9, i8* %src_kernel_win_0_val_2_2, align 1
  store i8 %src_kernel_win_0_val_1_1_6, i8* %src_kernel_win_0_val_1_2, align 1
  store i8 %src_kernel_win_0_val_0_1_6, i8* %src_kernel_win_0_val_0_2, align 1
  br label %2

.loopexit225.i.2.pre:                             ; preds = %._crit_edge239.i.2
  store i8 %right_border_buf_2_val_1_0, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %src_kernel_win_2_val_2_0, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

.loopexit225.i.2.pre243:                          ; preds = %._crit_edge244.i.2.0_ifconv
  store i8 %src_kernel_win_2_val_1_1_3, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %right_border_buf_2_val_1_0, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %src_kernel_win_2_val_0_1_3, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

.loopexit225.i.2:                                 ; preds = %._crit_edge236.i.2, %.loopexit225.i.2.pre243, %.loopexit225.i.2.pre, %branch83, %branch82, %branch81, %branch44, %branch42, %8, %"operator().exit.i.2"
  br i1 %or_cond222_i, label %.preheader.2, label %._crit_edge246.i.2

"operator().exit.i.2.critedge.critedge":          ; preds = %7
  store i8 %right_border_buf_2_val_1_0, i8* %k_buf_2_val_2_addr, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %k_buf_2_val_1_addr, align 1
  br label %"operator().exit.i.2"

"operator().exit.i.2.pre":                        ; preds = %"operator().exit291.i.2960"
  store i8 %right_border_buf_2_val_1_2_4, i8* %right_border_buf_2_val_1_2_3, align 1
  store i8 %right_border_buf_2_val_1_2_6, i8* %right_border_buf_2_val_1_2_2, align 1
  store i8 %right_border_buf_2_val_1_2_8, i8* %right_border_buf_2_val_1_2_1, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %col_buf_2_val_0_0_6, align 1
  br label %"operator().exit.i.2"

"operator().exit.i.2":                            ; preds = %"operator().exit.i.2.pre", %branch98, %branch97, %"operator().exit.i.2.critedge.critedge"
  %tmp_56 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_2_V)
  store i8 %tmp_56, i8* %k_buf_2_val_0_addr, align 1
  store i8 %right_border_buf_2_val_1_0, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %src_kernel_win_2_val_2_0, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

; <label>:7                                       ; preds = %._crit_edge235.i.2
  %tmp_85_2 = icmp slt i12 %ImagLoc_x, %tmp_15_cast
  br i1 %tmp_85_2, label %"operator().exit.i.2.critedge.critedge", label %"operator().exit291.i.2"

._crit_edge235.i.2:                               ; preds = %._crit_edge246.i.1
  %tmp_81_2 = icmp ne i11 %p_025_0_i, 0
  %tmp_83_2 = icmp slt i13 %ImagLoc_x_cast, %cols_cast1
  %or_cond7_2 = and i1 %tmp_81_2, %tmp_83_2
  br i1 %or_cond7_2, label %7, label %._crit_edge239.i.2

"operator().exit291.i.2":                         ; preds = %7
  %col_assign_s = add i12 %ImagLoc_x, %p_neg229_i
  %tmp_55 = trunc i12 %col_assign_s to i2
  switch i2 %tmp_55, label %branch86 [
    i2 0, label %branch84
    i2 1, label %branch85
  ]

"operator().exit291.i.2960":                      ; preds = %branch86, %branch85, %branch84
  %right_border_buf_2_val_1_2_s = load i8* %right_border_buf_2_val_1_2_1, align 1
  %right_border_buf_2_val_1_2_1_39 = load i8* %right_border_buf_2_val_1_2_2, align 1
  %right_border_buf_2_val_1_2_2_40 = load i8* %right_border_buf_2_val_1_2_3, align 1
  store i8 %right_border_buf_2_val_1_0, i8* %k_buf_2_val_2_addr, align 1
  %sel_tmp28 = icmp eq i2 %tmp_55, 0
  %right_border_buf_2_val_1_2_4 = select i1 %sel_tmp28, i8 %right_border_buf_2_val_1_0, i8 %right_border_buf_2_val_1_2_2_40
  %sel_tmp29 = icmp eq i2 %tmp_55, 1
  %right_border_buf_2_val_1_2_5 = select i1 %sel_tmp29, i8 %right_border_buf_2_val_1_0, i8 %right_border_buf_2_val_1_2_1_39
  %right_border_buf_2_val_1_2_6 = select i1 %sel_tmp28, i8 %right_border_buf_2_val_1_2_1_39, i8 %right_border_buf_2_val_1_2_5
  %right_border_buf_2_val_1_2_7 = select i1 %sel_tmp29, i8 %right_border_buf_2_val_1_2_s, i8 %right_border_buf_2_val_1_0
  %right_border_buf_2_val_1_2_8 = select i1 %sel_tmp28, i8 %right_border_buf_2_val_1_2_s, i8 %right_border_buf_2_val_1_2_7
  store i8 %right_border_buf_2_val_2_0, i8* %k_buf_2_val_1_addr, align 1
  switch i2 %tmp_55, label %branch98 [
    i2 0, label %"operator().exit.i.2.pre"
    i2 1, label %branch97
  ]

; <label>:8                                       ; preds = %._crit_edge239.i.2
  br i1 %tmp_83_2, label %.loopexit225.i.2, label %.preheader.preheader.i.2_ifconv

._crit_edge239.i.2:                               ; preds = %._crit_edge235.i.2
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  br i1 %tmp_50, label %.loopexit225.i.2.pre, label %8

.preheader.preheader.i.2_ifconv:                  ; preds = %8
  %col_buf_2_val_0_0_3_load = load i8* %col_buf_2_val_0_0_3, align 1
  %col_buf_2_val_0_0_5_load = load i8* %col_buf_2_val_0_0_5, align 1
  %col_buf_2_val_0_0_6_load = load i8* %col_buf_2_val_0_0_6, align 1
  %right_border_buf_2_val_1_2_3_41 = load i8* %right_border_buf_2_val_1_2_1, align 1
  %right_border_buf_2_val_1_2_4_42 = load i8* %right_border_buf_2_val_1_2_2, align 1
  %right_border_buf_2_val_1_2_5_43 = load i8* %right_border_buf_2_val_1_2_3, align 1
  %col_assign_3_2_t1 = add i2 %tmp_27, %tmp_11
  %sel_tmp26 = icmp eq i2 %col_assign_3_2_t1, 1
  %col_buf_2_val_0_0_2 = select i1 %sel_tmp26, i8 %col_buf_2_val_0_0_5_load, i8 %col_buf_2_val_0_0_3_load
  %sel_tmp27 = icmp eq i2 %col_assign_3_2_t1, 0
  %col_buf_2_val_0_0_9 = select i1 %sel_tmp27, i8 %col_buf_2_val_0_0_6_load, i8 %col_buf_2_val_0_0_2
  %right_border_buf_2_val_1_2 = select i1 %sel_tmp26, i8 %right_border_buf_2_val_1_2_4_42, i8 %right_border_buf_2_val_1_2_3_41
  %right_border_buf_2_val_1_2_11 = select i1 %sel_tmp27, i8 %right_border_buf_2_val_1_2_5_43, i8 %right_border_buf_2_val_1_2
  switch i2 %col_assign_3_2_t1, label %branch83 [
    i2 0, label %branch81
    i2 1, label %branch82
  ]

._crit_edge236.i.2:                               ; preds = %._crit_edge246.i.1
  br i1 %tmp_18, label %.loopexit225.i.2, label %._crit_edge244.i.2.0_ifconv

._crit_edge244.i.2.0_ifconv:                      ; preds = %._crit_edge236.i.2
  %t_2 = call fastcc i14 @sobel_borderInterpolate(i12 %ImagLoc_y_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_52 = trunc i14 %t_2 to i2
  %locy_2_0_t = sub i2 %tmp_21, %tmp_52
  %sel_tmp20 = icmp eq i2 %tmp_21, %tmp_52
  %sel_tmp21 = select i1 %sel_tmp20, i8 %right_border_buf_2_val_2_0, i8 %src_kernel_win_2_val_2_0
  %sel_tmp22 = icmp eq i2 %locy_2_0_t, 1
  %src_kernel_win_2_val_0_1_3 = select i1 %sel_tmp22, i8 %right_border_buf_2_val_1_0, i8 %sel_tmp21
  %t_2_1 = call fastcc i14 @sobel_borderInterpolate(i12 %y_1_2_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_53 = trunc i14 %t_2_1 to i2
  %locy_2_1_t = sub i2 %tmp_21, %tmp_53
  %sel_tmp23 = icmp eq i2 %tmp_21, %tmp_53
  %sel_tmp24 = select i1 %sel_tmp23, i8 %right_border_buf_2_val_2_0, i8 %src_kernel_win_2_val_2_0
  %sel_tmp25 = icmp eq i2 %locy_2_1_t, 1
  %src_kernel_win_2_val_1_1_3 = select i1 %sel_tmp25, i8 %right_border_buf_2_val_1_0, i8 %sel_tmp24
  %t_2_2 = call fastcc i14 @sobel_borderInterpolate(i12 %y_1_2_1_cast_cast, i12 %p_src_rows_V_read_1) nounwind
  %tmp_54 = trunc i14 %t_2_2 to i2
  %locy_2_2_t = sub i2 %tmp_21, %tmp_54
  switch i2 %locy_2_2_t, label %branch44 [
    i2 0, label %branch42
    i2 1, label %.loopexit225.i.2.pre243
  ]

.preheader.2:                                     ; preds = %.loopexit225.i.2
  %src_kernel_win_2_val_0_1_lo = load i8* %src_kernel_win_2_val_0_1, align 1
  %src_kernel_win_2_val_0_2_lo = load i8* %src_kernel_win_2_val_0_2, align 1
  %src_kernel_win_2_val_2_1_lo = load i8* %src_kernel_win_2_val_2_1, align 1
  %src_kernel_win_2_val_1_1_lo = load i8* %src_kernel_win_2_val_1_1, align 1
  %src_kernel_win_2_val_1_2_lo = load i8* %src_kernel_win_2_val_1_2, align 1
  %src_kernel_win_2_val_2_2_lo = load i8* %src_kernel_win_2_val_2_2, align 1
  %OP1_V_2_0_cast = zext i8 %src_kernel_win_2_val_2_2_lo to i9
  %tmp_136_2_0_2_cast = zext i8 %src_kernel_win_2_val_2_1_lo to i9
  %p_Val2_3_2_0_2 = sub i9 %tmp_136_2_0_2_cast, %OP1_V_2_0_cast
  %p_Val2_3_2_0_2_cast_cast = sext i9 %p_Val2_3_2_0_2 to i10
  %p_shl2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_2_val_1_2_lo, i1 false)
  %p_shl2_cast = zext i9 %p_shl2 to i10
  %p_Val2_2_1 = sub i10 0, %p_shl2_cast
  %tmp_136_2_1_cast = sext i10 %p_Val2_2_1 to i11
  %p_Val2_2_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_2_val_1_1_lo, i1 false)
  %tmp_136_2_1_cast_44 = zext i9 %p_Val2_2_1_2 to i11
  %OP1_V_2_2_cast = zext i8 %src_kernel_win_2_val_0_2_lo to i9
  %p_Val2_2_2 = sub i9 0, %OP1_V_2_2_cast
  %tmp_136_2_2_cast = sext i9 %p_Val2_2_2 to i11
  %tmp_136_2_2_2_cast_cast = zext i8 %src_kernel_win_2_val_0_1_lo to i10
  %tmp48 = add i11 %tmp_136_2_1_cast, %tmp_136_2_2_cast
  %tmp49 = add i10 %p_Val2_3_2_0_2_cast_cast, %tmp_136_2_2_2_cast_cast
  %tmp98_cast = sext i10 %tmp49 to i11
  %tmp50 = add i11 %tmp98_cast, %tmp_136_2_1_cast_44
  %p_Val2_s = add i11 %tmp50, %tmp48
  %isneg_2 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_Val2_s, i32 10)
  %p_Val2_7 = trunc i11 %p_Val2_s to i8
  %tmp_45 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %p_Val2_s, i32 8, i32 10)
  %tmp_i_i2 = xor i1 %isneg_2, true
  %not_i_i_i2 = icmp ne i3 %tmp_45, 0
  %overflow_2 = and i1 %not_i_i_i2, %tmp_i_i2
  %p_mux_i_i48_cast = select i1 %tmp_i_i2, i8 -1, i8 0
  %tmp_i_i2_45 = or i1 %isneg_2, %overflow_2
  %p_Val2_11 = select i1 %tmp_i_i2_45, i8 %p_mux_i_i48_cast, i8 %p_Val2_7
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_2_V, i8 %p_Val2_11)
  br label %._crit_edge246.i.2

; <label>:9                                       ; preds = %2
  %empty_46 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_14)
  br label %0

"filter<32, 32, ap_int<8>, int, 720, 1280, 3, 3>.exit": ; preds = %0
  ret void

branch0:                                          ; preds = %arrayctor.loop1.i
  br label %arrayctor.loop1.i214

branch1:                                          ; preds = %arrayctor.loop1.i
  br label %arrayctor.loop1.i214

branch2:                                          ; preds = %arrayctor.loop1.i
  br label %arrayctor.loop1.i214

branch3:                                          ; preds = %arrayctor.loop1.i214
  br label %arrayctor.loop1.i214215

branch4:                                          ; preds = %arrayctor.loop1.i214
  br label %arrayctor.loop1.i214215

branch5:                                          ; preds = %arrayctor.loop1.i214
  br label %arrayctor.loop1.i214215

branch6:                                          ; preds = %arrayctor.loop2.i
  br label %arrayctor.loop2.i291

branch7:                                          ; preds = %arrayctor.loop2.i
  br label %arrayctor.loop2.i291

branch8:                                          ; preds = %arrayctor.loop2.i
  br label %arrayctor.loop2.i291

branch9:                                          ; preds = %arrayctor.loop2.i291
  br label %arrayctor.loop2.i291292

branch10:                                         ; preds = %arrayctor.loop2.i291
  br label %arrayctor.loop2.i291292

branch11:                                         ; preds = %arrayctor.loop2.i291
  br label %arrayctor.loop2.i291292

branch12:                                         ; preds = %arrayctor.loop3.i
  br label %arrayctor.loop3.i368

branch13:                                         ; preds = %arrayctor.loop3.i
  br label %arrayctor.loop3.i368

branch14:                                         ; preds = %arrayctor.loop3.i
  br label %arrayctor.loop3.i368

branch15:                                         ; preds = %arrayctor.loop3.i368
  br label %arrayctor.loop3.i368369

branch16:                                         ; preds = %arrayctor.loop3.i368
  br label %arrayctor.loop3.i368369

branch17:                                         ; preds = %arrayctor.loop3.i368
  br label %arrayctor.loop3.i368369

branch24:                                         ; preds = %._crit_edge244.i.0.0
  store i8 %src_kernel_win_0_val_1_1_3, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %src_kernel_win_0_val_0_1_3, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

branch26:                                         ; preds = %._crit_edge244.i.0.0
  store i8 %src_kernel_win_0_val_1_1_3, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %src_kernel_win_0_val_0_1_3, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

branch33:                                         ; preds = %._crit_edge244.i.1.0_ifconv
  store i8 %src_kernel_win_1_val_1_1_3, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %src_kernel_win_1_val_0_1_3, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

branch35:                                         ; preds = %._crit_edge244.i.1.0_ifconv
  store i8 %src_kernel_win_1_val_1_1_3, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %src_kernel_win_1_val_2_0, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %src_kernel_win_1_val_0_1_3, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

branch42:                                         ; preds = %._crit_edge244.i.2.0_ifconv
  store i8 %src_kernel_win_2_val_1_1_3, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %src_kernel_win_2_val_0_1_3, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

branch44:                                         ; preds = %._crit_edge244.i.2.0_ifconv
  store i8 %src_kernel_win_2_val_1_1_3, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %src_kernel_win_2_val_2_0, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %src_kernel_win_2_val_0_1_3, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

branch45:                                         ; preds = %.preheader.preheader.i.0
  %src_kernel_win_0_val_2_1_6 = load i8* %right_border_buf_0_val_0_0, align 1
  store i8 %right_border_buf_0_val_1_2_11, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_1_6, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %col_buf_0_val_0_0_9, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

branch46:                                         ; preds = %.preheader.preheader.i.0
  %src_kernel_win_0_val_2_1_7 = load i8* %right_border_buf_0_val_0_1, align 1
  store i8 %right_border_buf_0_val_1_2_11, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_1_7, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %col_buf_0_val_0_0_9, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

branch47:                                         ; preds = %.preheader.preheader.i.0
  %src_kernel_win_0_val_2_1_5 = load i8* %right_border_buf_0_val_0_2, align 1
  store i8 %right_border_buf_0_val_1_2_11, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_1_5, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %col_buf_0_val_0_0_9, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit225.i.0

branch48:                                         ; preds = %"operator().exit291.i.0"
  store i8 %src_kernel_win_0_val_2_0, i8* %right_border_buf_0_val_0_0, align 1
  br label %"operator().exit291.i.0886"

branch49:                                         ; preds = %"operator().exit291.i.0"
  store i8 %src_kernel_win_0_val_2_0, i8* %right_border_buf_0_val_0_1, align 1
  br label %"operator().exit291.i.0886"

branch50:                                         ; preds = %"operator().exit291.i.0"
  store i8 %src_kernel_win_0_val_2_0, i8* %right_border_buf_0_val_0_2, align 1
  br label %"operator().exit291.i.0886"

branch61:                                         ; preds = %"operator().exit291.i.0886"
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0_5, align 1
  store i8 %right_border_buf_0_val_1_2_4, i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_2_6, i8* %right_border_buf_0_val_1_2_2, align 1
  store i8 %right_border_buf_0_val_1_2_8, i8* %right_border_buf_0_val_1_2_1, align 1
  br label %._crit_edge242.i.0.1

branch62:                                         ; preds = %"operator().exit291.i.0886"
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0_6, align 1
  store i8 %right_border_buf_0_val_1_2_4, i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_2_6, i8* %right_border_buf_0_val_1_2_2, align 1
  store i8 %right_border_buf_0_val_1_2_8, i8* %right_border_buf_0_val_1_2_1, align 1
  br label %._crit_edge242.i.0.1

branch63:                                         ; preds = %.preheader.preheader.i.1_ifconv
  %src_kernel_win_1_val_2_1_6 = load i8* %right_border_buf_1_val_0_0, align 1
  store i8 %right_border_buf_1_val_1_2_11, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %src_kernel_win_1_val_2_1_6, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %col_buf_1_val_0_0_9, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

branch64:                                         ; preds = %.preheader.preheader.i.1_ifconv
  %src_kernel_win_1_val_2_1_7 = load i8* %right_border_buf_1_val_0_1, align 1
  store i8 %right_border_buf_1_val_1_2_11, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %src_kernel_win_1_val_2_1_7, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %col_buf_1_val_0_0_9, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

branch65:                                         ; preds = %.preheader.preheader.i.1_ifconv
  %src_kernel_win_1_val_2_1_5 = load i8* %right_border_buf_1_val_0_2, align 1
  store i8 %right_border_buf_1_val_1_2_11, i8* %src_kernel_win_1_val_1_1, align 1
  store i8 %src_kernel_win_1_val_2_1_5, i8* %src_kernel_win_1_val_2_1, align 1
  store i8 %col_buf_1_val_0_0_9, i8* %src_kernel_win_1_val_0_1, align 1
  br label %.loopexit225.i.1

branch66:                                         ; preds = %"operator().exit291.i.1"
  store i8 %src_kernel_win_1_val_2_0, i8* %right_border_buf_1_val_0_0, align 1
  br label %"operator().exit291.i.1923"

branch67:                                         ; preds = %"operator().exit291.i.1"
  store i8 %src_kernel_win_1_val_2_0, i8* %right_border_buf_1_val_0_1, align 1
  br label %"operator().exit291.i.1923"

branch68:                                         ; preds = %"operator().exit291.i.1"
  store i8 %src_kernel_win_1_val_2_0, i8* %right_border_buf_1_val_0_2, align 1
  br label %"operator().exit291.i.1923"

branch79:                                         ; preds = %"operator().exit291.i.1923"
  store i8 %right_border_buf_1_val_1_2_4, i8* %right_border_buf_1_val_1_2_7, align 1
  store i8 %right_border_buf_1_val_1_2_6, i8* %right_border_buf_1_val_1_2_2, align 1
  store i8 %right_border_buf_1_val_1_2_8, i8* %right_border_buf_1_val_1_2_1, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %col_buf_1_val_0_0_5, align 1
  br label %"operator().exit.i.1"

branch80:                                         ; preds = %"operator().exit291.i.1923"
  store i8 %right_border_buf_1_val_1_2_4, i8* %right_border_buf_1_val_1_2_7, align 1
  store i8 %right_border_buf_1_val_1_2_6, i8* %right_border_buf_1_val_1_2_2, align 1
  store i8 %right_border_buf_1_val_1_2_8, i8* %right_border_buf_1_val_1_2_1, align 1
  store i8 %right_border_buf_1_val_2_0, i8* %col_buf_1_val_0_0_3, align 1
  br label %"operator().exit.i.1"

branch81:                                         ; preds = %.preheader.preheader.i.2_ifconv
  %src_kernel_win_2_val_2_1_6 = load i8* %right_border_buf_2_val_0_0, align 1
  store i8 %right_border_buf_2_val_1_2_11, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %src_kernel_win_2_val_2_1_6, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %col_buf_2_val_0_0_9, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

branch82:                                         ; preds = %.preheader.preheader.i.2_ifconv
  %src_kernel_win_2_val_2_1_7 = load i8* %right_border_buf_2_val_0_1, align 1
  store i8 %right_border_buf_2_val_1_2_11, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %src_kernel_win_2_val_2_1_7, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %col_buf_2_val_0_0_9, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

branch83:                                         ; preds = %.preheader.preheader.i.2_ifconv
  %src_kernel_win_2_val_2_1_5 = load i8* %right_border_buf_2_val_0_2, align 1
  store i8 %right_border_buf_2_val_1_2_11, i8* %src_kernel_win_2_val_1_1, align 1
  store i8 %src_kernel_win_2_val_2_1_5, i8* %src_kernel_win_2_val_2_1, align 1
  store i8 %col_buf_2_val_0_0_9, i8* %src_kernel_win_2_val_0_1, align 1
  br label %.loopexit225.i.2

branch84:                                         ; preds = %"operator().exit291.i.2"
  store i8 %src_kernel_win_2_val_2_0, i8* %right_border_buf_2_val_0_0, align 1
  br label %"operator().exit291.i.2960"

branch85:                                         ; preds = %"operator().exit291.i.2"
  store i8 %src_kernel_win_2_val_2_0, i8* %right_border_buf_2_val_0_1, align 1
  br label %"operator().exit291.i.2960"

branch86:                                         ; preds = %"operator().exit291.i.2"
  store i8 %src_kernel_win_2_val_2_0, i8* %right_border_buf_2_val_0_2, align 1
  br label %"operator().exit291.i.2960"

branch97:                                         ; preds = %"operator().exit291.i.2960"
  store i8 %right_border_buf_2_val_1_2_4, i8* %right_border_buf_2_val_1_2_3, align 1
  store i8 %right_border_buf_2_val_1_2_6, i8* %right_border_buf_2_val_1_2_2, align 1
  store i8 %right_border_buf_2_val_1_2_8, i8* %right_border_buf_2_val_1_2_1, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %col_buf_2_val_0_0_5, align 1
  br label %"operator().exit.i.2"

branch98:                                         ; preds = %"operator().exit291.i.2960"
  store i8 %right_border_buf_2_val_1_2_4, i8* %right_border_buf_2_val_1_2_3, align 1
  store i8 %right_border_buf_2_val_1_2_6, i8* %right_border_buf_2_val_1_2_2, align 1
  store i8 %right_border_buf_2_val_1_2_8, i8* %right_border_buf_2_val_1_2_1, align 1
  store i8 %right_border_buf_2_val_2_0, i8* %col_buf_2_val_0_0_3, align 1
  br label %"operator().exit.i.2"
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @sobel_AXIvideo2Mat(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str86, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str87, [1 x i8]* @str87, [8 x i8]* @str86)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str82, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str83, [1 x i8]* @str83, [8 x i8]* @str82)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str79, [1 x i8]* @str79, [8 x i8]* @str78)
  %img_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  br label %0

; <label>:0                                       ; preds = %0, %.critedge
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1836) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1836)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 4
  %empty_47 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1836, i32 %tmp)
  br i1 %tmp_user_V, label %.preheader150.preheader, label %0

.preheader150.preheader:                          ; preds = %0
  %sof_1 = alloca i1, align 1
  store i1 true, i1* %sof_1, align 1
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.preheader, %6
  %axi_last_V1 = phi i1 [ %axi_last_V_3, %6 ], [ %tmp_last_V, %.preheader150.preheader ]
  %axi_data_V1 = phi i32 [ %axi_data_V_3, %6 ], [ %tmp_data_V, %.preheader150.preheader ]
  %p_s = phi i12 [ %i_V, %6 ], [ 0, %.preheader150.preheader ]
  %exitcond1 = icmp eq i12 %p_s, %img_rows_V_read_1
  %i_V = add i12 %p_s, 1
  br i1 %exitcond1, label %7, label %1

; <label>:1                                       ; preds = %.preheader150
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 720, i32 0, [1 x i8]* @p_str1806) nounwind
  br label %2

; <label>:2                                       ; preds = %._crit_edge, %1
  %eol_1 = phi i1 [ %axi_last_V1, %1 ], [ %axi_last_V_2, %._crit_edge ]
  %axi_data_V_1 = phi i32 [ %axi_data_V1, %1 ], [ %p_Val2_s, %._crit_edge ]
  %p_1 = phi i12 [ 0, %1 ], [ %j_V, %._crit_edge ]
  %eol = phi i1 [ false, %1 ], [ %eol_2, %._crit_edge ]
  %exitcond2 = icmp eq i12 %p_1, %img_cols_V_read_1
  %j_V = add i12 %p_1, 1
  br i1 %exitcond2, label %.preheader, label %3

; <label>:3                                       ; preds = %2
  %sof_1_load = load i1* %sof_1, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1280, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %brmerge = or i1 %sof_1_load, %eol
  %not_sof_2 = xor i1 %sof_1_load, true
  %axi_last_V_1_mux = or i1 %eol_1, %not_sof_2
  br i1 %brmerge, label %._crit_edge, label %4

; <label>:4                                       ; preds = %3
  %empty_48 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_48, 0
  %tmp_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_48, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  %axi_last_V_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %eol_1, %3 ]
  %p_Val2_s = phi i32 [ %tmp_data_V_1, %4 ], [ %axi_data_V_1, %3 ]
  %eol_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %axi_last_V_1_mux, %3 ]
  %tmp_60 = trunc i32 %p_Val2_s to i8
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 8, i32 15)
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 16, i32 23)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1838)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp_60)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_12)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V, i8 %tmp_14)
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1838, i32 %tmp_7)
  %empty_50 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_2)
  store i1 false, i1* %sof_1, align 1
  br label %2

.preheader:                                       ; preds = %2, %5
  %axi_last_V_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol_1, %2 ]
  %axi_data_V_3 = phi i32 [ %tmp_data_V_2, %5 ], [ %axi_data_V_1, %2 ]
  %eol_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol, %2 ]
  br i1 %eol_3, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1837) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1837)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_51 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_51, 0
  %tmp_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_51, 4
  %empty_52 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1837, i32 %tmp_3)
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_1)
  br label %.preheader150

; <label>:7                                       ; preds = %.preheader150
  ret void
}

define internal fastcc void @sobel_Sobel(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_2_V, [8 x i8]* @str98, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str99, [1 x i8]* @str99, [8 x i8]* @str98)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_1_V, [8 x i8]* @str94, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str95, [1 x i8]* @str95, [8 x i8]* @str94)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_0_V, [8 x i8]* @str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str91, [1 x i8]* @str91, [8 x i8]* @str90)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_2_V, [8 x i8]* @str86, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str87, [1 x i8]* @str87, [8 x i8]* @str86)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @str82, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str83, [1 x i8]* @str83, [8 x i8]* @str82)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str79, [1 x i8]* @str79, [8 x i8]* @str78)
  %p_src_cols_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  call fastcc void @sobel_Filter2D(i12 %p_src_rows_V_read_2, i12 %p_src_cols_V_read_2, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V)
  ret void
}

define internal fastcc void @sobel_Mat2AXIvideo(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
  %tmp_user_V = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str98, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str99, [1 x i8]* @str99, [8 x i8]* @str98)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str94, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str95, [1 x i8]* @str95, [8 x i8]* @str94)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str91, [1 x i8]* @str91, [8 x i8]* @str90)
  %img_cols_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  %tmp_cast = zext i12 %img_cols_V_read_2 to i13
  %op2_assign = add i13 %tmp_cast, -1
  store i1 true, i1* %tmp_user_V, align 1
  br label %1

; <label>:1                                       ; preds = %4, %0
  %p_s = phi i12 [ 0, %0 ], [ %i_V, %4 ]
  %exitcond3 = icmp eq i12 %p_s, %img_rows_V_read_2
  %i_V = add i12 %p_s, 1
  br i1 %exitcond3, label %5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 720, i32 0, [1 x i8]* @p_str1806) nounwind
  br label %3

; <label>:3                                       ; preds = %"operator>>.exit", %2
  %p_3 = phi i12 [ 0, %2 ], [ %j_V, %"operator>>.exit" ]
  %exitcond4 = icmp eq i12 %p_3, %img_cols_V_read_2
  %j_V = add i12 %p_3, 1
  br i1 %exitcond4, label %4, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %3
  %tmp_user_V_load = load i1* %tmp_user_V, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1280, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_cast_54 = zext i12 %p_3 to i13
  %axi_last_V = icmp eq i13 %tmp_cast_54, %op2_assign
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_61 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_62 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_17)
  %tmp_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp, i8 %tmp_62, i8 %tmp_61)
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %tmp_data_V, i4 -1, i4 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_55 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_16)
  store i1 false, i1* %tmp_user_V, align 1
  br label %3

; <label>:4                                       ; preds = %3
  %empty_56 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_15)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_57 = trunc i11 %empty to i3
  ret i3 %empty_57
}

define internal fastcc i14 @sobel_borderInterpolate(i12 %p, i12 %len) readnone {
_ifconv:
  %len_read = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %len)
  %p_read = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p)
  %p_cast1 = sext i12 %p_read to i13
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %p_read, i32 11)
  %rev = xor i1 %tmp, true
  %len_cast4_cast = zext i12 %len_read to i13
  %tmp_s = icmp slt i13 %p_cast1, %len_cast4_cast
  %or_cond_58 = and i1 %tmp_s, %rev
  %p_cast_cast = sext i12 %p_read to i14
  %tmp_1 = icmp eq i12 %len_read, 1
  %tmp_63 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %p_read, i32 11)
  %p_assign = sub i13 0, %p_cast1
  %p_p2 = select i1 %tmp_63, i13 %p_assign, i13 %p_cast1
  %p_p2_cast_cast = zext i13 %p_p2 to i14
  %tmp_3 = icmp ult i13 %p_p2, %len_cast4_cast
  %tmp_4 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %len_read, i1 false)
  %tmp_4_cast_cast = zext i13 %tmp_4 to i14
  %tmp_5 = add i14 %tmp_4_cast_cast, -2
  %p_assign_1 = sub i14 %tmp_5, %p_p2_cast_cast
  %tmp_not = xor i1 %tmp_s, true
  %sel_tmp1 = or i1 %tmp, %tmp_not
  %sel_tmp2 = and i1 %tmp_1, %sel_tmp1
  %sel_tmp6_demorgan = or i1 %or_cond_58, %tmp_1
  %sel_tmp6 = xor i1 %sel_tmp6_demorgan, true
  %sel_tmp7 = and i1 %tmp_3, %sel_tmp6
  %newSel = select i1 %sel_tmp7, i13 %p_p2, i13 0
  %newSel_cast = zext i13 %newSel to i14
  %or_cond = or i1 %sel_tmp7, %sel_tmp2
  %newSel9 = select i1 %or_cond_58, i14 %p_cast_cast, i14 %p_assign_1
  %p_assign_2 = select i1 %or_cond, i14 %newSel_cast, i14 %newSel9
  ret i14 %p_assign_2
}

define internal fastcc { i12, i12, i12, i12, i12, i12 } @sobel_Block__proc(i32 %rows, i32 %cols) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  %cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rows)
  %img_0_cols_V = trunc i32 %cols_read to i12
  %img_0_rows_V = trunc i32 %rows_read to i12
  %mrv = insertvalue { i12, i12, i12, i12, i12, i12 } undef, i12 %img_0_rows_V, 0
  %mrv_1 = insertvalue { i12, i12, i12, i12, i12, i12 } %mrv, i12 %img_0_rows_V, 1
  %mrv_2 = insertvalue { i12, i12, i12, i12, i12, i12 } %mrv_1, i12 %img_0_cols_V, 2
  %mrv_3 = insertvalue { i12, i12, i12, i12, i12, i12 } %mrv_2, i12 %img_0_cols_V, 3
  %mrv_4 = insertvalue { i12, i12, i12, i12, i12, i12 } %mrv_3, i12 %img_0_rows_V, 4
  %mrv_5 = insertvalue { i12, i12, i12, i12, i12, i12 } %mrv_4, i12 %img_0_cols_V, 5
  ret { i12, i12, i12, i12, i12, i12 } %mrv_5
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_59 = zext i1 %1 to i9
  %empty_60 = shl i9 %empty, 1
  %empty_61 = or i9 %empty_60, %empty_59
  ret i9 %empty_61
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_62 = zext i1 %1 to i13
  %empty_63 = shl i13 %empty, 1
  %empty_64 = or i13 %empty_63, %empty_62
  ret i13 %empty_64
}

define weak i32 @_ssdm_op_Read.ap_stable.i32(i32) {
entry:
  ret i32 %0
}

define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0
  %empty_65 = load i4* %1
  %empty_66 = load i4* %2
  %empty_67 = load i1* %3
  %empty_68 = load i1* %4
  %empty_69 = load i1* %5
  %empty_70 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_65, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_66, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_67, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_68, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_69, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_70, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_71 = trunc i11 %empty to i10
  ret i10 %empty_71
}

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_72 = shl i11 1, %empty
  %empty_73 = and i11 %0, %empty_72
  %empty_74 = icmp ne i11 %empty_73, 0
  ret i1 %empty_74
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_75 = shl i12 1, %empty
  %empty_76 = and i12 %0, %empty_75
  %empty_77 = icmp ne i12 %empty_76, 0
  ret i1 %empty_77
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i14.i32.i32(i14, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"INPUT_STREAM.V.data.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 3, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"INPUT_STREAM.V.keep.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 3, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"INPUT_STREAM.V.strb.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"INPUT_STREAM.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"INPUT_STREAM.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"INPUT_STREAM.V.id.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"INPUT_STREAM.V.dest.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"OUTPUT_STREAM.V.data.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 3, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"OUTPUT_STREAM.V.keep.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 3, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"OUTPUT_STREAM.V.strb.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"OUTPUT_STREAM.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"OUTPUT_STREAM.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"OUTPUT_STREAM.V.id.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"OUTPUT_STREAM.V.dest.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"rows", metadata !67, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"cols", metadata !67, metadata !"int", i32 0, i32 31}
