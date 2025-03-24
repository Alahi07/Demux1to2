// Code your testbench here
// or browse Examples
module tb;
  reg din,sel;
  wire y0,y1;
  demux2to1 uut(
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
  );
  initial begin 
    $monitor ("din=%b,sel=%b -->y0=%b,y1=%b",din,sel,y0,y1);
    din=1;sel=0;#10;
    din=1;sel=1;#10;
    din=0;sel=0;#10;
    din=0;sel=1;#10;
    $finish;
  end
endmodule
    
