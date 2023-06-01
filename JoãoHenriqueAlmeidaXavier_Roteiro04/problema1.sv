module registrador(
    input logic clk,
    input logic reset,
    input logic Din_serie,
    input logic SEL,
    input logic [3:0] Din,
    output logic [3:0] Dout
);

logic [3:0] paralelo = 0;
logic [3:0] serial = 0;

always_ff @(posedge clk) begin
    if (reset) begin
        paralelo <= 0;
        serial <= 0;
    end else begin
        serial <= SEL ? {serial[2:0], Din_serie} : {serial[2:0], serial[3]};
        paralelo <= SEL ? Din : paralelo;
    end
end

assign Dout = SEL ? serial : paralelo;

endmodule

