//João Henrique Almeida Xavier - 121110402

module pratica4(input wire clk,
                  input wire reset,
                  input wire [1:0] in_bit,
                  output reg out_bit);

    enum logic [1:0] {A, B, C, D} state;

    always_ff @(posedge clk)
    begin
        if (reset)
            state <= A;
        else
            case (state)
                A:
                    if (in_bit == 2'b01)
                        state <= B;
                    else
                        state <= A;
                B:
                    if (in_bit == 2'b10)
                        state <= C;
                    else if (in_bit == 2'b01)
                        state <= B;
                    else
                        state <= A;
                C:
                    if (in_bit == 2'b11)
                        state <= D;
                    else if (in_bit == 2'b01)
                        state <= B;
                    else
                        state <= A;
                D:
                    state <= A;
            endcase
    end

    always_comb
        out_bit = (state == D);

endmodule
