module LCD_DISPLAY(Clk50Mhz, LCD_EN, LCD_RS, LCD_DATA);

input Clk50Mhz;
output reg LCD_EN, LCD_RS;
output reg [7:0] LCD_DATA;
integer i = 0;
integer j = 1;

reg [7:0] Datas [1:25];
		
always @(posedge Clk50Mhz) begin
Datas[1]   =  8'h38;   	//-- control instruction : configure - 2 lines, 5x7 matrix --
Datas[2]   =  8'h0C;   	//-- control instruction : Display on, cursor off --
Datas[3]   =  8'h06;   	//-- control instruction : Increment cursor : shift cursor to right --
Datas[4]   =  8'h01;   	//-- control instruction : clear display screen --
Datas[5]   =  8'h80;   	//-- control instruction : force cursor to begin at first line --

Datas[6]   =  8'h46;   	//-- F --
Datas[7]   =  8'h50;   	//-- P --
Datas[8]   =  8'h47;   	//-- G --
Datas[9]   =  8'h41;   	//-- A --
Datas[10]  =  8'h73;   	//-- s --
Datas[11]  =  8'h20;   	//--   --

Datas[12]  =  8'h61;   	//-- a --
Datas[13]  =  8'h72;   	//-- r --
Datas[14]  =  8'h65;   	//-- e --

Datas[15]  =  8'h20;   	//--   --
Datas[16]  =  8'h66;   	//-- f --
Datas[17]  =  8'h75;   	//-- u --
Datas[18]  =  8'h6E;   	//-- n --

Datas[19]  =  8'h21;   	//-- ! --
Datas[20]  =  8'h21;   	//-- ! --
Datas[21]  =  8'h21;   	//-- ! --
Datas[22]  =  8'hC0;   	//-- control instruction : force cursor to move to 2nd Line --
Datas[23]  =  8'h3A;   	//-- : --
Datas[24]  =  8'h2D;   	//-- - --
Datas[25]  =  8'h29;   	//-- ) --
end		
		
always @(posedge Clk50Mhz) begin

//-- Delay for writing data
	
  if (i <= 1000000) begin
  i = i + 1; LCD_EN = 1;
  LCD_DATA = Datas[j];
  end
  
  else if (i > 1000000 & i < 2000000) begin
  i = i + 1; LCD_EN = 0;
  end
  
  else if (i == 2000000) begin
  j = j + 1; i = 0;
  end
  else i = 0;
  
 //-- LCD_RS signal should be set to 0 for writing commands and to 1 for writing data

  if (j <= 5 ) LCD_RS = 0;  
  else if (j > 5 & j< 22) LCD_RS = 1;   
  else if (j == 22) LCD_RS = 0;
  else if (j > 22) begin 
  LCD_RS = 1; j = 5;
  end
 
 end
endmodule