// João Henrique Almeida Xavier - 121110402 
module roteamento01(input logic [3:0] A, B, input logic SEL, output logic [3:0] Saida);
  
  always_comb 
    
    begin
   
      case({SEL})
        'b0: Saida = A;
        'b1: Saida = B;
     
    endcase
end
  
  
endmodule