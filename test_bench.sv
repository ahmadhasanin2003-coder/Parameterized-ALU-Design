// Code your testbench here
// or browse Examples
module parametrized_alu_tb();
  reg [15:0] a_t,b_t;
  reg [2:0] op_t;
  wire [15:0] out_t;
  wire flag_t;
  parametrized_alu#(.data_width(16), .opcode_width(3)) alu1 (a_t,b_t,op_t,out_t,flag_t);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,parametrized_alu_tb);
    a_t=16'h0001;b_t=16'h0004;op_t=3'b000;
    #10 a_t=16'h0001;b_t=16'h0004;op_t=3'b001;
    #10 a_t=16'h0001;b_t=16'h0004;op_t=3'b010;
    #10 a_t=16'h0001;b_t=16'h0004;op_t=3'b111;
    #10 a_t=16'h0001;b_t=16'h0004;op_t=3'b011;
    #10 a_t=16'h0001;b_t=16'h0004;op_t=3'b100;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t a=%h b=%h op=%h out=%h flag=%b",$time,a_t,b_t,op_t,out_t,flag_t);
  end
endmodule
