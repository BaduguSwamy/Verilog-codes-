module d_flip_flop_tb;
  reg clk,rst;
  reg d;
  wire q;
  
  d_flip_flop DUT(clk,rst,d,q);
  
  initial 
  begin
   d=0;
   clk=0;
   rst=0;
   #2 rst =1;
   #10 d=1;
   #2 rst=0;
 end
 always #5 clk=~clk;
 endmodule