module xpu_vpu_pc_tn_vlsu_bf16_nan_type (
    float_data,
    is_nan
);
    wire [15:0] bf16_raw_bits;
    wire [7:0] exponent;
    wire [15:0] float_data;
    wire         is_nan;
    wire [6:0] mantissa;

    assign bf16_raw_bits[15:0] =float_data[15:0];

    assign exponent[7:0] = bf16_raw_bits[14:7];
    assign mantissa[6:0] = bf16_raw_bits[6:0];

    assign is_nan = (&exponent[7:0]) & (|mantissa[6:0]);
    
endmodule