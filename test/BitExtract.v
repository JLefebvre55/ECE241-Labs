module BitExtract (
    input [15:0] DataBus,
    output msb, lsb
);
    assign msb = DataBus[15];
    assign lsb = DataBus[0];
endmodule