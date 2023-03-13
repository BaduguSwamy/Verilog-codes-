module fulladder_beh(s,c,a,b,cin);
input a,b,cin;
output s,c;
reg s,c;
always@(a,b,cin)

begin
if (a==b)
begin
s=cin;
c=b;
end
else
begin
s=~cin;
c=cin;
end
end
endmodule

