module alu_8bit(A,B,Alu_Sel,Alu_Out,Carry,Zero);
  input [7:0] A,B;
  input [2:0] Alu_Sel;
  output reg [7:0] Alu_Out;
  output reg Carry;
  output reg Zero;
  always @(*) begin
    Carry = 0;
  case(Alu_Sel)
    3'b000: Alu_Out = A & B;
    3'b001: Alu_Out = A | B;
	3'b010: Alu_Out = A ^ B;
	3'b011: Alu_Out = ~A;
	3'b100: Alu_Out = A << 1;
	3'b101: Alu_Out = B >> 1;
	3'b110: begin
      {Carry, Alu_Out} = A + B;
    end
	3'b111: begin
      Alu_Out = A - B;
      Carry = (A < B) ? 1'b1 : 1'b0; 
    end
    default: Alu_Out = 8'b00000000;
  endcase
  Zero = (Alu_Out == 8'b00000000) ? 1'b1 : 1'b0;
  end
endmodule
