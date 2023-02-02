`timescale 1ns / 1ps
module BM8_CAE_tb();
        reg [31:0] i1;
        reg [31:0] i2;
        reg [31:0] i3;
        reg [31:0] i4;
        reg [31:0] i5;
        reg [31:0] i6;
        reg [31:0] i7;
        reg [31:0] i8;
        reg dir;
        reg clk;
        reg reset;
        reg enable;
        wire  [31:0] o1;
        wire  [31:0] o2;
        wire  [31:0] o3;
        wire  [31:0] o4;
        wire  [31:0] o5;
        wire  [31:0] o6;
        wire  [31:0] o7;
        wire  [31:0] o8;
        
        
        full_CAE uut(.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.i8(i8),.dir(dir),.clk(clk),.reset(reset),.enable(enable),.o1(o1),.o2(o2),.o3(o3),.o4(o4),.o5(o5),.o6(o6),.o7(o7),.o8(o8));
    always #1 clk=~clk;
    initial
           begin
           
           clk = 0;
           dir=1;
           reset=0;
           enable = 1;
           i1=32'd1;
           i2=32'd4;
           i3=32'd5;
           i4=32'd7;
           i5=32'd0;
           i6=32'd2;
           i7=32'd3;
           i8=32'd6;
           #8
           i1=32'd20;
                      i2=32'd24;
                      i3=32'd26;
                      i4=32'd7;
                      i5=32'd20;
                      i6=32'd22;
                      i7=32'd32;
                      i8=32'd63;
           #10
           dir=0;
           i1=32'd20;
                                 i2=32'd24;
                                 i3=32'd26;
                                 i4=32'd7;
                                 i5=32'd20;
                                 i6=32'd22;
                                 i7=32'd32;
                                 i8=32'd63;
           #100;
           $finish;
           end
        endmodule