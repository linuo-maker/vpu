module xpu_vpu_pc_tn_vlsu_dcq_entry(
  cpurst_b,
  entry_crt_dcq_dbg_pc_oh,
  entry_crt_dcq_dbg_pc_vld,
  entry_crt_dcq_dvreg_last,
  entry_crt_dcq_emul,
  entry_crt_dcq_lmul_mode,
  entry_crt_dcq_mew,
  entry_crt_dcq_nf,
  entry_crt_dcq_no_wb,
  entry_crt_dcq_op_last,
  entry_crt_dcq_seg_shift,
  entry_crt_dcq_uid,
  entry_crt_dcq_vdreg0_idx,
  entry_crt_dcq_vmask,
  giu_xx_async_flush,
  vv_dcq_entry_clk,
  vv_dcq_entry_crt_vld_x,
  vv_dcq_entry_dbg_pc_oh_v,
  vv_dcq_entry_dbg_pc_vld_x,
  vv_dcq_entry_dvreg_last_x,
  vv_dcq_entry_emul_v,
  vv_dcq_entry_lmul_mode_x,
  vv_dcq_entry_mew_v,
  vv_dcq_entry_nf_v,
  vv_dcq_entry_no_wb_x,
  vv_dcq_entry_op_last_x,
  vv_dcq_entry_rls_vld_x,
  vv_dcq_entry_seg_shift_v,
  vv_dcq_entry_uid_v,
  vv_dcq_entry_vdreg0_idx_v,
  vv_dcq_entry_vld_x,
  vv_dcq_entry_vmask_v,
  vv_dcq_entry_wb_vld_x
);

// &Ports; @20
input           cpurst_b;                 
input   [5 :0]  entry_crt_dcq_dbg_pc_oh;  
input           entry_crt_dcq_dbg_pc_vld; 
input           entry_crt_dcq_dvreg_last; 
input   [2 :0]  entry_crt_dcq_emul;       
input           entry_crt_dcq_lmul_mode;  
input   [1 :0]  entry_crt_dcq_mew;        
input   [1 :0]  entry_crt_dcq_nf;         
input           entry_crt_dcq_no_wb;     
input           entry_crt_dcq_op_last;    
input   [3 :0]  entry_crt_dcq_seg_shift;  
input   [7 :0]  entry_crt_dcq_uid;        
input   [4 :0]  entry_crt_dcq_vdreg0_idx; 
input   [15:0]  entry_crt_dcq_vmask;      
input           giu_xx_async_flush;       
input           vv_dcq_entry_clk;         
input           vv_dcq_entry_crt_vld_x;   
input           vv_dcq_entry_rls_vld_x;   
output  [5 :0]  vv_dcq_entry_dbg_pc_oh_v; 
output          vv_dcq_entry_dbg_pc_vld_x; 
output          vv_dcq_entry_dvreg_last_x; 
output  [2 :0]  vv_dcq_entry_emul_v;      
output          vv_dcq_entry_lmul_mode_x; 
output  [1 :0]  vv_dcq_entry_mew_v;       
output  [1 :0]  vv_dcq_entry_nf_v;        
output          vv_dcq_entry_no_wb_x;     
output          vv_dcq_entry_op_last_x;   
output  [3 :0]  vv_dcq_entry_seg_shift_v; 
output  [7 :0]  vv_dcq_entry_uid_v;       
output  [4 :0]  vv_dcq_entry_vdreg0_idx_v; 
output          vv_dcq_entry_vld_x;       
output  [15:0]  vv_dcq_entry_vmask_v;     
output          vv_dcq_entry_wb_vld_x;    

// &Regs; @21
reg             dcq_entry_vld;            
reg             dcq_entry_wb_vld;         
reg     [5 :0]  uop_dbg_pc_oh;            
reg             uop_dbg_pc_vld;           
reg             uop_dvreg_last;           
reg     [2 :0]  uop_emul;                 
reg             uop_lmul_mode;            
reg     [1 :0]  uop_mew;                  
reg     [1 :0]  uop_nf;                   
reg             uop_no_wb;                
reg             uop_op_last;              
reg     [3 :0]  uop_seg_shift;            
reg     [7 :0]  uop_uid;                  
reg     [4 :0]  uop_vdreg0_idx;           
reg     [15:0]  uop_vmask;                
// &Wires; @22
wire            cpurst_b;                 
wire            dcq_entry_clk;            
wire            dcq_entry_clr_vld;        
wire            dcq_entry_crt_vld;        
wire            dcq_entry_rls_vld;        
wire            dcq_entry_wb_vld_en;      
wire            dcq_entry_wb_vld_ns;      
wire    [5 :0]  entry_crt_dcq_dbg_pc_oh;  
wire            entry_crt_dcq_dbg_pc_vld; 
wire            entry_crt_dcq_dvreg_last; 
wire    [2 :0]  entry_crt_dcq_emul;       
wire            entry_crt_dcq_lmul_mode;  
wire    [1 :0]  entry_crt_dcq_mew;        
wire    [1 :0]  entry_crt_dcq_nf;         
wire            entry_crt_dcq_no_wb;      
wire            entry_crt_dcq_op_last;    
wire    [3 :0]  entry_crt_dcq_seg_shift;  
wire    [7 :0]  entry_crt_dcq_uid;        
wire    [4 :0]  entry_crt_dcq_vdreg0_idx; 
wire    [15:0]  entry_crt_dcq_vmask;      
wire            giu_xx_async_flush;       
wire            vv_dcq_entry_clk;         
wire            vv_dcq_entry_crt_vld_x;   
wire    [5 :0]  vv_dcq_entry_dbg_pc_oh_v; 
wire            vv_dcq_entry_dbg_pc_vld_x; 
wire            vv_dcq_entry_dvreg_last_x; 
wire    [2 :0]  vv_dcq_entry_emul_v;      
wire            vv_dcq_entry_lmul_mode_x; 
wire    [1 :0]  vv_dcq_entry_mew_v;       
wire    [1 :0]  vv_dcq_entry_nf_v;        
wire            vv_dcq_entry_no_wb_x;     
wire            vv_dcq_entry_op_last_x;   
wire            vv_dcq_entry_rls_vld_x;   
wire    [3 :0]  vv_dcq_entry_seg_shift_v; 
wire    [7 :0]  vv_dcq_entry_uid_v;       
wire    [4 :0]  vv_dcq_entry_vdreg0_idx_v; 
wire            vv_dcq_entry_vld_x;       
wire    [15:0]  vv_dcq_entry_vmask_v;     
wire            vv_dcq_entry_wb_vld_x;    

assign dcq_entry_crt_vld = vv_dcq_entry_crt_vld_x;
assign dcq_entry_rls_vld = vv_dcq_entry_rls_vld_x;
assign dcq_entry_clr_vld = dcq_entry_rls_vld | giu_xx_async_flush;
assign dcq_entry_clk = vv_dcq_entry_clk；

always @(posedge dcq_entry_clk or negedge cpurst_b) begin
    if(~cpurst_b)begin
        dcq_entry_vld <= 1'b0;
    end else if(dcq_entry_clr_vld) 
        dcq_entry_vld <= 1'b0;
    else if(dcq_entry_crt_vld)
        dcq_entry_vld <= 1'b1;
end

assign dcq_entry_wb_vld_ns = ~dcq_entry_clr_vld & ~entry_crt_dcq_no_wb;

assign dcq_entry_wb_vld_en = dcq_entry_clr_vld | dcq_entry_crt_vld;

always @(posedge dcq_entry_clk or negedge cpurst_b) begin
    if(~cpurst_b) 
        dcq_entry_wb_vld <= 1'b0;
    else if(dcq_entry_wb_vld_en)
        dcq_entry_wb_vld <= dcq_entry_wb_vld_ns;
end
//==========================================================================================||
//                   II. Entry Field                                                        ||
//==========================================================================================||
always @(posedge dcq_entry_clk) begin
  if(dcq_entry_crt_vld) begin
    uop_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]              <= entry_crt_dcq_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]             ;   
    uop_nf[1:0]                             <= entry_crt_dcq_nf[1:0]                            ;  
    uop_mew[1:0]                            <= entry_crt_dcq_mew[1:0]                           ;  
    uop_dvreg_last                          <= entry_crt_dcq_dvreg_last                         ;  
    uop_emul[2:0]                           <= entry_crt_dcq_emul[2:0]                          ; 
    uop_vdreg0_idx[4:0]                     <= entry_crt_dcq_vdreg0_idx[4:0]                    ; 
    uop_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]            <= entry_crt_dcq_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]           ;
    uop_no_wb                               <= entry_crt_dcq_no_wb                              ;
    uop_lmul_mode                           <= entry_crt_dcq_lmul_mode                          ;
    uop_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX]            <= entry_crt_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX]           ;
    uop_op_last                             <= entry_crt_dcq_op_last                            ;
    uop_dbg_pc_vld                          <= entry_crt_dcq_dbg_pc_vld                         ;
    uop_dbg_pc_oh[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= entry_crt_dcq_dbg_pc_oh[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];
  end
end
//==========================================================================================||
//                         Output interface                                                 ||
//==========================================================================================||
assign vv_dcq_entry_vld_x                                = dcq_entry_vld                          ;
assign vv_dcq_entry_uid_v[`XPU_VPU_PC_TN_UID_WIDTH-1:0]             = uop_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]             ;
assign vv_dcq_entry_nf_v[1:0]                            = uop_nf[1:0]                            ; 
assign vv_dcq_entry_mew_v[1:0]                           = uop_mew[1:0]                           ; 
assign vv_dcq_entry_dvreg_last_x                         = uop_dvreg_last                         ; 
assign vv_dcq_entry_emul_v[2:0]                          = uop_emul[2:0]                          ; 
assign vv_dcq_entry_vdreg0_idx_v[4:0]                    = uop_vdreg0_idx[4:0]                    ;
assign vv_dcq_entry_vmask_v[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]           = uop_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]           ;
assign vv_dcq_entry_no_wb_x                              = uop_no_wb                              ;
assign vv_dcq_entry_lmul_mode_x                          = uop_lmul_mode                          ;
assign vv_dcq_entry_seg_shift_v[`XPU_VPU_PC_TN_VLSU_EIDX]           = uop_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX]           ;
assign vv_dcq_entry_op_last_x                            = uop_op_last                            ;
assign vv_dcq_entry_dbg_pc_vld_x                         = uop_dbg_pc_vld                         ;
assign vv_dcq_entry_dbg_pc_oh_v[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]= uop_dbg_pc_oh[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];
assign vv_dcq_entry_wb_vld_x                             = dcq_entry_wb_vld                       ;
// &ModuleEnd; @112
endmodule