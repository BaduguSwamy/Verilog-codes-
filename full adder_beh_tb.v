module fulladder_beh_tb;
reg a,b,cin;
wire s,c;
fulladder_beh DUT(s,c,a,b,cin);
initial
begin
#000 a=0; b=0; cin =0;
#100 a=0; b=0; cin =1;
#100 a=0; b=1; cin =0;
#100 a=0; b=1; cin =1;
#100 a=1; b=0; cin =0;
#100 a=1; b=0; cin =1;
#100 a=1; b=1; cin =0;
#100 a=1; b=1; cin =1;
end
initial
begin
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,c=%b",a,b,s,c,cin);
end
endmodule
