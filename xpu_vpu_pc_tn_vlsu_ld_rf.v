module xpu_vpu_pc_tn_vlsu_ld_rf(
  vrf_vlsu_ld_info,
  vrf_vlsu_ld_srcv0_data,
  vrf_vlsu_ld_uop_crt_idx_shift,
  vrf_vlsu_ld_uop_dbg_pc,
  vrf_vlsu_ld_uop_dbg_pc_vld,
  vrf_vlsu_ld_uop_dvreg_last,
  vrf_vlsu_ld_uop_eew,
  vrf_vlsu_ld_uop_ele_len,
  vrf_vlsu_ld_uop_ele_vimm,
  vrf_vlsu_ld_uop_emul,
  vrf_vlsu_ld_uop_fast_cmplt,
  vrf_vlsu_ld_uop_lmul_mode,
  vrf_vlsu_ld_uop_mew,
  vrf_vlsu_ld_uop_nf,
  vrf_vlsu_ld_uop_op_last,
  vrf_vlsu_ld_uop_type,
  vrf_vlsu_ld_uop_uid,
  vrf_vlsu_ld_uop_vidx_data,
  vrf_vlsu_ld_uop_vidx_start,
  vrf_vlsu_ld_uop_vld,
  vrf_vlsu_ld_uop_vm,
  vrf_vlsu_ld_uop_vmask_data,
  vrf_vlsu_ld_uop_vmask_start,
  vrf_vlsu_ld_uop_vreg0_idx,
  vrf_vlsu_ld_uop_vstart_len,
  vrf_vlsu_ld_vld
);

// &Ports; @22
input   [851:0]  vrf_vlsu_ld_info;             
input   [127:0]  vrf_vlsu_ld_srcv0_data;       
input            vrf_vlsu_ld_vld;              
output           vrf_vlsu_ld_uop_crt_idx_shift; 
output  [2  :0]  vrf_vlsu_ld_uop_dbg_pc;       
output           vrf_vlsu_ld_uop_dbg_pc_vld;   
output           vrf_vlsu_ld_uop_dvreg_last;   
output  [1  :0]  vrf_vlsu_ld_uop_eew;          
output  [4  :0]  vrf_vlsu_ld_uop_ele_len;      
output  [4  :0]  vrf_vlsu_ld_uop_ele_vimm;     
output  [2  :0]  vrf_vlsu_ld_uop_emul;         
output           vrf_vlsu_ld_uop_fast_cmplt;   
output           vrf_vlsu_ld_uop_lmul_mode;    
output  [1  :0]  vrf_vlsu_ld_uop_mew;          
output  [1  :0]  vrf_vlsu_ld_uop_nf;           
output           vrf_vlsu_ld_uop_op_last;      
output  [2  :0]  vrf_vlsu_ld_uop_type;         
output  [7  :0]  vrf_vlsu_ld_uop_uid;          
output  [127:0]  vrf_vlsu_ld_uop_vidx_data;    
output  [3  :0]  vrf_vlsu_ld_uop_vidx_start;   
output           vrf_vlsu_ld_uop_vld;          
output           vrf_vlsu_ld_uop_vm;           
output  [15 :0]  vrf_vlsu_ld_uop_vmask_data;   
output  [3  :0]  vrf_vlsu_ld_uop_vmask_start;  
output  [4  :0]  vrf_vlsu_ld_uop_vreg0_idx;    
output  [4  :0]  vrf_vlsu_ld_uop_vstart_len;   

// &Regs; @23

// &Wires; @24
wire    [851:0]  vrf_vlsu_ld_info;             
wire    [127:0]  vrf_vlsu_ld_srcv0_data;       
wire             vrf_vlsu_ld_uop_crt_idx_shift; 
wire    [2  :0]  vrf_vlsu_ld_uop_dbg_pc;       
wire             vrf_vlsu_ld_uop_dbg_pc_vld;   
wire             vrf_vlsu_ld_uop_dvreg_last;   
wire    [1  :0]  vrf_vlsu_ld_uop_eew;          
wire    [4  :0]  vrf_vlsu_ld_uop_ele_len;      
wire    [4  :0]  vrf_vlsu_ld_uop_ele_vimm;     
wire    [2  :0]  vrf_vlsu_ld_uop_emul;         
wire             vrf_vlsu_ld_uop_fast_cmplt;   
wire    [21 :0]  vrf_vlsu_ld_uop_func;         
wire             vrf_vlsu_ld_uop_lmul_mode;    
wire    [1  :0]  vrf_vlsu_ld_uop_mew;          
wire    [1  :0]  vrf_vlsu_ld_uop_nf;           
wire             vrf_vlsu_ld_uop_op_last;      
wire    [63 :0]  vrf_vlsu_ld_uop_src1;         
wire    [5  :0]  vrf_vlsu_ld_uop_srcv0_idx;    
wire    [2  :0]  vrf_vlsu_ld_uop_type;         
wire    [7  :0]  vrf_vlsu_ld_uop_uid;          
wire    [127:0]  vrf_vlsu_ld_uop_vidx_data;    
wire    [3  :0]  vrf_vlsu_ld_uop_vidx_start;   
wire             vrf_vlsu_ld_uop_vld;          
wire             vrf_vlsu_ld_uop_vm;           
wire    [15 :0]  vrf_vlsu_ld_uop_vmask_data;   
wire    [3  :0]  vrf_vlsu_ld_uop_vmask_start;  
wire    [4  :0]  vrf_vlsu_ld_uop_vreg0_idx;    
wire    [4  :0]  vrf_vlsu_ld_uop_vstart_len;   
wire             vrf_vlsu_ld_vld;              


// &Force("input","vrf_vlsu_ld_vld");     @26
// &Force("input","vrf_vlsu_ld_info"); &Force("bus","vrf_vlsu_ld_info",`XPU_VPU_PC_TN_VIS_WIDTH-1,0); @27
assign vrf_vlsu_ld_uop_vld                           = vrf_vlsu_ld_vld; 
assign vrf_vlsu_ld_uop_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]        = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_UID:0];
assign vrf_vlsu_ld_uop_type[2:0]                     = vrf_vlsu_ld_uop_func[4:2];
assign vrf_vlsu_ld_uop_eew[1:0]                      = vrf_vlsu_ld_uop_func[1:0];
assign vrf_vlsu_ld_uop_mew[1:0]                      = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_VSEW-:`XPU_VPU_PC_TN_VSEW_WIDTH];
assign vrf_vlsu_ld_uop_nf[1:0]                       = vrf_vlsu_ld_uop_func[6:5];
assign vrf_vlsu_ld_uop_vm                            = vrf_vlsu_ld_uop_func[21];
assign vrf_vlsu_ld_uop_crt_idx_shift                 = vrf_vlsu_ld_uop_func[8];
assign vrf_vlsu_ld_uop_lmul_mode                     = vrf_vlsu_ld_uop_func[9];
assign vrf_vlsu_ld_uop_dvreg_last                    = vrf_vlsu_ld_uop_func[10];
assign vrf_vlsu_ld_uop_fast_cmplt                    = vrf_vlsu_ld_uop_func[11];
assign vrf_vlsu_ld_uop_dbg_pc_vld                    = vrf_vlsu_ld_uop_func[12];
assign vrf_vlsu_ld_uop_dbg_pc[`XPU_VPU_PC_TN_DBU_IDX_WIDTH-1:0] = vrf_vlsu_ld_uop_func[13+:`XPU_VPU_PC_TN_DBU_IDX_WIDTH];

assign vrf_vlsu_ld_uop_vidx_start[`XPU_VPU_PC_TN_VLSU_EIDX]     = vrf_vlsu_ld_uop_src1[`XPU_VPU_PC_TN_VLSU_EIDX];
assign vrf_vlsu_ld_uop_vidx_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0]  = vrf_vlsu_ld_srcv0_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0];

assign vrf_vlsu_ld_uop_vmask_start[`XPU_VPU_PC_TN_VLSU_EIDX]     = vrf_vlsu_ld_uop_src1[7:4];
assign vrf_vlsu_ld_uop_vmask_data[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]  = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_SRCVM-:`XPU_VPU_PC_TN_VLSU_ENUM];

assign vrf_vlsu_ld_uop_func[`XPU_VPU_PC_TN_FUNC_WIDTH-1:0]      = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_FUNC-:`XPU_VPU_PC_TN_FUNC_WIDTH]; 
assign vrf_vlsu_ld_uop_emul[2:0]                     = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_VLMUL-:`XPU_VPU_PC_TN_VLMUL_WIDTH]; 

assign vrf_vlsu_ld_uop_vreg0_idx[4:0]                = vrf_vlsu_ld_uop_srcv0_idx[4:0];
assign vrf_vlsu_ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX1]      = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_VIMM-:5];

assign vrf_vlsu_ld_uop_ele_len[`XPU_VPU_PC_TN_VLSU_EIDX1]       = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_ELE_LEN-:`XPU_VPU_PC_TN_NM_ELE_LEN_WTH];
assign vrf_vlsu_ld_uop_vstart_len[`XPU_VPU_PC_TN_VLSU_EIDX1]    = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_VSTART_LEN-:`XPU_VPU_PC_TN_NM_ELE_LEN_WTH];
assign vrf_vlsu_ld_uop_op_last                       = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_OP_LAST];

assign vrf_vlsu_ld_uop_src1[63:0]                    = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_SRC1-:64];
assign vrf_vlsu_ld_uop_srcv0_idx[5:0]                = vrf_vlsu_ld_info[`XPU_VPU_PC_TN_VIS_DSTV0_IDX-:6]; 

// &ModuleEnd; @63
endmodule
