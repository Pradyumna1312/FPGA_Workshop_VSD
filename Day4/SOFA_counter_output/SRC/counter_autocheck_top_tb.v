//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog full testbench for top-level netlist of design: counter
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Sun Dec 18 19:11:24 2022
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module counter_autocheck_top_tb;
// ----- Local wires for global ports of FPGA fabric -----
wire [0:0] clk;
wire [0:0] Reset;
wire [0:0] pReset;
wire [0:0] prog_clk;
wire [0:0] Test_en;
wire [0:0] IO_ISOL_N;

// ----- Local wires for I/Os of FPGA fabric -----

wire [0:143] gfpga_pad_EMBEDDED_IO_HD_SOC_IN;

wire [0:143] gfpga_pad_EMBEDDED_IO_HD_SOC_OUT;
wire [0:143] gfpga_pad_EMBEDDED_IO_HD_SOC_DIR;

reg [0:0] config_done;
wire [0:0] prog_clock;
reg [0:0] prog_clock_reg;
wire [0:0] op_clock;
reg [0:0] op_clock_reg;
reg [0:0] prog_reset;
reg [0:0] prog_set;
reg [0:0] greset;
reg [0:0] gset;
// ---- Configuration-chain head -----
reg [0:0] ccff_head;
// ---- Configuration-chain tail -----
wire [0:0] ccff_tail;
// ----- Shared inputs -------
	reg [0:0] rst_shared_input;

// ----- FPGA fabric outputs -------
	wire [0:0] q_0__fpga;
	wire [0:0] q_1__fpga;
	wire [0:0] q_2__fpga;
	wire [0:0] q_3__fpga;
	wire [0:0] q_4__fpga;
	wire [0:0] q_5__fpga;
	wire [0:0] q_6__fpga;
	wire [0:0] q_7__fpga;

// ----- Benchmark outputs -------
	wire [0:0] q_0__benchmark;
	wire [0:0] q_1__benchmark;
	wire [0:0] q_2__benchmark;
	wire [0:0] q_3__benchmark;
	wire [0:0] q_4__benchmark;
	wire [0:0] q_5__benchmark;
	wire [0:0] q_6__benchmark;
	wire [0:0] q_7__benchmark;

// ----- Output vectors checking flags -------
	reg [0:0] q_0__flag;
	reg [0:0] q_1__flag;
	reg [0:0] q_2__flag;
	reg [0:0] q_3__flag;
	reg [0:0] q_4__flag;
	reg [0:0] q_5__flag;
	reg [0:0] q_6__flag;
	reg [0:0] q_7__flag;

// ----- Error counter: Deposit an error for config_done signal is not raised at the beginning -----
	integer nb_error= 1;
// ----- Number of clock cycles in configuration phase: 78766 -----
// ----- Begin configuration done signal generation -----
initial
	begin
		config_done[0] = 1'b0;
	end

// ----- End configuration done signal generation -----

// ----- Begin raw programming clock signal generation -----
initial
	begin
		prog_clock_reg[0] = 1'b0;
	end
always
	begin
		#5	prog_clock_reg[0] = ~prog_clock_reg[0];
	end

// ----- End raw programming clock signal generation -----

// ----- Actual programming clock is triggered only when config_done and prog_reset are disabled -----
	assign prog_clock[0] = prog_clock_reg[0] & (~config_done[0]) & (~prog_reset[0]);

// ----- Begin raw operating clock signal generation -----
initial
	begin
		op_clock_reg[0] = 1'b0;
	end
always wait(~greset)
	begin
		#18.49799919	op_clock_reg[0] = ~op_clock_reg[0];
	end

// ----- End raw operating clock signal generation -----
// ----- Actual operating clock is triggered only when config_done is enabled -----
	assign op_clock[0] = op_clock_reg[0] & config_done[0];

// ----- Begin programming reset signal generation -----
initial
	begin
		prog_reset[0] = 1'b1;
	#10	prog_reset[0] = 1'b0;
	end

// ----- End programming reset signal generation -----

// ----- Begin programming set signal generation -----
initial
	begin
		prog_set[0] = 1'b1;
	#10	prog_set[0] = 1'b0;
	end

// ----- End programming set signal generation -----

// ----- Begin operating reset signal generation -----
// ----- Reset signal is enabled until the first clock cycle in operation phase -----
initial
	begin
		greset[0] = 1'b1;
	wait(config_done)
	#36.99599838	greset[0] = 1'b1;
	#73.99199677	greset[0] = 1'b0;
	end

// ----- End operating reset signal generation -----
// ----- Begin operating set signal generation: always disabled -----
initial
	begin
		gset[0] = 1'b0;
	end

// ----- End operating set signal generation: always disabled -----

// ----- Begin connecting global ports of FPGA fabric to stimuli -----
	assign prog_clk[0] = prog_clock[0];
	assign clk[0] = op_clock[0];
	assign pReset[0] = ~prog_reset[0];
	assign Reset[0] = ~greset[0];
	assign Test_en[0] = 1'b0;
	assign IO_ISOL_N[0] = 1'b1;
// ----- End connecting global ports of FPGA fabric to stimuli -----
// ----- FPGA top-level module to be capsulated -----
	fpga_top FPGA_DUT (
		.clk(clk[0]),
		.Reset(Reset[0]),
		.pReset(pReset[0]),
		.prog_clk(prog_clk[0]),
		.Test_en(Test_en[0]),
		.IO_ISOL_N(IO_ISOL_N[0]),
		.gfpga_pad_EMBEDDED_IO_HD_SOC_IN(gfpga_pad_EMBEDDED_IO_HD_SOC_IN[0:143]),
		.gfpga_pad_EMBEDDED_IO_HD_SOC_OUT(gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[0:143]),
		.gfpga_pad_EMBEDDED_IO_HD_SOC_DIR(gfpga_pad_EMBEDDED_IO_HD_SOC_DIR[0:143]),
		.ccff_head(ccff_head[0]),
		.ccff_tail(ccff_tail[0]));

// ----- Link BLIF Benchmark I/Os to FPGA I/Os -----
// ----- Blif Benchmark input clk is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_IN[54] -----
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[54] = clk[0];

// ----- Blif Benchmark input rst is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_IN[95] -----
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[95] = rst_shared_input[0];

// ----- Blif Benchmark output q_0_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[86] -----
	assign q_0__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[86];

// ----- Blif Benchmark output q_1_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[85] -----
	assign q_1__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[85];

// ----- Blif Benchmark output q_2_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[84] -----
	assign q_2__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[84];

// ----- Blif Benchmark output q_3_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[87] -----
	assign q_3__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[87];

// ----- Blif Benchmark output q_4_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[91] -----
	assign q_4__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[91];

// ----- Blif Benchmark output q_5_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[93] -----
	assign q_5__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[93];

// ----- Blif Benchmark output q_6_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[79] -----
	assign q_6__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[79];

// ----- Blif Benchmark output q_7_ is mapped to FPGA IOPAD gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[80] -----
	assign q_7__fpga[0] = gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[80];

// ----- Wire unused FPGA I/Os to constants -----
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[0] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[1] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[2] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[3] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[4] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[5] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[6] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[7] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[8] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[9] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[10] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[11] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[12] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[13] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[14] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[15] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[16] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[17] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[18] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[19] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[20] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[21] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[22] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[23] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[24] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[25] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[26] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[27] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[28] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[29] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[30] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[31] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[32] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[33] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[34] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[35] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[36] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[37] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[38] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[39] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[40] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[41] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[42] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[43] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[44] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[45] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[46] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[47] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[48] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[49] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[50] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[51] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[52] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[53] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[55] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[56] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[57] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[58] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[59] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[60] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[61] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[62] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[63] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[64] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[65] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[66] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[67] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[68] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[69] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[70] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[71] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[72] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[73] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[74] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[75] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[76] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[77] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[78] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[79] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[80] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[81] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[82] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[83] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[84] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[85] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[86] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[87] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[88] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[89] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[90] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[91] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[92] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[93] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[94] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[96] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[97] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[98] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[99] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[100] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[101] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[102] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[103] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[104] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[105] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[106] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[107] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[108] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[109] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[110] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[111] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[112] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[113] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[114] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[115] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[116] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[117] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[118] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[119] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[120] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[121] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[122] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[123] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[124] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[125] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[126] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[127] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[128] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[129] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[130] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[131] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[132] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[133] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[134] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[135] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[136] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[137] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[138] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[139] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[140] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[141] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[142] = 1'b0;
	assign gfpga_pad_EMBEDDED_IO_HD_SOC_IN[143] = 1'b0;


// ----- Reference Benchmark Instanication -------
	counter REF_DUT(
		.clk(clk),
		.rst(rst_shared_input),
		.q_0_(q_0__benchmark),
		.q_1_(q_1__benchmark),
		.q_2_(q_2__benchmark),
		.q_3_(q_3__benchmark),
		.q_4_(q_4__benchmark),
		.q_5_(q_5__benchmark),
		.q_6_(q_6__benchmark),
		.q_7_(q_7__benchmark)
	);
// ----- End reference Benchmark Instanication -------

// ----- Begin bitstream loading during configuration phase -----
`define BITSTREAM_LENGTH 78765
`define BITSTREAM_WIDTH 1
// ----- Virtual memory to store the bitstream from external file -----
reg [0:`BITSTREAM_WIDTH - 1] bit_mem[0:`BITSTREAM_LENGTH - 1];
reg [$clog2(`BITSTREAM_LENGTH):0] bit_index;
// ----- Registers used for fast configuration logic -----
reg [$clog2(`BITSTREAM_LENGTH):0] ibit;
reg [0:0] skip_bits;
// ----- Preload bitstream file to a virtual memory -----
initial begin
	$readmemb("fabric_bitstream.bit", bit_mem);
// ----- Configuration chain default input -----
	ccff_head[0] <= 1'b0;
	bit_index <= 0;
	skip_bits[0] <= 1'b0;
	for (ibit = 0; ibit < `BITSTREAM_LENGTH + 1; ibit = ibit + 1) begin
		if (1'b0 == bit_mem[ibit]) begin
			if (1'b1 == skip_bits[0]) begin
				bit_index <= bit_index + 1;
			end
		end else begin
			skip_bits[0] <= 1'b0;
		end
	end
end
// ----- 'else if' condition is required by Modelsim to synthesis the Verilog correctly -----
always @(negedge prog_clock_reg[0]) begin
	if (bit_index >= `BITSTREAM_LENGTH) begin
		config_done[0] <= 1'b1;
	end else if (bit_index >= 0 && bit_index < `BITSTREAM_LENGTH) begin
		ccff_head[0] <= bit_mem[bit_index];
		bit_index <= bit_index + 1;
	end
end
// ----- End bitstream loading during configuration phase -----
// ----- Begin reset signal generation -----
// ----- Input Initialization -------
	initial begin
		rst_shared_input <= 1'b0;

		q_0__flag[0] <= 1'b0;
		q_1__flag[0] <= 1'b0;
		q_2__flag[0] <= 1'b0;
		q_3__flag[0] <= 1'b0;
		q_4__flag[0] <= 1'b0;
		q_5__flag[0] <= 1'b0;
		q_6__flag[0] <= 1'b0;
		q_7__flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge op_clock[0]) begin
		rst_shared_input <= $random;
	end

// ----- Begin checking output vectors -------
// ----- Skip the first falling edge of clock, it is for initialization -------
	reg [0:0] sim_start;

	always@(negedge clk[0]) begin
		if (1'b1 == sim_start[0]) begin
			sim_start[0] <= ~sim_start[0];
		end else 
if (1'b1 == config_done) begin
			if(!(q_0__fpga === q_0__benchmark) && !(q_0__benchmark === 1'bx)) begin
				q_0__flag <= 1'b1;
			end else begin
				q_0__flag<= 1'b0;
			end
			if(!(q_1__fpga === q_1__benchmark) && !(q_1__benchmark === 1'bx)) begin
				q_1__flag <= 1'b1;
			end else begin
				q_1__flag<= 1'b0;
			end
			if(!(q_2__fpga === q_2__benchmark) && !(q_2__benchmark === 1'bx)) begin
				q_2__flag <= 1'b1;
			end else begin
				q_2__flag<= 1'b0;
			end
			if(!(q_3__fpga === q_3__benchmark) && !(q_3__benchmark === 1'bx)) begin
				q_3__flag <= 1'b1;
			end else begin
				q_3__flag<= 1'b0;
			end
			if(!(q_4__fpga === q_4__benchmark) && !(q_4__benchmark === 1'bx)) begin
				q_4__flag <= 1'b1;
			end else begin
				q_4__flag<= 1'b0;
			end
			if(!(q_5__fpga === q_5__benchmark) && !(q_5__benchmark === 1'bx)) begin
				q_5__flag <= 1'b1;
			end else begin
				q_5__flag<= 1'b0;
			end
			if(!(q_6__fpga === q_6__benchmark) && !(q_6__benchmark === 1'bx)) begin
				q_6__flag <= 1'b1;
			end else begin
				q_6__flag<= 1'b0;
			end
			if(!(q_7__fpga === q_7__benchmark) && !(q_7__benchmark === 1'bx)) begin
				q_7__flag <= 1'b1;
			end else begin
				q_7__flag<= 1'b0;
			end
		end
	end

	always@(posedge q_0__flag) begin
		if(q_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_0__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_1__flag) begin
		if(q_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_1__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_2__flag) begin
		if(q_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_2__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_3__flag) begin
		if(q_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_3__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_4__flag) begin
		if(q_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_4__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_5__flag) begin
		if(q_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_5__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_6__flag) begin
		if(q_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_6__fpga at time = %t", $realtime);
		end
	end

	always@(posedge q_7__flag) begin
		if(q_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on q_7__fpga at time = %t", $realtime);
		end
	end


// ----- Configuration done must be raised in the end -------
	always@(posedge config_done[0]) begin
		nb_error = nb_error - 1;
	end

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("counter_formal.vcd");
		$dumpvars(1, counter_autocheck_top_tb);
	end
// ----- END output waveform to VCD file -------

initial begin
	sim_start[0] <= 1'b1;
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------
	#787939
	if(nb_error == 0) begin
		$display("Simulation Succeed");
	end else begin
		$display("Simulation Failed with %d error(s)", nb_error);
	end
	$finish;
end

endmodule
// ----- END Verilog module for counter_autocheck_top_tb -----

//----- Default net type -----
`default_nettype none

