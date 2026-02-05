module xpu_vpu_pc_tn_vlsu_index_vm_entry(
  cpurst_b,
  entry_crt_icq_idx_offset,
  entry_crt_icq_vmask,
  giu_xx_async_flush,
  vv_icq_entry_clk,
  vv_icq_entry_crt_vld_x,
  vv_icq_entry_rls_vld_x,
  vv_icq_entry_vld_x,
  vv_icq_entry_vmask_x,
  vv_icq_idx_offset_v
);

// &Ports; @20
input           cpurst_b;                
input   [63:0]  entry_crt_icq_idx_offset; 
input           entry_crt_icq_vmask;     
input           giu_xx_async_flush;      
input           vv_icq_entry_clk;        
input           vv_icq_entry_crt_vld_x;  
input           vv_icq_entry_rls_vld_x;  
output          vv_icq_entry_vld_x;      
output          vv_icq_entry_vmask_x;    
output  [63:0]  vv_icq_idx_offset_v;     

// &Regs; @21
reg             icq_entry_vld;           
reg     [63:0]  uop_idx_offset;          
reg             uop_vmask;               

// &Wires; @22
wire            cpurst_b;                
wire    [63:0]  entry_crt_icq_idx_offset; 
wire            entry_crt_icq_vmask;     
wire            giu_xx_async_flush;      
wire            icq_entry_clk;           
wire            icq_entry_clr_vld;       
wire            icq_entry_crt_vld;       
wire            icq_entry_rls_vld;       
wire            vv_icq_entry_clk;        
wire            vv_icq_entry_crt_vld_x;  
wire            vv_icq_entry_rls_vld_x;  
wire            vv_icq_entry_vld_x;      
wire            vv_icq_entry_vmask_x;    
wire    [63:0]  vv_icq_idx_offset_v;     

//==========================================================================================||
//                          I/O Interface                                                   ||
//==========================================================================================||
assign icq_entry_crt_vld    =  vv_icq_entry_crt_vld_x;
assign icq_entry_rls_vld    =  vv_icq_entry_rls_vld_x;
assign icq_entry_clr_vld    =  icq_entry_rls_vld
                            |  giu_xx_async_flush;
assign icq_entry_clk        =  vv_icq_entry_clk;
//==========================================================================================||
//                       I.  Entry Control                                                  ||
//==========================================================================================||
always @(posedge icq_entry_clk or negedge cpurst_b) begin
  if (~cpurst_b)
    icq_entry_vld  <= 1'b0;
  else if (icq_entry_clr_vld)
    icq_entry_vld  <= 1'b0;
  else if (icq_entry_crt_vld)
    icq_entry_vld  <= 1'b1;
end
//==========================================================================================||
//                   II. Entry Field                                                        ||
//==========================================================================================||
always @(posedge icq_entry_clk) begin
  if(icq_entry_crt_vld) begin
    uop_idx_offset[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] <= entry_crt_icq_idx_offset[`XPU_VPU_PC_TN_IDX_WIDTH-1:0];
    uop_vmask                         <= entry_crt_icq_vmask;
  end
end
//==========================================================================================||
//                         Output interface                                                 ||
//==========================================================================================||
assign vv_icq_entry_vld_x                      = icq_entry_vld;
assign vv_icq_idx_offset_v[`XPU_VPU_PC_TN_IDX_WIDTH-1:0]  = uop_idx_offset[`XPU_VPU_PC_TN_IDX_WIDTH-1:0];
assign vv_icq_entry_vmask_x                    = uop_vmask;
// &ModuleEnd; @63
endmodule
