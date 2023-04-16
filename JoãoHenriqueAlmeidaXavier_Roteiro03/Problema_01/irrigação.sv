// João Henrique Almeida Xavier - 121110402
module irrigacao(input logic U1, U2, output logic [1:0] saida);

  always_comb begin
    
    case({U1, U2})
      'b00: saida = 'b00;
      'b10: saida = 'b01;
      'b01: saida = 'b10;
      'b11: saida = 'b11;
    endcase
  
  end

endmodule