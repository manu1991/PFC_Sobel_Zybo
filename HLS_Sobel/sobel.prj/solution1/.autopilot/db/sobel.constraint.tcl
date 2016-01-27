set clock_constraint { \
    name clk \
    module sobel \
    port ap_clk \
    period 8 \
    uncertainty 1 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module sobel \
            instance rows \
            bitWidth 32 \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module sobel \
            instance cols \
            bitWidth 32 \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

