module tff(T, CLK, Q, CLRN);
  // Note: CLRN is active-low clear
  input T, CLK, CLRN;
  output reg Q;

  // Trigger on rising edge
  always @ (posedge CLK) begin  
    if (!CLRN)  
      Q <= 0;  
    else  
      if (T)  
        Q <= ~Q;  
      else  
        Q <= Q;  
  end  
endmodule

//8-bit TFF Counter
module part1(Clock, Enable, Clear_b, CounterValue);
  input Clock, Enable, Clear_b;
  output [7:0] CounterValue;

  wire [7:0] q;
  wire [6:0] t;

	tff u1 (.T(Enable), .CLK(Clock), .CLRN(Clear_b), .Q(q[0]));
  assign t[0] = q[0] & Enable;
  tff u2 (.T(t[0]), .CLK(Clock), .CLRN(Clear_b), .Q(q[1]));
  assign t[1] = q[1] & t[0];
  tff u3 (.T(t[1]), .CLK(Clock), .CLRN(Clear_b), .Q(q[2]));
  assign t[2] = q[2] & t[1];
  tff u4 (.T(t[2]), .CLK(Clock), .CLRN(Clear_b), .Q(q[3]));
  assign t[3] = q[3] & t[2];
  tff u5 (.T(t[3]), .CLK(Clock), .CLRN(Clear_b), .Q(q[4]));
  assign t[4] = q[4] & t[3];
  tff u6 (.T(t[4]), .CLK(Clock), .CLRN(Clear_b), .Q(q[5]));
  assign t[5] = q[5] & t[4];
  tff u7 (.T(t[5]), .CLK(Clock), .CLRN(Clear_b), .Q(q[6]));
  assign t[6] = q[6] & t[5];
  tff u8 (.T(t[6]), .CLK(Clock), .CLRN(Clear_b), .Q(q[7]));
  assign CounterValue = q;
endmodule