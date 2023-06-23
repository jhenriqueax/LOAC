//João Henrique Almeida Xavier - 121110402

module contador_hexadecimal (
  input logic clk,
  input logic reset,
  input logic increment,
  input logic decrement,
  output logic [3:0] count_hex
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count_hex <= 4'b0000; 
    end else if (increment) begin
      if (count_hex == 4'hF) begin
        count_hex <= 4'b0000; 
      end else begin
        count_hex <= count_hex + 1; 
      end
    end else if (decrement) begin
      if (count_hex == 4'h0) begin
        count_hex <= 4'hF; 
      end else begin
        count_hex <= count_hex - 1; 
      end
    end
  end

endmodule
