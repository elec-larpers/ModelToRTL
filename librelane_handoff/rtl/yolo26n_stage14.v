// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 2024.10 - Revision c2ba6936ca2ed63137095fea0b630a1c66e20e63-main - Date 2026-03-21T14:46:25
// Bambu executed with: /tmp/squashfs-root/usr/bin/bambu --top-fname=yolo26n_stage14 --clock-period=10 --generate-interface=INFER /tmp/modeltortl_repo/rtl/yolo26n_stage14/yolo26n_stage14.cpp 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************


`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__constant_value(out1);
  parameter BITSIZE_out1=1,
    value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__register_SE(clock,
  reset,
  in1,
  wenable,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__register_STD(clock,
  reset,
  in1,
  wenable,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ASSIGN_UNSIGNED_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_view_convert_expr_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__UUdata_converter_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__read_cond_FU(in1,
  out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_bit_and_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 & in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_bit_ior_concat_expr_FU(in1,
  in2,
  in3,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_in3=1,
    BITSIZE_out1=1,
    OFFSET_PARAMETER=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  localparam nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire [nbit_out-1:0] tmp_in1;
  wire [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){1'b0}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){1'b0}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_bit_ior_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 | in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_eq_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_lshift_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    localparam arg2_bitsize = $clog2(PRECISION);
  `else
    localparam arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_plus_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_pointer_plus_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    LSB_PARAMETER=-1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  wire [BITSIZE_out1-1:0] in1_tmp;
  wire [BITSIZE_out1-1:0] in2_tmp;
  assign in1_tmp = in1;
  assign in2_tmp = in2;generate if (BITSIZE_out1 > LSB_PARAMETER) assign out1[BITSIZE_out1-1:LSB_PARAMETER] = (in1_tmp[BITSIZE_out1-1:LSB_PARAMETER] + in2_tmp[BITSIZE_out1-1:LSB_PARAMETER]); else assign out1 = 0; endgenerate
  generate if (LSB_PARAMETER != 0 && BITSIZE_out1 > LSB_PARAMETER) assign out1[LSB_PARAMETER-1:0] = 0; endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__ui_rshift_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    localparam arg2_bitsize = $clog2(PRECISION);
  `else
    localparam arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >> in2;
  endgenerate

endmodule

// Interface module for function: input0_bambu_artificial_ParmMgr
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module stage14__input0_bambu_artificial_ParmMgr_modgen(clock,
  reset,
  start_port,
  in1,
  in2,
  in3,
  in4,
  _input0_q0,
  _input0_q1,
  out1,
  _input0_address0,
  _input0_address1,
  _input0_ce0,
  _input0_ce1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=6, PORTSIZE_in2=2,
    BITSIZE_in3=32, PORTSIZE_in3=2,
    BITSIZE_in4=32, PORTSIZE_in4=2,
    BITSIZE_out1=32, PORTSIZE_out1=2;
  // IN
  input clock;
  input reset;
  input [1:0] start_port;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [(PORTSIZE_in4*BITSIZE_in4)+(-1):0] in4;
  input [31:0] _input0_q0;
  input [31:0] _input0_q1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [17:0] _input0_address0;
  output [17:0] _input0_address1;
  output _input0_ce0;
  output _input0_ce1;
  //T
  assign _input0_ce0 = start_port[0];
  assign _input0_ce1 = start_port[1];
  assign _input0_address0 = in4[BITSIZE_in4*0+:20] / 4;
  assign _input0_address1 = in4[BITSIZE_in4*1+:20] / 4;
  assign out1[BITSIZE_out1*0+:BITSIZE_out1] = _input0_q0;
  assign out1[BITSIZE_out1*1+:BITSIZE_out1] = _input0_q1;

endmodule

// Interface module for function: output0_bambu_artificial_ParmMgr
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module stage14__output0_bambu_artificial_ParmMgr_modgen(clock,
  reset,
  start_port,
  in1,
  in2,
  in3,
  in4,
  out1,
  _output0_address0,
  _output0_address1,
  _output0_ce0,
  _output0_ce1,
  _output0_we0,
  _output0_we1,
  _output0_d0,
  _output0_d1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=6, PORTSIZE_in2=2,
    BITSIZE_in3=32, PORTSIZE_in3=2,
    BITSIZE_in4=32, PORTSIZE_in4=2,
    BITSIZE_out1=32, PORTSIZE_out1=2;
  // IN
  input clock;
  input reset;
  input [1:0] start_port;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [(PORTSIZE_in4*BITSIZE_in4)+(-1):0] in4;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [19:0] _output0_address0;
  output [19:0] _output0_address1;
  output _output0_ce0;
  output _output0_ce1;
  output _output0_we0;
  output _output0_we1;
  output [31:0] _output0_d0;
  output [31:0] _output0_d1;
  //T
  assign _output0_ce0 = start_port[0];
  assign _output0_ce1 = start_port[1];
  assign _output0_address0 = in4[BITSIZE_in4*0+:22] / 4;
  assign _output0_address1 = in4[BITSIZE_in4*1+:22] / 4;
  assign _output0_we0 = start_port[0] & (|in1[BITSIZE_in1*0+:BITSIZE_in1]);
  assign _output0_d0 = in3[BITSIZE_in3*0+:BITSIZE_in3];
  assign _output0_we1 = start_port[1] & (|in1[BITSIZE_in1*1+:BITSIZE_in1]);
  assign _output0_d1 = in3[BITSIZE_in3*1+:BITSIZE_in3];

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__MUX_GATE(sel,
  in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for _Z15yolo26n_stage14PKfPf
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module stage14__datapath__Z15yolo26n_stage14PKfPf(clock,
  reset,
  in_port_input0,
  in_port_output0,
  _input0_q0,
  _input0_q1,
  _input0_address0,
  _input0_address1,
  _input0_ce0,
  _input0_ce1,
  _output0_address0,
  _output0_address1,
  _output0_ce0,
  _output0_ce1,
  _output0_we0,
  _output0_we1,
  _output0_d0,
  _output0_d1,
  selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776,
  selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792,
  selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794,
  selector_MUX_25_reg_0_0_0_0,
  selector_MUX_26_reg_1_0_0_0,
  selector_MUX_34_reg_5_0_0_0,
  wrenable_reg_0,
  wrenable_reg_1,
  wrenable_reg_10,
  wrenable_reg_11,
  wrenable_reg_12,
  wrenable_reg_13,
  wrenable_reg_2,
  wrenable_reg_3,
  wrenable_reg_4,
  wrenable_reg_5,
  wrenable_reg_6,
  wrenable_reg_7,
  wrenable_reg_8,
  wrenable_reg_9,
  OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570,
  OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654,
  OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659,
  OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776,
  OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792,
  OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794);
  // IN
  input clock;
  input reset;
  input [31:0] in_port_input0;
  input [31:0] in_port_output0;
  input [31:0] _input0_q0;
  input [31:0] _input0_q1;
  input selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  input selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  input selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  input selector_MUX_25_reg_0_0_0_0;
  input selector_MUX_26_reg_1_0_0_0;
  input selector_MUX_34_reg_5_0_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [17:0] _input0_address0;
  output [17:0] _input0_address1;
  output _input0_ce0;
  output _input0_ce1;
  output [19:0] _output0_address0;
  output [19:0] _output0_address1;
  output _output0_ce0;
  output _output0_ce1;
  output _output0_we0;
  output _output0_we1;
  output [31:0] _output0_d0;
  output [31:0] _output0_d1;
  output OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570;
  output OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654;
  output OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659;
  output OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  output OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  output OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  // Component and signal declarations
  wire [31:0] null_out_signal_fu__Z15yolo26n_stage14PKfPf_428532_428776_out1_1;
  wire [31:0] null_out_signal_fu__Z15yolo26n_stage14PKfPf_428532_428792_out1_0;
  wire [31:0] null_out_signal_fu__Z15yolo26n_stage14PKfPf_428532_428792_out1_1;
  wire [29:0] out_ASSIGN_UNSIGNED_FU_10_i0_fu__Z15yolo26n_stage14PKfPf_428532_428623;
  wire [27:0] out_ASSIGN_UNSIGNED_FU_13_i0_fu__Z15yolo26n_stage14PKfPf_428532_428630;
  wire [28:0] out_ASSIGN_UNSIGNED_FU_14_i0_fu__Z15yolo26n_stage14PKfPf_428532_428555;
  wire [29:0] out_ASSIGN_UNSIGNED_FU_4_i0_fu__Z15yolo26n_stage14PKfPf_428532_428557;
  wire [31:0] out_MUX_25_reg_0_0_0_0;
  wire [31:0] out_MUX_26_reg_1_0_0_0;
  wire [31:0] out_MUX_34_reg_5_0_0_0;
  wire out_UUdata_converter_FU_11_i0_fu__Z15yolo26n_stage14PKfPf_428532_428658;
  wire out_UUdata_converter_FU_15_i0_fu__Z15yolo26n_stage14PKfPf_428532_428653;
  wire out_UUdata_converter_FU_6_i0_fu__Z15yolo26n_stage14PKfPf_428532_428569;
  wire out_const_0;
  wire out_const_1;
  wire [3:0] out_const_10;
  wire [1:0] out_const_2;
  wire [2:0] out_const_3;
  wire [5:0] out_const_4;
  wire [7:0] out_const_5;
  wire [5:0] out_const_6;
  wire [6:0] out_const_7;
  wire [1:0] out_const_8;
  wire [2:0] out_const_9;
  wire [31:0] out_conv_out_const_0_1_32;
  wire [31:0] out_input0_bambu_artificial_ParmMgr_modgen_42_i0_fu__Z15yolo26n_stage14PKfPf_428532_428776;
  wire out_read_cond_FU_16_i0_fu__Z15yolo26n_stage14PKfPf_428532_428654;
  wire out_read_cond_FU_7_i0_fu__Z15yolo26n_stage14PKfPf_428532_428570;
  wire out_read_cond_FU_8_i0_fu__Z15yolo26n_stage14PKfPf_428532_428659;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [31:0] out_reg_1_reg_1;
  wire out_reg_2_reg_2;
  wire [25:0] out_reg_3_reg_3;
  wire [23:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [25:0] out_reg_7_reg_7;
  wire [2:0] out_reg_8_reg_8;
  wire [25:0] out_reg_9_reg_9;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_18_i0_fu__Z15yolo26n_stage14PKfPf_428532_428836;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_18_i1_fu__Z15yolo26n_stage14PKfPf_428532_428867;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_18_i2_fu__Z15yolo26n_stage14PKfPf_428532_428882;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_19_i0_fu__Z15yolo26n_stage14PKfPf_428532_428852;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_19_i1_fu__Z15yolo26n_stage14PKfPf_428532_428943;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_19_i2_fu__Z15yolo26n_stage14PKfPf_428532_428958;
  wire [3:0] out_ui_bit_and_expr_FU_8_0_8_20_i0_fu__Z15yolo26n_stage14PKfPf_428532_428898;
  wire [3:0] out_ui_bit_and_expr_FU_8_0_8_20_i1_fu__Z15yolo26n_stage14PKfPf_428532_428928;
  wire [28:0] out_ui_bit_ior_concat_expr_FU_21_i0_fu__Z15yolo26n_stage14PKfPf_428532_428556;
  wire [29:0] out_ui_bit_ior_concat_expr_FU_21_i1_fu__Z15yolo26n_stage14PKfPf_428532_428558;
  wire [29:0] out_ui_bit_ior_concat_expr_FU_22_i0_fu__Z15yolo26n_stage14PKfPf_428532_428561;
  wire [29:0] out_ui_bit_ior_concat_expr_FU_22_i1_fu__Z15yolo26n_stage14PKfPf_428532_428565;
  wire [27:0] out_ui_bit_ior_concat_expr_FU_22_i2_fu__Z15yolo26n_stage14PKfPf_428532_428627;
  wire [28:0] out_ui_bit_ior_concat_expr_FU_23_i0_fu__Z15yolo26n_stage14PKfPf_428532_428683;
  wire [28:0] out_ui_bit_ior_concat_expr_FU_23_i1_fu__Z15yolo26n_stage14PKfPf_428532_428693;
  wire [27:0] out_ui_bit_ior_concat_expr_FU_23_i2_fu__Z15yolo26n_stage14PKfPf_428532_428718;
  wire [27:0] out_ui_bit_ior_concat_expr_FU_23_i3_fu__Z15yolo26n_stage14PKfPf_428532_428728;
  wire [29:0] out_ui_bit_ior_expr_FU_32_0_32_24_i0_fu__Z15yolo26n_stage14PKfPf_428532_428564;
  wire out_ui_eq_expr_FU_32_0_32_25_i0_fu__Z15yolo26n_stage14PKfPf_428532_428708;
  wire out_ui_eq_expr_FU_32_0_32_26_i0_fu__Z15yolo26n_stage14PKfPf_428532_428733;
  wire out_ui_eq_expr_FU_32_0_32_27_i0_fu__Z15yolo26n_stage14PKfPf_428532_428736;
  wire [28:0] out_ui_lshift_expr_FU_32_0_32_28_i0_fu__Z15yolo26n_stage14PKfPf_428532_428680;
  wire [27:0] out_ui_lshift_expr_FU_32_0_32_28_i10_fu__Z15yolo26n_stage14PKfPf_428532_428955;
  wire [28:0] out_ui_lshift_expr_FU_32_0_32_28_i1_fu__Z15yolo26n_stage14PKfPf_428532_428690;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_28_i2_fu__Z15yolo26n_stage14PKfPf_428532_428698;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_28_i3_fu__Z15yolo26n_stage14PKfPf_428532_428700;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_28_i4_fu__Z15yolo26n_stage14PKfPf_428532_428702;
  wire [27:0] out_ui_lshift_expr_FU_32_0_32_28_i5_fu__Z15yolo26n_stage14PKfPf_428532_428715;
  wire [27:0] out_ui_lshift_expr_FU_32_0_32_28_i6_fu__Z15yolo26n_stage14PKfPf_428532_428725;
  wire [28:0] out_ui_lshift_expr_FU_32_0_32_28_i7_fu__Z15yolo26n_stage14PKfPf_428532_428815;
  wire [28:0] out_ui_lshift_expr_FU_32_0_32_28_i8_fu__Z15yolo26n_stage14PKfPf_428532_428849;
  wire [27:0] out_ui_lshift_expr_FU_32_0_32_28_i9_fu__Z15yolo26n_stage14PKfPf_428532_428940;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_29_i0_fu__Z15yolo26n_stage14PKfPf_428532_428687;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_29_i1_fu__Z15yolo26n_stage14PKfPf_428532_428696;
  wire [28:0] out_ui_lshift_expr_FU_32_0_32_29_i2_fu__Z15yolo26n_stage14PKfPf_428532_428833;
  wire [29:0] out_ui_lshift_expr_FU_32_0_32_29_i3_fu__Z15yolo26n_stage14PKfPf_428532_428864;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_30_i0_fu__Z15yolo26n_stage14PKfPf_428532_428722;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_30_i1_fu__Z15yolo26n_stage14PKfPf_428532_428731;
  wire [29:0] out_ui_lshift_expr_FU_32_0_32_30_i2_fu__Z15yolo26n_stage14PKfPf_428532_428879;
  wire [29:0] out_ui_lshift_expr_FU_32_0_32_30_i3_fu__Z15yolo26n_stage14PKfPf_428532_428895;
  wire [27:0] out_ui_lshift_expr_FU_32_0_32_30_i4_fu__Z15yolo26n_stage14PKfPf_428532_428925;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_31_i0_fu__Z15yolo26n_stage14PKfPf_428532_428909;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_32_i0_fu__Z15yolo26n_stage14PKfPf_428532_428966;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_33_i0_fu__Z15yolo26n_stage14PKfPf_428532_428595;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_33_i1_fu__Z15yolo26n_stage14PKfPf_428532_428605;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_34_i0_fu__Z15yolo26n_stage14PKfPf_428532_428906;
  wire [26:0] out_ui_plus_expr_FU_32_32_32_35_i0_fu__Z15yolo26n_stage14PKfPf_428532_428811;
  wire [25:0] out_ui_plus_expr_FU_32_32_32_35_i1_fu__Z15yolo26n_stage14PKfPf_428532_428829;
  wire [26:0] out_ui_plus_expr_FU_32_32_32_35_i2_fu__Z15yolo26n_stage14PKfPf_428532_428846;
  wire [26:0] out_ui_plus_expr_FU_32_32_32_35_i3_fu__Z15yolo26n_stage14PKfPf_428532_428861;
  wire [25:0] out_ui_plus_expr_FU_32_32_32_35_i4_fu__Z15yolo26n_stage14PKfPf_428532_428876;
  wire [25:0] out_ui_plus_expr_FU_32_32_32_35_i5_fu__Z15yolo26n_stage14PKfPf_428532_428892;
  wire [23:0] out_ui_plus_expr_FU_32_32_32_35_i6_fu__Z15yolo26n_stage14PKfPf_428532_428922;
  wire [25:0] out_ui_plus_expr_FU_32_32_32_35_i7_fu__Z15yolo26n_stage14PKfPf_428532_428937;
  wire [25:0] out_ui_plus_expr_FU_32_32_32_35_i8_fu__Z15yolo26n_stage14PKfPf_428532_428952;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_36_i0_fu__Z15yolo26n_stage14PKfPf_428532_428559;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_36_i1_fu__Z15yolo26n_stage14PKfPf_428532_428562;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_36_i2_fu__Z15yolo26n_stage14PKfPf_428532_428566;
  wire [29:0] out_ui_rshift_expr_FU_32_0_32_37_i0_fu__Z15yolo26n_stage14PKfPf_428532_428554;
  wire [28:0] out_ui_rshift_expr_FU_32_0_32_37_i1_fu__Z15yolo26n_stage14PKfPf_428532_428600;
  wire [26:0] out_ui_rshift_expr_FU_32_0_32_38_i0_fu__Z15yolo26n_stage14PKfPf_428532_428804;
  wire [26:0] out_ui_rshift_expr_FU_32_0_32_38_i1_fu__Z15yolo26n_stage14PKfPf_428532_428808;
  wire [26:0] out_ui_rshift_expr_FU_32_0_32_38_i2_fu__Z15yolo26n_stage14PKfPf_428532_428841;
  wire [26:0] out_ui_rshift_expr_FU_32_0_32_38_i3_fu__Z15yolo26n_stage14PKfPf_428532_428844;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_38_i4_fu__Z15yolo26n_stage14PKfPf_428532_428932;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_38_i5_fu__Z15yolo26n_stage14PKfPf_428532_428935;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_38_i6_fu__Z15yolo26n_stage14PKfPf_428532_428947;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_38_i7_fu__Z15yolo26n_stage14PKfPf_428532_428950;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_39_i0_fu__Z15yolo26n_stage14PKfPf_428532_428824;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_39_i1_fu__Z15yolo26n_stage14PKfPf_428532_428827;
  wire [26:0] out_ui_rshift_expr_FU_32_0_32_39_i2_fu__Z15yolo26n_stage14PKfPf_428532_428856;
  wire [26:0] out_ui_rshift_expr_FU_32_0_32_39_i3_fu__Z15yolo26n_stage14PKfPf_428532_428859;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_40_i0_fu__Z15yolo26n_stage14PKfPf_428532_428871;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_40_i1_fu__Z15yolo26n_stage14PKfPf_428532_428874;
  wire [25:0] out_ui_rshift_expr_FU_32_0_32_40_i2_fu__Z15yolo26n_stage14PKfPf_428532_428887;
  wire [23:0] out_ui_rshift_expr_FU_32_0_32_40_i3_fu__Z15yolo26n_stage14PKfPf_428532_428916;
  wire [23:0] out_ui_rshift_expr_FU_32_0_32_40_i4_fu__Z15yolo26n_stage14PKfPf_428532_428919;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_41_i0_fu__Z15yolo26n_stage14PKfPf_428532_428903;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_41_i1_fu__Z15yolo26n_stage14PKfPf_428532_428912;
  wire [2:0] out_ui_rshift_expr_FU_32_0_32_41_i2_fu__Z15yolo26n_stage14PKfPf_428532_428962;
  wire [31:0] out_ui_view_convert_expr_FU_5_i0_fu__Z15yolo26n_stage14PKfPf_428532_428797;
  wire [31:0] out_uu_conv_conn_obj_0_UUdata_converter_FU_uu_conv_0;
  
  stage14__MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_25_reg_0_0_0_0 (.out1(out_MUX_25_reg_0_0_0_0),
    .sel(selector_MUX_25_reg_0_0_0_0),
    .in1(out_ui_plus_expr_FU_32_0_32_33_i0_fu__Z15yolo26n_stage14PKfPf_428532_428595),
    .in2(out_uu_conv_conn_obj_0_UUdata_converter_FU_uu_conv_0));
  stage14__MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_26_reg_1_0_0_0 (.out1(out_MUX_26_reg_1_0_0_0),
    .sel(selector_MUX_26_reg_1_0_0_0),
    .in1(out_ui_plus_expr_FU_32_0_32_33_i1_fu__Z15yolo26n_stage14PKfPf_428532_428605),
    .in2(out_uu_conv_conn_obj_0_UUdata_converter_FU_uu_conv_0));
  stage14__MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_34_reg_5_0_0_0 (.out1(out_MUX_34_reg_5_0_0_0),
    .sel(selector_MUX_34_reg_5_0_0_0),
    .in1(out_ui_lshift_expr_FU_32_0_32_31_i0_fu__Z15yolo26n_stage14PKfPf_428532_428909),
    .in2(out_uu_conv_conn_obj_0_UUdata_converter_FU_uu_conv_0));
  stage14__UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) UUdata_converter_FU_uu_conv_0 (.out1(out_uu_conv_conn_obj_0_UUdata_converter_FU_uu_conv_0),
    .in1(out_conv_out_const_0_1_32));
  stage14__constant_value #(.BITSIZE_out1(1),
    .value(1'b0)) const_0 (.out1(out_const_0));
  stage14__constant_value #(.BITSIZE_out1(1),
    .value(1'b1)) const_1 (.out1(out_const_1));
  stage14__constant_value #(.BITSIZE_out1(4),
    .value(4'b1111)) const_10 (.out1(out_const_10));
  stage14__constant_value #(.BITSIZE_out1(2),
    .value(2'b10)) const_2 (.out1(out_const_2));
  stage14__constant_value #(.BITSIZE_out1(3),
    .value(3'b100)) const_3 (.out1(out_const_3));
  stage14__constant_value #(.BITSIZE_out1(6),
    .value(6'b100000)) const_4 (.out1(out_const_4));
  stage14__constant_value #(.BITSIZE_out1(8),
    .value(8'b10000000)) const_5 (.out1(out_const_5));
  stage14__constant_value #(.BITSIZE_out1(6),
    .value(6'b101000)) const_6 (.out1(out_const_6));
  stage14__constant_value #(.BITSIZE_out1(7),
    .value(7'b1010000)) const_7 (.out1(out_const_7));
  stage14__constant_value #(.BITSIZE_out1(2),
    .value(2'b11)) const_8 (.out1(out_const_8));
  stage14__constant_value #(.BITSIZE_out1(3),
    .value(3'b111)) const_9 (.out1(out_const_9));
  stage14__UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_const_0_1_32 (.out1(out_conv_out_const_0_1_32),
    .in1(out_const_0));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(30),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428554 (.out1(out_ui_rshift_expr_FU_32_0_32_37_i0_fu__Z15yolo26n_stage14PKfPf_428532_428554),
    .in1(out_reg_5_reg_5),
    .in2(out_const_1));
  stage14__ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(29)) fu__Z15yolo26n_stage14PKfPf_428532_428555 (.out1(out_ASSIGN_UNSIGNED_FU_14_i0_fu__Z15yolo26n_stage14PKfPf_428532_428555),
    .in1(out_ui_lshift_expr_FU_32_0_32_29_i0_fu__Z15yolo26n_stage14PKfPf_428532_428687));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(3),
    .BITSIZE_in3(2),
    .BITSIZE_out1(29),
    .OFFSET_PARAMETER(3)) fu__Z15yolo26n_stage14PKfPf_428532_428556 (.out1(out_ui_bit_ior_concat_expr_FU_21_i0_fu__Z15yolo26n_stage14PKfPf_428532_428556),
    .in1(out_ui_lshift_expr_FU_32_0_32_29_i2_fu__Z15yolo26n_stage14PKfPf_428532_428833),
    .in2(out_reg_8_reg_8),
    .in3(out_const_8));
  stage14__ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(30)) fu__Z15yolo26n_stage14PKfPf_428532_428557 (.out1(out_ASSIGN_UNSIGNED_FU_4_i0_fu__Z15yolo26n_stage14PKfPf_428532_428557),
    .in1(out_ui_lshift_expr_FU_32_0_32_29_i1_fu__Z15yolo26n_stage14PKfPf_428532_428696));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(3),
    .BITSIZE_in3(2),
    .BITSIZE_out1(30),
    .OFFSET_PARAMETER(3)) fu__Z15yolo26n_stage14PKfPf_428532_428558 (.out1(out_ui_bit_ior_concat_expr_FU_21_i1_fu__Z15yolo26n_stage14PKfPf_428532_428558),
    .in1(out_ui_lshift_expr_FU_32_0_32_29_i3_fu__Z15yolo26n_stage14PKfPf_428532_428864),
    .in2(out_ui_bit_and_expr_FU_8_0_8_18_i1_fu__Z15yolo26n_stage14PKfPf_428532_428867),
    .in3(out_const_8));
  stage14__ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu__Z15yolo26n_stage14PKfPf_428532_428559 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_36_i0_fu__Z15yolo26n_stage14PKfPf_428532_428559),
    .in1(in_port_input0),
    .in2(out_ui_lshift_expr_FU_32_0_32_28_i2_fu__Z15yolo26n_stage14PKfPf_428532_428698));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(4),
    .BITSIZE_in3(3),
    .BITSIZE_out1(30),
    .OFFSET_PARAMETER(4)) fu__Z15yolo26n_stage14PKfPf_428532_428561 (.out1(out_ui_bit_ior_concat_expr_FU_22_i0_fu__Z15yolo26n_stage14PKfPf_428532_428561),
    .in1(out_ui_lshift_expr_FU_32_0_32_30_i2_fu__Z15yolo26n_stage14PKfPf_428532_428879),
    .in2(out_ui_lshift_expr_FU_8_0_8_32_i0_fu__Z15yolo26n_stage14PKfPf_428532_428966),
    .in3(out_const_3));
  stage14__ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu__Z15yolo26n_stage14PKfPf_428532_428562 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_36_i1_fu__Z15yolo26n_stage14PKfPf_428532_428562),
    .in1(in_port_output0),
    .in2(out_ui_lshift_expr_FU_32_0_32_28_i3_fu__Z15yolo26n_stage14PKfPf_428532_428700));
  stage14__ui_bit_ior_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(30)) fu__Z15yolo26n_stage14PKfPf_428532_428564 (.out1(out_ui_bit_ior_expr_FU_32_0_32_24_i0_fu__Z15yolo26n_stage14PKfPf_428532_428564),
    .in1(out_reg_5_reg_5),
    .in2(out_const_1));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(4),
    .BITSIZE_in3(3),
    .BITSIZE_out1(30),
    .OFFSET_PARAMETER(4)) fu__Z15yolo26n_stage14PKfPf_428532_428565 (.out1(out_ui_bit_ior_concat_expr_FU_22_i1_fu__Z15yolo26n_stage14PKfPf_428532_428565),
    .in1(out_ui_lshift_expr_FU_32_0_32_30_i3_fu__Z15yolo26n_stage14PKfPf_428532_428895),
    .in2(out_ui_bit_and_expr_FU_8_0_8_20_i0_fu__Z15yolo26n_stage14PKfPf_428532_428898),
    .in3(out_const_3));
  stage14__ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu__Z15yolo26n_stage14PKfPf_428532_428566 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_36_i2_fu__Z15yolo26n_stage14PKfPf_428532_428566),
    .in1(in_port_output0),
    .in2(out_ui_lshift_expr_FU_32_0_32_28_i4_fu__Z15yolo26n_stage14PKfPf_428532_428702));
  stage14__UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428569 (.out1(out_UUdata_converter_FU_6_i0_fu__Z15yolo26n_stage14PKfPf_428532_428569),
    .in1(out_ui_eq_expr_FU_32_0_32_25_i0_fu__Z15yolo26n_stage14PKfPf_428532_428708));
  stage14__read_cond_FU #(.BITSIZE_in1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428570 (.out1(out_read_cond_FU_7_i0_fu__Z15yolo26n_stage14PKfPf_428532_428570),
    .in1(out_reg_13_reg_13));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(32)) fu__Z15yolo26n_stage14PKfPf_428532_428595 (.out1(out_ui_plus_expr_FU_32_0_32_33_i0_fu__Z15yolo26n_stage14PKfPf_428532_428595),
    .in1(out_reg_0_reg_0),
    .in2(out_const_1));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(29),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428600 (.out1(out_ui_rshift_expr_FU_32_0_32_37_i1_fu__Z15yolo26n_stage14PKfPf_428532_428600),
    .in1(out_reg_1_reg_1),
    .in2(out_const_1));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(32)) fu__Z15yolo26n_stage14PKfPf_428532_428605 (.out1(out_ui_plus_expr_FU_32_0_32_33_i1_fu__Z15yolo26n_stage14PKfPf_428532_428605),
    .in1(out_reg_1_reg_1),
    .in2(out_const_1));
  stage14__ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(30)) fu__Z15yolo26n_stage14PKfPf_428532_428623 (.out1(out_ASSIGN_UNSIGNED_FU_10_i0_fu__Z15yolo26n_stage14PKfPf_428532_428623),
    .in1(out_ui_lshift_expr_FU_32_0_32_30_i0_fu__Z15yolo26n_stage14PKfPf_428532_428722));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(4),
    .BITSIZE_in3(3),
    .BITSIZE_out1(28),
    .OFFSET_PARAMETER(4)) fu__Z15yolo26n_stage14PKfPf_428532_428627 (.out1(out_ui_bit_ior_concat_expr_FU_22_i2_fu__Z15yolo26n_stage14PKfPf_428532_428627),
    .in1(out_ui_lshift_expr_FU_32_0_32_30_i4_fu__Z15yolo26n_stage14PKfPf_428532_428925),
    .in2(out_ui_bit_and_expr_FU_8_0_8_20_i1_fu__Z15yolo26n_stage14PKfPf_428532_428928),
    .in3(out_const_3));
  stage14__ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(28)) fu__Z15yolo26n_stage14PKfPf_428532_428630 (.out1(out_ASSIGN_UNSIGNED_FU_13_i0_fu__Z15yolo26n_stage14PKfPf_428532_428630),
    .in1(out_ui_lshift_expr_FU_32_0_32_30_i1_fu__Z15yolo26n_stage14PKfPf_428532_428731));
  stage14__UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428653 (.out1(out_UUdata_converter_FU_15_i0_fu__Z15yolo26n_stage14PKfPf_428532_428653),
    .in1(out_ui_eq_expr_FU_32_0_32_26_i0_fu__Z15yolo26n_stage14PKfPf_428532_428733));
  stage14__read_cond_FU #(.BITSIZE_in1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428654 (.out1(out_read_cond_FU_16_i0_fu__Z15yolo26n_stage14PKfPf_428532_428654),
    .in1(out_reg_2_reg_2));
  stage14__UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428658 (.out1(out_UUdata_converter_FU_11_i0_fu__Z15yolo26n_stage14PKfPf_428532_428658),
    .in1(out_ui_eq_expr_FU_32_0_32_27_i0_fu__Z15yolo26n_stage14PKfPf_428532_428736));
  stage14__read_cond_FU #(.BITSIZE_in1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428659 (.out1(out_read_cond_FU_8_i0_fu__Z15yolo26n_stage14PKfPf_428532_428659),
    .in1(out_reg_6_reg_6));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(29),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428680 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i0_fu__Z15yolo26n_stage14PKfPf_428532_428680),
    .in1(out_reg_0_reg_0),
    .in2(out_const_2));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_in3(2),
    .BITSIZE_out1(29),
    .OFFSET_PARAMETER(2)) fu__Z15yolo26n_stage14PKfPf_428532_428683 (.out1(out_ui_bit_ior_concat_expr_FU_23_i0_fu__Z15yolo26n_stage14PKfPf_428532_428683),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i7_fu__Z15yolo26n_stage14PKfPf_428532_428815),
    .in2(out_ui_bit_and_expr_FU_8_0_8_19_i2_fu__Z15yolo26n_stage14PKfPf_428532_428958),
    .in3(out_const_2));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428687 (.out1(out_ui_lshift_expr_FU_32_0_32_29_i0_fu__Z15yolo26n_stage14PKfPf_428532_428687),
    .in1(out_ui_bit_ior_concat_expr_FU_23_i0_fu__Z15yolo26n_stage14PKfPf_428532_428683),
    .in2(out_const_8));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(29),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428690 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i1_fu__Z15yolo26n_stage14PKfPf_428532_428690),
    .in1(out_ui_bit_ior_concat_expr_FU_21_i0_fu__Z15yolo26n_stage14PKfPf_428532_428556),
    .in2(out_const_2));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_in3(2),
    .BITSIZE_out1(29),
    .OFFSET_PARAMETER(2)) fu__Z15yolo26n_stage14PKfPf_428532_428693 (.out1(out_ui_bit_ior_concat_expr_FU_23_i1_fu__Z15yolo26n_stage14PKfPf_428532_428693),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i8_fu__Z15yolo26n_stage14PKfPf_428532_428849),
    .in2(out_ui_bit_and_expr_FU_8_0_8_19_i0_fu__Z15yolo26n_stage14PKfPf_428532_428852),
    .in3(out_const_2));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428696 (.out1(out_ui_lshift_expr_FU_32_0_32_29_i1_fu__Z15yolo26n_stage14PKfPf_428532_428696),
    .in1(out_ui_bit_ior_concat_expr_FU_23_i1_fu__Z15yolo26n_stage14PKfPf_428532_428693),
    .in2(out_const_8));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(2),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428698 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i2_fu__Z15yolo26n_stage14PKfPf_428532_428698),
    .in1(out_ui_bit_ior_concat_expr_FU_21_i1_fu__Z15yolo26n_stage14PKfPf_428532_428558),
    .in2(out_const_2));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(2),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428700 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i3_fu__Z15yolo26n_stage14PKfPf_428532_428700),
    .in1(out_ui_bit_ior_concat_expr_FU_22_i0_fu__Z15yolo26n_stage14PKfPf_428532_428561),
    .in2(out_const_2));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(2),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428702 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i4_fu__Z15yolo26n_stage14PKfPf_428532_428702),
    .in1(out_ui_bit_ior_concat_expr_FU_22_i1_fu__Z15yolo26n_stage14PKfPf_428532_428565),
    .in2(out_const_2));
  stage14__ui_eq_expr_FU #(.BITSIZE_in1(31),
    .BITSIZE_in2(6),
    .BITSIZE_out1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428708 (.out1(out_ui_eq_expr_FU_32_0_32_25_i0_fu__Z15yolo26n_stage14PKfPf_428532_428708),
    .in1(out_ui_rshift_expr_FU_32_0_32_41_i1_fu__Z15yolo26n_stage14PKfPf_428532_428912),
    .in2(out_const_6));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_out1(28),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428715 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i5_fu__Z15yolo26n_stage14PKfPf_428532_428715),
    .in1(out_ui_bit_ior_concat_expr_FU_22_i2_fu__Z15yolo26n_stage14PKfPf_428532_428627),
    .in2(out_const_2));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_in3(2),
    .BITSIZE_out1(28),
    .OFFSET_PARAMETER(2)) fu__Z15yolo26n_stage14PKfPf_428532_428718 (.out1(out_ui_bit_ior_concat_expr_FU_23_i2_fu__Z15yolo26n_stage14PKfPf_428532_428718),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i9_fu__Z15yolo26n_stage14PKfPf_428532_428940),
    .in2(out_ui_bit_and_expr_FU_8_0_8_19_i1_fu__Z15yolo26n_stage14PKfPf_428532_428943),
    .in3(out_const_2));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(3),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428722 (.out1(out_ui_lshift_expr_FU_32_0_32_30_i0_fu__Z15yolo26n_stage14PKfPf_428532_428722),
    .in1(out_ui_bit_ior_concat_expr_FU_23_i2_fu__Z15yolo26n_stage14PKfPf_428532_428718),
    .in2(out_const_3));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(28),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428725 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i6_fu__Z15yolo26n_stage14PKfPf_428532_428725),
    .in1(out_reg_0_reg_0),
    .in2(out_const_2));
  stage14__ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_in3(2),
    .BITSIZE_out1(28),
    .OFFSET_PARAMETER(2)) fu__Z15yolo26n_stage14PKfPf_428532_428728 (.out1(out_ui_bit_ior_concat_expr_FU_23_i3_fu__Z15yolo26n_stage14PKfPf_428532_428728),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i10_fu__Z15yolo26n_stage14PKfPf_428532_428955),
    .in2(out_ui_bit_and_expr_FU_8_0_8_19_i2_fu__Z15yolo26n_stage14PKfPf_428532_428958),
    .in3(out_const_2));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(3),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428731 (.out1(out_ui_lshift_expr_FU_32_0_32_30_i1_fu__Z15yolo26n_stage14PKfPf_428532_428731),
    .in1(out_ui_bit_ior_concat_expr_FU_23_i3_fu__Z15yolo26n_stage14PKfPf_428532_428728),
    .in2(out_const_3));
  stage14__ui_eq_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(8),
    .BITSIZE_out1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428733 (.out1(out_ui_eq_expr_FU_32_0_32_26_i0_fu__Z15yolo26n_stage14PKfPf_428532_428733),
    .in1(out_ui_plus_expr_FU_32_0_32_33_i0_fu__Z15yolo26n_stage14PKfPf_428532_428595),
    .in2(out_const_5));
  stage14__ui_eq_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(7),
    .BITSIZE_out1(1)) fu__Z15yolo26n_stage14PKfPf_428532_428736 (.out1(out_ui_eq_expr_FU_32_0_32_27_i0_fu__Z15yolo26n_stage14PKfPf_428532_428736),
    .in1(out_ui_plus_expr_FU_32_0_32_33_i1_fu__Z15yolo26n_stage14PKfPf_428532_428605),
    .in2(out_const_7));
  stage14__input0_bambu_artificial_ParmMgr_modgen #(.BITSIZE_in1(1),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(6),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(32),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(32),
    .PORTSIZE_in4(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2)) fu__Z15yolo26n_stage14PKfPf_428532_428776 (.out1({null_out_signal_fu__Z15yolo26n_stage14PKfPf_428532_428776_out1_1,
      out_input0_bambu_artificial_ParmMgr_modgen_42_i0_fu__Z15yolo26n_stage14PKfPf_428532_428776}),
    ._input0_address0(_input0_address0),
    ._input0_address1(_input0_address1),
    ._input0_ce0(_input0_ce0),
    ._input0_ce1(_input0_ce1),
    .clock(clock),
    .reset(reset),
    .start_port({1'b0,
      selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776}),
    .in1({1'b0,
      out_const_0}),
    .in2({6'b000000,
      out_const_4}),
    .in3({32'b00000000000000000000000000000000,
      out_conv_out_const_0_1_32}),
    .in4({32'b00000000000000000000000000000000,
      out_reg_10_reg_10}),
    ._input0_q0(_input0_q0),
    ._input0_q1(_input0_q1));
  stage14__output0_bambu_artificial_ParmMgr_modgen #(.BITSIZE_in1(1),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(6),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(32),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(32),
    .PORTSIZE_in4(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2)) fu__Z15yolo26n_stage14PKfPf_428532_428792 (.out1({null_out_signal_fu__Z15yolo26n_stage14PKfPf_428532_428792_out1_1,
      null_out_signal_fu__Z15yolo26n_stage14PKfPf_428532_428792_out1_0}),
    ._output0_address0(_output0_address0),
    ._output0_address1(_output0_address1),
    ._output0_ce0(_output0_ce0),
    ._output0_ce1(_output0_ce1),
    ._output0_we0(_output0_we0),
    ._output0_we1(_output0_we1),
    ._output0_d0(_output0_d0),
    ._output0_d1(_output0_d1),
    .clock(clock),
    .reset(reset),
    .start_port({selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794,
      selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792}),
    .in1({out_const_1,
      out_const_1}),
    .in2({out_const_4,
      out_const_4}),
    .in3({out_ui_view_convert_expr_FU_5_i0_fu__Z15yolo26n_stage14PKfPf_428532_428797,
      out_ui_view_convert_expr_FU_5_i0_fu__Z15yolo26n_stage14PKfPf_428532_428797}),
    .in4({out_reg_12_reg_12,
      out_reg_11_reg_11}));
  stage14__ui_view_convert_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu__Z15yolo26n_stage14PKfPf_428532_428797 (.out1(out_ui_view_convert_expr_FU_5_i0_fu__Z15yolo26n_stage14PKfPf_428532_428797),
    .in1(out_input0_bambu_artificial_ParmMgr_modgen_42_i0_fu__Z15yolo26n_stage14PKfPf_428532_428776));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(27),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428804 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i0_fu__Z15yolo26n_stage14PKfPf_428532_428804),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i0_fu__Z15yolo26n_stage14PKfPf_428532_428680),
    .in2(out_const_2));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(27),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428808 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i1_fu__Z15yolo26n_stage14PKfPf_428532_428808),
    .in1(out_reg_0_reg_0),
    .in2(out_const_2));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(27),
    .BITSIZE_in2(27),
    .BITSIZE_out1(27)) fu__Z15yolo26n_stage14PKfPf_428532_428811 (.out1(out_ui_plus_expr_FU_32_32_32_35_i0_fu__Z15yolo26n_stage14PKfPf_428532_428811),
    .in1(out_ui_rshift_expr_FU_32_0_32_38_i0_fu__Z15yolo26n_stage14PKfPf_428532_428804),
    .in2(out_ui_rshift_expr_FU_32_0_32_38_i1_fu__Z15yolo26n_stage14PKfPf_428532_428808));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(27),
    .BITSIZE_in2(2),
    .BITSIZE_out1(29),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428815 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i7_fu__Z15yolo26n_stage14PKfPf_428532_428815),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i0_fu__Z15yolo26n_stage14PKfPf_428532_428811),
    .in2(out_const_2));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428824 (.out1(out_ui_rshift_expr_FU_32_0_32_39_i0_fu__Z15yolo26n_stage14PKfPf_428532_428824),
    .in1(out_ui_rshift_expr_FU_32_0_32_37_i1_fu__Z15yolo26n_stage14PKfPf_428532_428600),
    .in2(out_const_8));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428827 (.out1(out_ui_rshift_expr_FU_32_0_32_39_i1_fu__Z15yolo26n_stage14PKfPf_428532_428827),
    .in1(out_ASSIGN_UNSIGNED_FU_14_i0_fu__Z15yolo26n_stage14PKfPf_428532_428555),
    .in2(out_const_8));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(26),
    .BITSIZE_out1(26)) fu__Z15yolo26n_stage14PKfPf_428532_428829 (.out1(out_ui_plus_expr_FU_32_32_32_35_i1_fu__Z15yolo26n_stage14PKfPf_428532_428829),
    .in1(out_reg_7_reg_7),
    .in2(out_reg_3_reg_3));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(2),
    .BITSIZE_out1(29),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428833 (.out1(out_ui_lshift_expr_FU_32_0_32_29_i2_fu__Z15yolo26n_stage14PKfPf_428532_428833),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i1_fu__Z15yolo26n_stage14PKfPf_428532_428829),
    .in2(out_const_8));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(3),
    .BITSIZE_out1(3)) fu__Z15yolo26n_stage14PKfPf_428532_428836 (.out1(out_ui_bit_and_expr_FU_8_0_8_18_i0_fu__Z15yolo26n_stage14PKfPf_428532_428836),
    .in1(out_ui_rshift_expr_FU_32_0_32_37_i1_fu__Z15yolo26n_stage14PKfPf_428532_428600),
    .in2(out_const_9));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(27),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428841 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i2_fu__Z15yolo26n_stage14PKfPf_428532_428841),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i1_fu__Z15yolo26n_stage14PKfPf_428532_428690),
    .in2(out_const_2));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(27),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428844 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i3_fu__Z15yolo26n_stage14PKfPf_428532_428844),
    .in1(out_ui_bit_ior_concat_expr_FU_21_i0_fu__Z15yolo26n_stage14PKfPf_428532_428556),
    .in2(out_const_2));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(27),
    .BITSIZE_in2(27),
    .BITSIZE_out1(27)) fu__Z15yolo26n_stage14PKfPf_428532_428846 (.out1(out_ui_plus_expr_FU_32_32_32_35_i2_fu__Z15yolo26n_stage14PKfPf_428532_428846),
    .in1(out_ui_rshift_expr_FU_32_0_32_38_i2_fu__Z15yolo26n_stage14PKfPf_428532_428841),
    .in2(out_ui_rshift_expr_FU_32_0_32_38_i3_fu__Z15yolo26n_stage14PKfPf_428532_428844));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(27),
    .BITSIZE_in2(2),
    .BITSIZE_out1(29),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428849 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i8_fu__Z15yolo26n_stage14PKfPf_428532_428849),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i2_fu__Z15yolo26n_stage14PKfPf_428532_428846),
    .in2(out_const_2));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(29),
    .BITSIZE_in2(2),
    .BITSIZE_out1(2)) fu__Z15yolo26n_stage14PKfPf_428532_428852 (.out1(out_ui_bit_and_expr_FU_8_0_8_19_i0_fu__Z15yolo26n_stage14PKfPf_428532_428852),
    .in1(out_ui_bit_ior_concat_expr_FU_21_i0_fu__Z15yolo26n_stage14PKfPf_428532_428556),
    .in2(out_const_8));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(2),
    .BITSIZE_out1(27),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428856 (.out1(out_ui_rshift_expr_FU_32_0_32_39_i2_fu__Z15yolo26n_stage14PKfPf_428532_428856),
    .in1(out_ui_rshift_expr_FU_32_0_32_37_i0_fu__Z15yolo26n_stage14PKfPf_428532_428554),
    .in2(out_const_8));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(2),
    .BITSIZE_out1(27),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428859 (.out1(out_ui_rshift_expr_FU_32_0_32_39_i3_fu__Z15yolo26n_stage14PKfPf_428532_428859),
    .in1(out_ASSIGN_UNSIGNED_FU_4_i0_fu__Z15yolo26n_stage14PKfPf_428532_428557),
    .in2(out_const_8));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(27),
    .BITSIZE_in2(27),
    .BITSIZE_out1(27)) fu__Z15yolo26n_stage14PKfPf_428532_428861 (.out1(out_ui_plus_expr_FU_32_32_32_35_i3_fu__Z15yolo26n_stage14PKfPf_428532_428861),
    .in1(out_ui_rshift_expr_FU_32_0_32_39_i2_fu__Z15yolo26n_stage14PKfPf_428532_428856),
    .in2(out_ui_rshift_expr_FU_32_0_32_39_i3_fu__Z15yolo26n_stage14PKfPf_428532_428859));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(27),
    .BITSIZE_in2(2),
    .BITSIZE_out1(30),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428864 (.out1(out_ui_lshift_expr_FU_32_0_32_29_i3_fu__Z15yolo26n_stage14PKfPf_428532_428864),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i3_fu__Z15yolo26n_stage14PKfPf_428532_428861),
    .in2(out_const_8));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(3),
    .BITSIZE_out1(3)) fu__Z15yolo26n_stage14PKfPf_428532_428867 (.out1(out_ui_bit_and_expr_FU_8_0_8_18_i1_fu__Z15yolo26n_stage14PKfPf_428532_428867),
    .in1(out_ui_rshift_expr_FU_32_0_32_37_i0_fu__Z15yolo26n_stage14PKfPf_428532_428554),
    .in2(out_const_9));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(3),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428871 (.out1(out_ui_rshift_expr_FU_32_0_32_40_i0_fu__Z15yolo26n_stage14PKfPf_428532_428871),
    .in1(out_reg_5_reg_5),
    .in2(out_const_3));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(3),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428874 (.out1(out_ui_rshift_expr_FU_32_0_32_40_i1_fu__Z15yolo26n_stage14PKfPf_428532_428874),
    .in1(out_ASSIGN_UNSIGNED_FU_10_i0_fu__Z15yolo26n_stage14PKfPf_428532_428623),
    .in2(out_const_3));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(26),
    .BITSIZE_out1(26)) fu__Z15yolo26n_stage14PKfPf_428532_428876 (.out1(out_ui_plus_expr_FU_32_32_32_35_i4_fu__Z15yolo26n_stage14PKfPf_428532_428876),
    .in1(out_ui_rshift_expr_FU_32_0_32_40_i0_fu__Z15yolo26n_stage14PKfPf_428532_428871),
    .in2(out_reg_9_reg_9));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(3),
    .BITSIZE_out1(30),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428879 (.out1(out_ui_lshift_expr_FU_32_0_32_30_i2_fu__Z15yolo26n_stage14PKfPf_428532_428879),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i4_fu__Z15yolo26n_stage14PKfPf_428532_428876),
    .in2(out_const_3));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(3),
    .BITSIZE_in2(3),
    .BITSIZE_out1(3)) fu__Z15yolo26n_stage14PKfPf_428532_428882 (.out1(out_ui_bit_and_expr_FU_8_0_8_18_i2_fu__Z15yolo26n_stage14PKfPf_428532_428882),
    .in1(out_ui_rshift_expr_FU_32_0_32_41_i2_fu__Z15yolo26n_stage14PKfPf_428532_428962),
    .in2(out_const_9));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(3),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428887 (.out1(out_ui_rshift_expr_FU_32_0_32_40_i2_fu__Z15yolo26n_stage14PKfPf_428532_428887),
    .in1(out_ui_bit_ior_expr_FU_32_0_32_24_i0_fu__Z15yolo26n_stage14PKfPf_428532_428564),
    .in2(out_const_3));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(26),
    .BITSIZE_out1(26)) fu__Z15yolo26n_stage14PKfPf_428532_428892 (.out1(out_ui_plus_expr_FU_32_32_32_35_i5_fu__Z15yolo26n_stage14PKfPf_428532_428892),
    .in1(out_ui_rshift_expr_FU_32_0_32_40_i2_fu__Z15yolo26n_stage14PKfPf_428532_428887),
    .in2(out_reg_9_reg_9));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(3),
    .BITSIZE_out1(30),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428895 (.out1(out_ui_lshift_expr_FU_32_0_32_30_i3_fu__Z15yolo26n_stage14PKfPf_428532_428895),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i5_fu__Z15yolo26n_stage14PKfPf_428532_428892),
    .in2(out_const_3));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(30),
    .BITSIZE_in2(4),
    .BITSIZE_out1(4)) fu__Z15yolo26n_stage14PKfPf_428532_428898 (.out1(out_ui_bit_and_expr_FU_8_0_8_20_i0_fu__Z15yolo26n_stage14PKfPf_428532_428898),
    .in1(out_ui_bit_ior_expr_FU_32_0_32_24_i0_fu__Z15yolo26n_stage14PKfPf_428532_428564),
    .in2(out_const_10));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(31),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428903 (.out1(out_ui_rshift_expr_FU_32_0_32_41_i0_fu__Z15yolo26n_stage14PKfPf_428532_428903),
    .in1(out_reg_5_reg_5),
    .in2(out_const_1));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(31),
    .BITSIZE_in2(1),
    .BITSIZE_out1(31)) fu__Z15yolo26n_stage14PKfPf_428532_428906 (.out1(out_ui_plus_expr_FU_32_0_32_34_i0_fu__Z15yolo26n_stage14PKfPf_428532_428906),
    .in1(out_ui_rshift_expr_FU_32_0_32_41_i0_fu__Z15yolo26n_stage14PKfPf_428532_428903),
    .in2(out_const_1));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(31),
    .BITSIZE_in2(1),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428909 (.out1(out_ui_lshift_expr_FU_32_0_32_31_i0_fu__Z15yolo26n_stage14PKfPf_428532_428909),
    .in1(out_ui_plus_expr_FU_32_0_32_34_i0_fu__Z15yolo26n_stage14PKfPf_428532_428906),
    .in2(out_const_1));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(31),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428912 (.out1(out_ui_rshift_expr_FU_32_0_32_41_i1_fu__Z15yolo26n_stage14PKfPf_428532_428912),
    .in1(out_ui_lshift_expr_FU_32_0_32_31_i0_fu__Z15yolo26n_stage14PKfPf_428532_428909),
    .in2(out_const_1));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(3),
    .BITSIZE_out1(24),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428916 (.out1(out_ui_rshift_expr_FU_32_0_32_40_i3_fu__Z15yolo26n_stage14PKfPf_428532_428916),
    .in1(out_reg_1_reg_1),
    .in2(out_const_3));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(3),
    .BITSIZE_out1(24),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428919 (.out1(out_ui_rshift_expr_FU_32_0_32_40_i4_fu__Z15yolo26n_stage14PKfPf_428532_428919),
    .in1(out_ASSIGN_UNSIGNED_FU_13_i0_fu__Z15yolo26n_stage14PKfPf_428532_428630),
    .in2(out_const_3));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(24),
    .BITSIZE_in2(24),
    .BITSIZE_out1(24)) fu__Z15yolo26n_stage14PKfPf_428532_428922 (.out1(out_ui_plus_expr_FU_32_32_32_35_i6_fu__Z15yolo26n_stage14PKfPf_428532_428922),
    .in1(out_ui_rshift_expr_FU_32_0_32_40_i3_fu__Z15yolo26n_stage14PKfPf_428532_428916),
    .in2(out_reg_4_reg_4));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(24),
    .BITSIZE_in2(3),
    .BITSIZE_out1(28),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428925 (.out1(out_ui_lshift_expr_FU_32_0_32_30_i4_fu__Z15yolo26n_stage14PKfPf_428532_428925),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i6_fu__Z15yolo26n_stage14PKfPf_428532_428922),
    .in2(out_const_3));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(4),
    .BITSIZE_out1(4)) fu__Z15yolo26n_stage14PKfPf_428532_428928 (.out1(out_ui_bit_and_expr_FU_8_0_8_20_i1_fu__Z15yolo26n_stage14PKfPf_428532_428928),
    .in1(out_reg_1_reg_1),
    .in2(out_const_10));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428932 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i4_fu__Z15yolo26n_stage14PKfPf_428532_428932),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i5_fu__Z15yolo26n_stage14PKfPf_428532_428715),
    .in2(out_const_2));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428935 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i5_fu__Z15yolo26n_stage14PKfPf_428532_428935),
    .in1(out_ui_bit_ior_concat_expr_FU_22_i2_fu__Z15yolo26n_stage14PKfPf_428532_428627),
    .in2(out_const_2));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(26),
    .BITSIZE_out1(26)) fu__Z15yolo26n_stage14PKfPf_428532_428937 (.out1(out_ui_plus_expr_FU_32_32_32_35_i7_fu__Z15yolo26n_stage14PKfPf_428532_428937),
    .in1(out_ui_rshift_expr_FU_32_0_32_38_i4_fu__Z15yolo26n_stage14PKfPf_428532_428932),
    .in2(out_ui_rshift_expr_FU_32_0_32_38_i5_fu__Z15yolo26n_stage14PKfPf_428532_428935));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(2),
    .BITSIZE_out1(28),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428940 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i9_fu__Z15yolo26n_stage14PKfPf_428532_428940),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i7_fu__Z15yolo26n_stage14PKfPf_428532_428937),
    .in2(out_const_2));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_out1(2)) fu__Z15yolo26n_stage14PKfPf_428532_428943 (.out1(out_ui_bit_and_expr_FU_8_0_8_19_i1_fu__Z15yolo26n_stage14PKfPf_428532_428943),
    .in1(out_ui_bit_ior_concat_expr_FU_22_i2_fu__Z15yolo26n_stage14PKfPf_428532_428627),
    .in2(out_const_8));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(28),
    .BITSIZE_in2(2),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428947 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i6_fu__Z15yolo26n_stage14PKfPf_428532_428947),
    .in1(out_ui_lshift_expr_FU_32_0_32_28_i6_fu__Z15yolo26n_stage14PKfPf_428532_428725),
    .in2(out_const_2));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(26),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428950 (.out1(out_ui_rshift_expr_FU_32_0_32_38_i7_fu__Z15yolo26n_stage14PKfPf_428532_428950),
    .in1(out_reg_0_reg_0),
    .in2(out_const_2));
  stage14__ui_plus_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(26),
    .BITSIZE_out1(26)) fu__Z15yolo26n_stage14PKfPf_428532_428952 (.out1(out_ui_plus_expr_FU_32_32_32_35_i8_fu__Z15yolo26n_stage14PKfPf_428532_428952),
    .in1(out_ui_rshift_expr_FU_32_0_32_38_i6_fu__Z15yolo26n_stage14PKfPf_428532_428947),
    .in2(out_ui_rshift_expr_FU_32_0_32_38_i7_fu__Z15yolo26n_stage14PKfPf_428532_428950));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(2),
    .BITSIZE_out1(28),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428955 (.out1(out_ui_lshift_expr_FU_32_0_32_28_i10_fu__Z15yolo26n_stage14PKfPf_428532_428955),
    .in1(out_ui_plus_expr_FU_32_32_32_35_i8_fu__Z15yolo26n_stage14PKfPf_428532_428952),
    .in2(out_const_2));
  stage14__ui_bit_and_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(2)) fu__Z15yolo26n_stage14PKfPf_428532_428958 (.out1(out_ui_bit_and_expr_FU_8_0_8_19_i2_fu__Z15yolo26n_stage14PKfPf_428532_428958),
    .in1(out_reg_0_reg_0),
    .in2(out_const_8));
  stage14__ui_rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(3),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428962 (.out1(out_ui_rshift_expr_FU_32_0_32_41_i2_fu__Z15yolo26n_stage14PKfPf_428532_428962),
    .in1(out_reg_5_reg_5),
    .in2(out_const_1));
  stage14__ui_lshift_expr_FU #(.BITSIZE_in1(3),
    .BITSIZE_in2(1),
    .BITSIZE_out1(4),
    .PRECISION(32)) fu__Z15yolo26n_stage14PKfPf_428532_428966 (.out1(out_ui_lshift_expr_FU_8_0_8_32_i0_fu__Z15yolo26n_stage14PKfPf_428532_428966),
    .in1(out_ui_bit_and_expr_FU_8_0_8_18_i2_fu__Z15yolo26n_stage14PKfPf_428532_428882),
    .in2(out_const_1));
  stage14__register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0),
    .clock(clock),
    .reset(reset),
    .in1(out_MUX_25_reg_0_0_0_0),
    .wenable(wrenable_reg_0));
  stage14__register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1),
    .clock(clock),
    .reset(reset),
    .in1(out_MUX_26_reg_1_0_0_0),
    .wenable(wrenable_reg_1));
  stage14__register_STD #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_32_32_32_36_i0_fu__Z15yolo26n_stage14PKfPf_428532_428559),
    .wenable(wrenable_reg_10));
  stage14__register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_32_32_32_36_i1_fu__Z15yolo26n_stage14PKfPf_428532_428562),
    .wenable(wrenable_reg_11));
  stage14__register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_32_32_32_36_i2_fu__Z15yolo26n_stage14PKfPf_428532_428566),
    .wenable(wrenable_reg_12));
  stage14__register_SE #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13),
    .clock(clock),
    .reset(reset),
    .in1(out_UUdata_converter_FU_6_i0_fu__Z15yolo26n_stage14PKfPf_428532_428569),
    .wenable(wrenable_reg_13));
  stage14__register_SE #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) reg_2 (.out1(out_reg_2_reg_2),
    .clock(clock),
    .reset(reset),
    .in1(out_UUdata_converter_FU_15_i0_fu__Z15yolo26n_stage14PKfPf_428532_428653),
    .wenable(wrenable_reg_2));
  stage14__register_SE #(.BITSIZE_in1(26),
    .BITSIZE_out1(26)) reg_3 (.out1(out_reg_3_reg_3),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_rshift_expr_FU_32_0_32_39_i1_fu__Z15yolo26n_stage14PKfPf_428532_428827),
    .wenable(wrenable_reg_3));
  stage14__register_SE #(.BITSIZE_in1(24),
    .BITSIZE_out1(24)) reg_4 (.out1(out_reg_4_reg_4),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_rshift_expr_FU_32_0_32_40_i4_fu__Z15yolo26n_stage14PKfPf_428532_428919),
    .wenable(wrenable_reg_4));
  stage14__register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5),
    .clock(clock),
    .reset(reset),
    .in1(out_MUX_34_reg_5_0_0_0),
    .wenable(wrenable_reg_5));
  stage14__register_SE #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6),
    .clock(clock),
    .reset(reset),
    .in1(out_UUdata_converter_FU_11_i0_fu__Z15yolo26n_stage14PKfPf_428532_428658),
    .wenable(wrenable_reg_6));
  stage14__register_SE #(.BITSIZE_in1(26),
    .BITSIZE_out1(26)) reg_7 (.out1(out_reg_7_reg_7),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_rshift_expr_FU_32_0_32_39_i0_fu__Z15yolo26n_stage14PKfPf_428532_428824),
    .wenable(wrenable_reg_7));
  stage14__register_SE #(.BITSIZE_in1(3),
    .BITSIZE_out1(3)) reg_8 (.out1(out_reg_8_reg_8),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_bit_and_expr_FU_8_0_8_18_i0_fu__Z15yolo26n_stage14PKfPf_428532_428836),
    .wenable(wrenable_reg_8));
  stage14__register_SE #(.BITSIZE_in1(26),
    .BITSIZE_out1(26)) reg_9 (.out1(out_reg_9_reg_9),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_rshift_expr_FU_32_0_32_40_i1_fu__Z15yolo26n_stage14PKfPf_428532_428874),
    .wenable(wrenable_reg_9));
  // io-signal post fix
  assign OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570 = out_read_cond_FU_7_i0_fu__Z15yolo26n_stage14PKfPf_428532_428570;
  assign OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654 = out_read_cond_FU_16_i0_fu__Z15yolo26n_stage14PKfPf_428532_428654;
  assign OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659 = out_read_cond_FU_8_i0_fu__Z15yolo26n_stage14PKfPf_428532_428659;

endmodule

// FSM based controller description for _Z15yolo26n_stage14PKfPf
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module stage14__controller__Z15yolo26n_stage14PKfPf(done_port,
  selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776,
  selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792,
  selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794,
  selector_MUX_25_reg_0_0_0_0,
  selector_MUX_26_reg_1_0_0_0,
  selector_MUX_34_reg_5_0_0_0,
  wrenable_reg_0,
  wrenable_reg_1,
  wrenable_reg_10,
  wrenable_reg_11,
  wrenable_reg_12,
  wrenable_reg_13,
  wrenable_reg_2,
  wrenable_reg_3,
  wrenable_reg_4,
  wrenable_reg_5,
  wrenable_reg_6,
  wrenable_reg_7,
  wrenable_reg_8,
  wrenable_reg_9,
  OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570,
  OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654,
  OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659,
  OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776,
  OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792,
  OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794,
  clock,
  reset,
  start_port);
  // IN
  input OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570;
  input OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654;
  input OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659;
  input OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  input OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  input OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  output selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  output selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  output selector_MUX_25_reg_0_0_0_0;
  output selector_MUX_26_reg_1_0_0_0;
  output selector_MUX_34_reg_5_0_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [8:0] S_5 = 9'b000100000,
    S_4 = 9'b000010000,
    S_3 = 9'b000001000,
    S_0 = 9'b000000001,
    S_1 = 9'b000000010,
    S_2 = 9'b000000100,
    S_7 = 9'b010000000,
    S_6 = 9'b001000000,
    S_8 = 9'b100000000;
  reg [8:0] _present_state=S_5, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  reg selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  reg selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  reg selector_MUX_25_reg_0_0_0_0;
  reg selector_MUX_26_reg_1_0_0_0;
  reg selector_MUX_34_reg_5_0_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_5;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776 = 1'b0;
    selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792 = 1'b0;
    selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794 = 1'b0;
    selector_MUX_25_reg_0_0_0_0 = 1'b0;
    selector_MUX_26_reg_1_0_0_0 = 1'b0;
    selector_MUX_34_reg_5_0_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_5 :
        if(start_port == 1'b1)
        begin
          wrenable_reg_0 = 1'b1;
          _next_state = S_4;
        end
        else
        begin
          _next_state = S_5;
        end
      S_4 :
        begin
          selector_MUX_25_reg_0_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_26_reg_1_0_0_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_0;
        end
      S_0 :
        begin
          selector_MUX_34_reg_5_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_5 = 1'b1;
          _next_state = S_1;
        end
      S_1 :
        begin
          selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792 = 1'b1;
          selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794 = 1'b1;
          if (OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570 == 1'b1)
            begin
              _next_state = S_7;
            end
          else
            begin
              _next_state = S_0;
            end
        end
      S_7 :
        begin
          if (OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_3;
            end
        end
      S_6 :
        begin
          if (OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654 == 1'b1)
            begin
              _next_state = S_8;
              done_port = 1'b1;
            end
          else
            begin
              _next_state = S_4;
            end
        end
      S_8 :
        begin
          _next_state = S_5;
        end
      default :
        begin
          _next_state = S_5;
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2024 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module stage14__flipflop_AR(clock,
  reset,
  in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock or negedge reset)
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for _Z15yolo26n_stage14PKfPf
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module stage14____Z15yolo26n_stage14PKfPf(clock,
  reset,
  start_port,
  done_port,
  input0,
  output0,
  _input0_q0,
  _input0_q1,
  _input0_address0,
  _input0_address1,
  _input0_ce0,
  _input0_ce1,
  _output0_address0,
  _output0_address1,
  _output0_ce0,
  _output0_ce1,
  _output0_we0,
  _output0_we1,
  _output0_d0,
  _output0_d1);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] input0;
  input [31:0] output0;
  input [31:0] _input0_q0;
  input [31:0] _input0_q1;
  // OUT
  output done_port;
  output [17:0] _input0_address0;
  output [17:0] _input0_address1;
  output _input0_ce0;
  output _input0_ce1;
  output [19:0] _output0_address0;
  output [19:0] _output0_address1;
  output _output0_ce0;
  output _output0_ce1;
  output _output0_we0;
  output _output0_we1;
  output [31:0] _output0_d0;
  output [31:0] _output0_d1;
  // Component and signal declarations
  wire OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570;
  wire OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654;
  wire OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659;
  wire OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  wire OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  wire OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776;
  wire selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792;
  wire selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794;
  wire selector_MUX_25_reg_0_0_0_0;
  wire selector_MUX_26_reg_1_0_0_0;
  wire selector_MUX_34_reg_5_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  stage14__controller__Z15yolo26n_stage14PKfPf Controller_i (.done_port(done_delayed_REG_signal_in),
    .selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776(selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776),
    .selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792(selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792),
    .selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794(selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794),
    .selector_MUX_25_reg_0_0_0_0(selector_MUX_25_reg_0_0_0_0),
    .selector_MUX_26_reg_1_0_0_0(selector_MUX_26_reg_1_0_0_0),
    .selector_MUX_34_reg_5_0_0_0(selector_MUX_34_reg_5_0_0_0),
    .wrenable_reg_0(wrenable_reg_0),
    .wrenable_reg_1(wrenable_reg_1),
    .wrenable_reg_10(wrenable_reg_10),
    .wrenable_reg_11(wrenable_reg_11),
    .wrenable_reg_12(wrenable_reg_12),
    .wrenable_reg_13(wrenable_reg_13),
    .wrenable_reg_2(wrenable_reg_2),
    .wrenable_reg_3(wrenable_reg_3),
    .wrenable_reg_4(wrenable_reg_4),
    .wrenable_reg_5(wrenable_reg_5),
    .wrenable_reg_6(wrenable_reg_6),
    .wrenable_reg_7(wrenable_reg_7),
    .wrenable_reg_8(wrenable_reg_8),
    .wrenable_reg_9(wrenable_reg_9),
    .OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570(OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570),
    .OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654(OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654),
    .OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659(OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659),
    .OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776(OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776),
    .OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792(OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792),
    .OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794(OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794),
    .clock(clock),
    .reset(reset),
    .start_port(start_port));
  stage14__datapath__Z15yolo26n_stage14PKfPf Datapath_i (._input0_address0(_input0_address0),
    ._input0_address1(_input0_address1),
    ._input0_ce0(_input0_ce0),
    ._input0_ce1(_input0_ce1),
    ._output0_address0(_output0_address0),
    ._output0_address1(_output0_address1),
    ._output0_ce0(_output0_ce0),
    ._output0_ce1(_output0_ce1),
    ._output0_we0(_output0_we0),
    ._output0_we1(_output0_we1),
    ._output0_d0(_output0_d0),
    ._output0_d1(_output0_d1),
    .OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570(OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428570),
    .OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654(OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428654),
    .OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659(OUT_CONDITION__Z15yolo26n_stage14PKfPf_428532_428659),
    .OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776(OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776),
    .OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792(OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792),
    .OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794(OUT_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794),
    .clock(clock),
    .reset(reset),
    .in_port_input0(input0),
    .in_port_output0(output0),
    ._input0_q0(_input0_q0),
    ._input0_q1(_input0_q1),
    .selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776(selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428776),
    .selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792(selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428792),
    .selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794(selector_IN_UNBOUNDED__Z15yolo26n_stage14PKfPf_428532_428794),
    .selector_MUX_25_reg_0_0_0_0(selector_MUX_25_reg_0_0_0_0),
    .selector_MUX_26_reg_1_0_0_0(selector_MUX_26_reg_1_0_0_0),
    .selector_MUX_34_reg_5_0_0_0(selector_MUX_34_reg_5_0_0_0),
    .wrenable_reg_0(wrenable_reg_0),
    .wrenable_reg_1(wrenable_reg_1),
    .wrenable_reg_10(wrenable_reg_10),
    .wrenable_reg_11(wrenable_reg_11),
    .wrenable_reg_12(wrenable_reg_12),
    .wrenable_reg_13(wrenable_reg_13),
    .wrenable_reg_2(wrenable_reg_2),
    .wrenable_reg_3(wrenable_reg_3),
    .wrenable_reg_4(wrenable_reg_4),
    .wrenable_reg_5(wrenable_reg_5),
    .wrenable_reg_6(wrenable_reg_6),
    .wrenable_reg_7(wrenable_reg_7),
    .wrenable_reg_8(wrenable_reg_8),
    .wrenable_reg_9(wrenable_reg_9));
  stage14__flipflop_AR #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out),
    .clock(clock),
    .reset(reset),
    .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: _Z15yolo26n_stage14PKfPf
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _Z15yolo26n_stage14PKfPf(clock,
  reset,
  start_port,
  input0_q0,
  input0_q1,
  done_port,
  input0_address0,
  input0_address1,
  input0_ce0,
  input0_ce1,
  output0_address0,
  output0_address1,
  output0_ce0,
  output0_ce1,
  output0_we0,
  output0_we1,
  output0_d0,
  output0_d1);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] input0_q0;
  input [31:0] input0_q1;
  // OUT
  output done_port;
  output [17:0] input0_address0;
  output [17:0] input0_address1;
  output input0_ce0;
  output input0_ce1;
  output [19:0] output0_address0;
  output [19:0] output0_address1;
  output output0_ce0;
  output output0_ce1;
  output output0_we0;
  output output0_we1;
  output [31:0] output0_d0;
  output [31:0] output0_d1;
  // Component and signal declarations
  
  stage14____Z15yolo26n_stage14PKfPf __Z15yolo26n_stage14PKfPf_i0 (.done_port(done_port),
    ._input0_address0(input0_address0),
    ._input0_address1(input0_address1),
    ._input0_ce0(input0_ce0),
    ._input0_ce1(input0_ce1),
    ._output0_address0(output0_address0),
    ._output0_address1(output0_address1),
    ._output0_ce0(output0_ce0),
    ._output0_ce1(output0_ce1),
    ._output0_we0(output0_we0),
    ._output0_we1(output0_we1),
    ._output0_d0(output0_d0),
    ._output0_d1(output0_d1),
    .clock(clock),
    .reset(reset),
    .start_port(start_port),
    .input0(32'b00000000000000000000000000000000),
    .output0(32'b00000000000000000000000000000000),
    ._input0_q0(input0_q0),
    ._input0_q1(input0_q1));

endmodule


