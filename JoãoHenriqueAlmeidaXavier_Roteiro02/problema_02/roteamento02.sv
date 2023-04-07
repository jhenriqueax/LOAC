// João Henrique Almeida Xavier - 121110402 
module roteamento02(input logic [3:0] A, B, C, D, input logic [1:0] SEL, output logic [3:0] Saida);
  
  always_comb 
    
    begin
   
      case({SEL})
        'b00: Saida = A;
        'b01: Saida = B;
        'b10: Saida = C;
        'b11: Saida = D;
     
    endcase
end
  
  
endmodule