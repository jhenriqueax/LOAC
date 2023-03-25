// João Henrique Almeida Xavier - 121110402

module Somador(input logic [7:0] A, B , output logic [7:0] S,
               output logic Z, output logic N, output logic P);

  always_comb S = A + B;
  always_comb Z =  S == 0;
  always_comb N = S[7] == 1;
  always_comb P = S[0] == 0;
  

endmodule