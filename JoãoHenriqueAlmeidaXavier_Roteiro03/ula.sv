// João Henrique Almeida Xavier - 121110402
module circuit(input logic [7:0] A, B,
				input logic [1:0] vetor, 
               	output logic [7:0] saida, 
               	output logic FLAG_O);
  
  
	always_comb begin
		FLAG_O <= 0; // atribui um valor padrão de 0 para a variável FLAG
      	case (vetor)
			'b00: saida <= A & B;
          	'b01: saida <= A | B;
			'b10: begin
              saida <= A + B;
                if ((A[7] == B[7]) && (saida[7] != A[7])) // detecta overflow
                  FLAG_O <= 1;
                  end
              'b11: begin
                  saida <= A - B;
                if ((A[7] != B[7]) && (saida[7] != A[7])) // detecta underflow
                  FLAG_O <= 1;
                  end endcase
              end

endmodule