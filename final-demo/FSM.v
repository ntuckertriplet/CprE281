module FSM( clearn, Isvalid, clk, SN3, SN2, SN1, SN0, S3, S2, S1, S0);
	input clearn, Isvalid, clk, S3, S2, S1, S0;
	output SN3, SN2, SN1, SN0;
	assign SN3= (Isvalid| S3)&(S3& ~S2&~S1&S0);
	assign SN2= S2|(~S3&S1&S0);
	assign SN1= (~S3&~S1&S0)|(S2&S1)|(S3&S1)|(S1&~S0);
	assign SN0= (~S3&~S0)|(S0&S1&S2)|(S3&S0);
endmodule

