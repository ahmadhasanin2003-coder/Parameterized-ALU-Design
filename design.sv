// Code your design here
module parametrized_alu #( parameter data_width=8, parameter opcode_width=3)
  (
    input [data_width-1:0] a,
    input [data_width-1:0] b,
    input [opcode_width-1:0] op,
    output reg [data_width-1:0] out,
    output flag_zero
  );
  always@(*)begin
    case(op)
      3'b000: out=a+b;
      3'b001: out=a-b;
      3'b010: out=a&b;
      3'b011: out=a|b;
      3'b100: out=a^b;
      3'b101: out=a<<b;
      3'b110: out=a>>b;
      //3'b111: out=(a<b)?{(data_width-1){1'b0},1'b1}:{data_width{1'b0}};
      default: out={data_width{1'b0}};
    endcase
  end
  assign flag_zero= out == {data_width{1'b0}};
  
endmodule
