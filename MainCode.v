module compare_and_exchange(
    input [31:0] i1,
    input [31:0] i2,
    input dir,
    input clk,
    input reset,
    input enable,
    output [31:0] o1,
    output  [31:0] o2
    );
    reg [31:0]r1;
    reg [31:0]r2;
   always @(posedge clk)
   begin
   if(reset==0)
   begin
           if(enable==1)
            begin
                 if(dir==1)
                     begin
                        if (i1<i2)
                            begin
                                 r1 <= i1;
                                 r2 <= i2;
                            end
                        else
                             begin
                                 r1 <= i2;
                                 r2 <= i1;
                             end
                       end
                 else if(dir==0)  
                     begin
                        if (i1>i2)
                            begin
                             r1 <= i1;
                             r2 <= i2;
                            end
                        else
                             begin
                                 r1 <= i2;
                                 r2 <= i1;
                              end
                      end
            end
    else if (reset==1)
    begin
    r1<=32'b0;
    r2<=32'b0;
    end
    
    end
    
    end
  
    assign o2=r2; 
  assign o1=r1;
 
  
    
endmodule
module BM4_CAE(
    input [31:0] i1,
    input [31:0] i2,
    input [31:0] i3,
    input [31:0] i4,
    input dir,
    input clk,
    input reset,
    input enable,
    output [31:0] o1,
    output [31:0] o2,
    output [31:0] o3,
    output [31:0] o4
    );
    wire [31:0]r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
          
           compare_and_exchange cae1(i1[31:0],i2[31:0],dir,clk,reset,enable,r1,r2);
           compare_and_exchange cae2(i3[31:0],i4[31:0],dir,clk,reset,enable,r3,r4);
           compare_and_exchange cae3(r1[31:0],r4[31:0],dir,clk,reset,enable,r5,r8);
           compare_and_exchange cae4(r2[31:0],r3[31:0],dir,clk,reset,enable,r6,r7);
           compare_and_exchange cae5(r5[31:0],r6[31:0],dir,clk,reset,enable,r11,r13);
           compare_and_exchange cae6(r7[31:0],r8[31:0],dir,clk,reset,enable,r12,r14); 
           assign o1=r11;
           assign o2=r12;
           assign o3=r13;
           assign o4=r14;
          
         
          
    endmodule
module BM8_CAE(
        input [31:0] i1,
        input [31:0] i2,
        input [31:0] i3,
        input [31:0] i4,
        input [31:0] i5,
        input [31:0] i6,
        input [31:0] i7,
        input [31:0] i8,
        input dir,
        input clk,
        input reset,
        input enable,
        output [31:0] o1,
        output [31:0] o2,
        output [31:0] o3,
        output [31:0] o4,
        output [31:0] o5,
        output [31:0] o6,
        output [31:0] o7,
        output [31:0] o8
        );
      wire [31:0] r1,r2 ,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;   
         compare_and_exchange cae1(i1[31:0],i8[31:0],dir,clk,reset,enable,r1,r8);
         compare_and_exchange cae2(i2[31:0],i7[31:0],dir,clk,reset,enable,r2,r7);
         compare_and_exchange cae3(i3[31:0],i6[31:0],dir,clk,reset,enable,r3,r6);
         compare_and_exchange cae4(i4[31:0],i5[31:0],dir,clk,reset,enable,r4,r5);
        
         compare_and_exchange cae6(r1[31:0],r3[31:0],dir,clk,reset,enable,r9,r10); 
         compare_and_exchange cae7(r2[31:0],r4[31:0],dir,clk,reset,enable,r11,r12); 
         compare_and_exchange cae8(r5[31:0],r7[31:0],dir,clk,reset,enable,r13,r14);
         compare_and_exchange cae9(r6[31:0],r8[31:0],dir,clk,reset,enable,r15,r16);
         
         compare_and_exchange cae10(r9[31:0],r11[31:0],dir,clk,reset,enable,r17,r18); 
         compare_and_exchange cae11(r10[31:0],r12[31:0],dir,clk,reset,enable,r19,r20);
         compare_and_exchange cae12(r13[31:0],r15[31:0],dir,clk,reset,enable,r21,r22); 
         compare_and_exchange cae13(r14[31:0],r16[31:0],dir,clk,reset,enable,r23,r24);  
       
        assign o1=r17;
        assign o2=r18;
        assign o3=r19;
        assign o4=r20;
        assign o5=r21;
        assign o6=r22;
        assign o7=r23;
        assign o8=r24;
      endmodule
        
module full_CAE(
input [31:0] i1,
input [31:0] i2,
input [31:0] i3,
input [31:0] i4,
input [31:0] i5,
input [31:0] i6,
input [31:0] i7,
input [31:0] i8,
input dir,
input clk,
input reset,
input enable,
output [31:0] o1,
output [31:0] o2,
output [31:0] o3,
output [31:0] o4,
output [31:0] o5,
output [31:0] o6,
output [31:0] o7,
output [31:0] o8
);
wire [31:0] r1,r2 ,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;

compare_and_exchange cae1(i1[31:0],i2[31:0],dir,clk,reset,enable,r1,r2);
compare_and_exchange cae2(i3[31:0],i4[31:0],dir,clk,reset,enable,r3,r4);
compare_and_exchange cae3(i5[31:0],i6[31:0],dir,clk,reset,enable,r5,r6);
compare_and_exchange cae4(i7[31:0],i8[31:0],dir,clk,reset,enable,r7,r8);
BM4_CAE a1(r1,r2,r3,r4,dir,clk,reset,enable,r9,r10,r11,r12);
BM4_CAE a2(r5,r6,r7,r8,dir,clk,reset,enable,r13,r14,r15,r16);
BM8_CAE a3(r9,r10,r11,r12,r13,r14,r15,r16,dir,clk,reset,enable,r17,r18,r19,r20,r21,r22,r23,r24);

assign o1=r17;
assign o2=r18;
assign o3=r19;
assign o4=r20;
assign o5=r21;
assign o6=r23;
assign o7=r22;
assign o8=r24;

endmodule