module CKLNQD8BWP6T16P96CPDLVT (
    Q,
    CP,
    E,
    TE
);
    output Q;
    input CP, E, TE;

    PREICG_D4_N_S6P25TSL_C54L04 clk_gate_inst (
        .ECK(Q),
        .CK (CP),
        .E  (E),
        .SE (TE)
    );

endmodule