// João Henrique Almeida Xavier - 121110402
module circuit(input logic A1, A2, A3, M, output logic Saida);
  
  always_comb Saida = !M && (A1 || A2 || A3);
  
endmodule