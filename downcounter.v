/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module Mux_2x1_NBits #(
    parameter Bits = 2
)
(
    input [0:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


module DIG_D_FF_AS_1bit
#(
    parameter Default = 0
)
(
   input Set,
   input D,
   input C,
   input Clr,
   output Q,
   output \~Q
);
    reg state;

    assign Q = state;
    assign \~Q  = ~state;

    always @ (posedge C or posedge Clr or posedge Set)
    begin
        if (Set)
            state <= 1'b1;
        else if (Clr)
            state <= 'h0;
        else
            state <= D;
    end

    initial begin
        state = Default;
    end
endmodule

module Mux_4x1
(
    input [1:0] sel,
    input in_0,
    input in_1,
    input in_2,
    input in_3,
    output reg out
);
    always @ (*) begin
        case (sel)
            2'h0: out = in_0;
            2'h1: out = in_1;
            2'h2: out = in_2;
            2'h3: out = in_3;
            default:
                out = 'h0;
        endcase
    end
endmodule


module downcounterOneDigit (
  input EN,
  input LOAD,
  input [3:0] IN,
  input CLK,
  input RESET,
  output [3:0] CNT,
  output ZERO
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire s8;
  wire s9;
  wire s10;
  wire s11;
  wire s12;
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire [1:0] s17;
  wire [1:0] s18;
  wire [1:0] s19;
  wire [1:0] s20;
  wire s21;
  wire s22;
  wire s23;
  assign s5 = ~ RESET;
  assign s17[0] = EN;
  assign s17[1] = LOAD;
  assign s0 = IN[0];
  assign s1 = IN[1];
  assign s2 = IN[2];
  assign s3 = IN[3];
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i0 (
    .Set( 1'b0 ),
    .D( s4 ),
    .C( CLK ),
    .Clr( s5 ),
    .Q( s6 ),
    .\~Q ( s7 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i1 (
    .Set( 1'b0 ),
    .D( s8 ),
    .C( CLK ),
    .Clr( s5 ),
    .Q( s9 ),
    .\~Q ( s10 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i2 (
    .Set( 1'b0 ),
    .D( s11 ),
    .C( CLK ),
    .Clr( s5 ),
    .Q( s12 ),
    .\~Q ( s13 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i3 (
    .Set( 1'b0 ),
    .D( s14 ),
    .C( CLK ),
    .Clr( s5 ),
    .Q( s15 ),
    .\~Q ( s16 )
  );
  Mux_4x1 Mux_4x1_i4 (
    .sel( s17 ),
    .in_0( s6 ),
    .in_1( s7 ),
    .in_2( s0 ),
    .in_3( s0 ),
    .out( s4 )
  );
  Mux_4x1 Mux_4x1_i5 (
    .sel( s18 ),
    .in_0( s9 ),
    .in_1( s10 ),
    .in_2( s1 ),
    .in_3( s1 ),
    .out( s8 )
  );
  Mux_4x1 Mux_4x1_i6 (
    .sel( s19 ),
    .in_0( s12 ),
    .in_1( s13 ),
    .in_2( s2 ),
    .in_3( s2 ),
    .out( s11 )
  );
  Mux_4x1 Mux_4x1_i7 (
    .sel( s20 ),
    .in_0( s15 ),
    .in_1( s16 ),
    .in_2( s3 ),
    .in_3( s3 ),
    .out( s14 )
  );
  assign s18[0] = s21;
  assign s18[1] = LOAD;
  assign s19[0] = s22;
  assign s19[1] = LOAD;
  assign s20[0] = s23;
  assign s20[1] = LOAD;
  assign s21 = (s7 & EN);
  assign CNT[0] = s6;
  assign CNT[1] = s9;
  assign CNT[2] = s12;
  assign CNT[3] = s15;
  assign s22 = (s10 & s21);
  assign s23 = (s22 & s13);
  assign ZERO = (s16 & s23);
endmodule

module downcounter (
  input c1khz,
  input [3:0] pm10,
  input [3:0] pm1,
  input [3:0] ps10,
  input [3:0] ps1,
  input load,
  input count,
  input rst,
  output [3:0] s1,
  output [3:0] s2,
  output [3:0] m1,
  output [3:0] m10,
  output zero
);
  wire s0;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire [3:0] s8;
  wire [3:0] s9;
  wire [3:0] s10;
  wire [3:0] s11;
  wire [3:0] s12;
  wire [3:0] s13;
  wire s14;
  wire s15;
  assign s8[0] = 1'b1;
  assign s8[1] = 1'b0;
  assign s8[2] = 1'b0;
  assign s8[3] = 1'b1;
  assign s10[0] = 1'b1;
  assign s10[1] = 1'b0;
  assign s10[2] = 1'b1;
  assign s10[3] = 1'b0;
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i0 (
    .sel( load ),
    .in_0( s8 ),
    .in_1( ps1 ),
    .out( s9 )
  );
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i1 (
    .sel( load ),
    .in_0( s10 ),
    .in_1( ps10 ),
    .out( s11 )
  );
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i2 (
    .sel( load ),
    .in_0( s8 ),
    .in_1( pm1 ),
    .out( s12 )
  );
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i3 (
    .sel( load ),
    .in_0( s8 ),
    .in_1( pm10 ),
    .out( s13 )
  );
  assign s3 = (load | s0);
  assign s5 = (load | s4);
  assign s7 = (load | s6);
  assign s15 = (s14 | load);
  downcounterOneDigit downcounterOneDigit_i4 (
    .EN( count ),
    .LOAD( s15 ),
    .IN( s9 ),
    .CLK( c1khz ),
    .RESET( rst ),
    .CNT( s1 ),
    .ZERO( s14 )
  );
  downcounterOneDigit downcounterOneDigit_i5 (
    .EN( s14 ),
    .LOAD( s3 ),
    .IN( s11 ),
    .CLK( c1khz ),
    .RESET( rst ),
    .CNT( s2 ),
    .ZERO( s0 )
  );
  downcounterOneDigit downcounterOneDigit_i6 (
    .EN( s0 ),
    .LOAD( s5 ),
    .IN( s12 ),
    .CLK( c1khz ),
    .RESET( rst ),
    .CNT( m1 ),
    .ZERO( s4 )
  );
  downcounterOneDigit downcounterOneDigit_i7 (
    .EN( s4 ),
    .LOAD( s7 ),
    .IN( s13 ),
    .CLK( c1khz ),
    .RESET( rst ),
    .CNT( m10 ),
    .ZERO( s6 )
  );
  assign zero = (s14 & s0 & s4 & s6);
endmodule
