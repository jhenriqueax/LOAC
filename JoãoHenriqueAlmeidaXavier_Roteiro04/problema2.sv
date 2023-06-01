parameter ADDR_WIDTH = 4;
parameter DATA_WIDTH = 4;

module RAM_RW (
    input logic clk, wr_en,
    input logic [ADDR_WIDTH-1:0] addr,
    input logic [DATA_WIDTH-1:0] wdata,
    output logic [DATA_WIDTH-1:0] rdata
);

    logic [DATA_WIDTH-1:0] mem [0: (1<<ADDR_WIDTH) -1];

    always_ff @(posedge clk) begin
        if (wr_en)
            mem[addr] <= wdata;
        else
            rdata <= mem[addr];
    end

endmodule
