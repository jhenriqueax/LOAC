// João Henrique Almeida Xavier - 121110402

module  Detector (
  input clk,
  input reset,
  input entrada,
  output reg saida
);

  parameter tamanho = 1;
  
  enum logic [tamanho - 1 : 0] {PAR, IMPAR} state;
    
  always_ff @(posedge clk) begin
    if (reset)
      state <= 0;
    else begin
      case (state)
        PAR:
          if (entrada == 0)
            state <= PAR;
          else
            state <= IMPAR;
        IMPAR:
          if (entrada == 0)
            state <= IMPAR;
          else
            state <= PAR;
      endcase
    end
  end
  
  always_comb begin
    saida <= (state == IMPAR);
  end

endmodule

