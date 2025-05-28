module testbench();
  reg [7:0] A,B;
  reg [2:0] Alu_Sel;
  wire [7:0] Alu_Out;
  wire Carry, Zero;
  alu_8bit ALU(A,B,Alu_Sel,Alu_Out,Carry,Zero);
  initial
    begin
      $dumpfile("alu8bit.vcd");
      $dumpvars(0,testbench);
      $monitor($time," A = %b, B = %b, Alu_Sel = %b Alu_Out = %b, Carry = %b, Zero = %b",A,B,Alu_Sel,Alu_Out,Carry,Zero);
      A = 8'b11100010; B = 8'b01011101; Alu_Sel = 3'b000; #10
      Alu_Sel = 3'b001; #10
      Alu_Sel = 3'b010; #10
      Alu_Sel = 3'b011; #10
      Alu_Sel = 3'b100; #10
      Alu_Sel = 3'b101; #10
      Alu_Sel = 3'b110; #10
      Alu_Sel = 3'b111; #10
      A = 8'b11110000; B = 8'b00001111; Alu_Sel = 3'b000; #10
      Alu_Sel = 3'b001; #10
      Alu_Sel = 3'b010; #10
      Alu_Sel = 3'b011; #10
      Alu_Sel = 3'b100; #10
      Alu_Sel = 3'b101; #10
      Alu_Sel = 3'b110; #10
      Alu_Sel = 3'b111; #10
      A = 8'b01010101; B = 8'b10101010; Alu_Sel = 3'b000; #10
      Alu_Sel = 3'b001; #10
      Alu_Sel = 3'b010; #10
      Alu_Sel = 3'b011; #10
      Alu_Sel = 3'b100; #10
      Alu_Sel = 3'b101; #10
      Alu_Sel = 3'b110; #10
      Alu_Sel = 3'b111; #10
      $finish;
    end
endmodule
