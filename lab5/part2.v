module part2(ClockIn, Reset, Speed, CounterValue);
  input Reset, ClockIn;
  input [1:0] Speed;
  output [3:0] CounterValue;
  reg[3:0] q = 4'b0000;// declare q

  // Slowest clock is 0.25Hz, or 2000 clock cycles at 500Hz
  // Lowest size that can hold: 2^11 = 2048
  reg [10:0] RateDivider = 11'b00000000000;
  reg Enable = 1'b1;

  always @(posedge ClockIn) // triggered every time clock rises
  begin
    if(RateDivider == 11'b00000000000)
      Enable <= 1'b1;
    else
      Enable <= 1'b0;

    if(Reset == 0)       // when Clearb is 0
      q <= 0;                // q is set to 0
    else if(q == 4'b1111)   // when q is the maximum value for the counter
      q <= 0;                // q reset to 0
    else if(Enable == 1'b1) // increment q only when Enable is 1
      q <= q + 1;            // increment q

    if(RateDivider == 11'b00000000000) //Reset rate counter
      if(Speed == 2'b01) //1Hz, or 500 cycles
        RateDivider <= 11'b00111110100;
      else if(Speed == 2'b10) //.5Hz, or 1000 cycles
        RateDivider <= 11'b01111101000;
      else if(Speed == 2'b11) //.25Hz, or 2000 cycles
        RateDivider <= 11'b11111010000;
    else
      RateDivider <= RateDivider - 1;
  end

  assign CounterValue = q;
endmodule