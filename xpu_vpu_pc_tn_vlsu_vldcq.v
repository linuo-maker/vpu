module xpu_vpu_pc_tn_vlsu_vldcq(
    cmu_vlsu_lanex_rdata,
    cmu_vlsu_lanex_rvalid,
    cmu_vlsu_lanex_vldcq_rdy,
    cmu_vlsu_ld_cmplt_spec_fail,
    cpurst_b,
    forever_cpuclk,
    giu_vlsu_expt_clr,
    giu_xxx_async_flush,
    lanex_vlsu_col_ld_debug_vld,
    lanex_vlsu_col_ld_nan_vld,
    lanex_vlsu_giu_vldcq_full,
    lanex_vlsu_vid_ld_dealloc_uid,
    lanex_vlsu_vid_vldcq_entry_bypass,
    lanex_vlsu_vid_vldcq_wb_peak,
    lanex_vlsu_vid_vldcq_wb_vld,
    lanex_vlsu_vid_wkup_uid,
    lanex_vlsu_xx_wb_last,
    lanex_vlsu_xx_wb_uid,
    lanex_vlsu_xx_wb_vld,
    pad_yy_icg_scan_en,
    vcp0_vlsu_local_icg_en,
    vlsu_cmu_lanex_ld_idx_offset,
    vlsu_cmu_lanex_ld_vmask,
    vlsu_cmu_lanex_rready,
    vlsu_cmu_lanex_vldcq_vld,
    vlsu_vcp0_vldcq_empty,
    vlsu_vis_req_vldcq_credit,
    vlsu_vis_req_vlicq_credit,
    vlsu_xx_wb_byte_vld,
    vlsu_xx_wb_data,
    vlsu_xx_wb_idx,
    vlsu_xx_wb_last,
    vlsu_xx_wb_uid,
    vlsu_xx_wb_vld,
    vlsu_xx_wb_vreg_last,
    vrf_vlsu_ld_uop_crt_idx_shift,
    vrf_vlsu_ld_uop_dbg_pc,
    vrf_vlsu_ld_uop_dbg_pc_vld,
    vrf_vlsu_ld_uop_dvreg_last,
    vrf_vlsu_ld_uop_eew,
    vrf_vlsu_ld_uop_ele_len,
    vrf_vlsu_ld_uop_ele_imm,
    vrf_vlsu_ld_uop_emul,
    vrf_vlsu_ld_uop_fast_cmplt,
    vrf_vlsu_ld_uop_lmul_mode,
    vrf_vlsu_ld_uop_fast_cmplt,
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
    vrf_vlsu_ld_uop_vstart_len
    
    );

   // &Ports; @20
input   [127:0]  cmu_vlsu_lanex_rdata;             
input            cmu_vlsu_lanex_rvalid;            
input            cmu_vlsu_lanex_vldcq_rdy;         
input            cmu_vlsu_ld_cmplt_spec_fail;      
input            cpurst_b;                         
input            forever_cpuclk;                   
input            giu_vlsu_expt_clr;                
input            giu_xx_async_flush;               
input            pad_yy_icg_scan_en;               
input            vcp0_vlsu_local_icg_en;           
input            vrf_vlsu_ld_uop_crt_idx_shift;    
input   [2  :0]  vrf_vlsu_ld_uop_dbg_pc;           
input            vrf_vlsu_ld_uop_dbg_pc_vld;       
input            vrf_vlsu_ld_uop_dvreg_last;       
input   [1  :0]  vrf_vlsu_ld_uop_eew;              
input   [4  :0]  vrf_vlsu_ld_uop_ele_len;          
input   [4  :0]  vrf_vlsu_ld_uop_ele_vimm;         
input   [2  :0]  vrf_vlsu_ld_uop_emul;             
input            vrf_vlsu_ld_uop_fast_cmplt;       
input            vrf_vlsu_ld_uop_lmul_mode;        
input   [1  :0]  vrf_vlsu_ld_uop_mew;              
input   [1  :0]  vrf_vlsu_ld_uop_nf;               
input            vrf_vlsu_ld_uop_op_last;          
input   [2  :0]  vrf_vlsu_ld_uop_type;             
input   [7  :0]  vrf_vlsu_ld_uop_uid;              
input   [127:0]  vrf_vlsu_ld_uop_vidx_data;        
input   [3  :0]  vrf_vlsu_ld_uop_vidx_start;       
input            vrf_vlsu_ld_uop_vld;              
input            vrf_vlsu_ld_uop_vm;               
input   [15 :0]  vrf_vlsu_ld_uop_vmask_data;       
input   [3  :0]  vrf_vlsu_ld_uop_vmask_start;      
input   [4  :0]  vrf_vlsu_ld_uop_vreg0_idx;        
input   [4  :0]  vrf_vlsu_ld_uop_vstart_len;       
output  [5  :0]  lanex_vlsu_col_ld_debug_vld;     
output  [5  :0]  lanex_vlsu_col_ld_nan_vld;        
output           lanex_vlsu_giu_vldcq_full;        
output  [7  :0]  lanex_vlsu_vid_ld_dealloc_uid;    
output           lanex_vlsu_vid_vldcq_entry_bypass; 
output           lanex_vlsu_vid_vldcq_wb_peak;     
output           lanex_vlsu_vid_vldcq_wb_vld;      
output  [7  :0]  lanex_vlsu_vid_wkup_uid;          
output           lanex_vlsu_xx_wb_last;            
output  [7  :0]  lanex_vlsu_xx_wb_uid;             
output           lanex_vlsu_xx_wb_vld;             
output  [63 :0]  vlsu_cmu_lanex_ld_idx_offset;     
output           vlsu_cmu_lanex_ld_vmask;          
output           vlsu_cmu_lanex_rready;            
output           vlsu_cmu_lanex_vldcq_vld;         
output           vlsu_vcp0_vldcq_empty;            
output           vlsu_vis_ret_vldcq_credit;        
output           vlsu_vis_ret_vlicq_credit;        
output  [15 :0]  vlsu_xx_wb_byte_vld;              
output  [127:0]  vlsu_xx_wb_data;                  
output  [5  :0]  vlsu_xx_wb_idx;                   
output           vlsu_xx_wb_last;                  
output  [7  :0]  vlsu_xx_wb_uid;                   
output           vlsu_xx_wb_vld;                   
output           vlsu_xx_wb_vreg_last;   

// &Regs; @21
reg     [4  :0]  dvreg_shift;                      
reg     [3  :0]  entry_crt_dcq_seg_shift;          
reg     [63 :0]  entry_uop_vidx;                   
reg     [63 :0]  entry_uop_vidx_shift;             
reg              expt_vld;                         
reg     [5  :0]  ld_dbg_vld_q1;                    
reg     [5  :0]  ld_dbg_vld_q2;                    
reg     [5  :0]  ld_nan_vld_q2;                    
reg     [15 :0]  uop_ele_len_vl;                   
reg     [15 :0]  uop_ele_len_vstart;               
reg     [7  :0]  vldcq_crt_ptr;                    
reg              vldcq_empty;                      
reg              vldcq_full;                       
reg     [7  :0]  vldcq_rls_ptr;                    
reg     [15 :0]  vldcq_wb_byte_vld_reg;            
reg     [7  :0]  vldcq_wb_byte_vld_seg;            
reg     [1  :0]  vldcq_wb_cnt;                     
reg              vldcq_wb_fire_q1;                 
reg     [1  :0]  vlicq_crt_ptr;                    
reg              vlicq_empty;                      
reg              vlicq_full;                       
reg     [1  :0]  vlicq_rls_ptr;                    
reg     [15 :0]  wb_byte_vld_ff;                   
reg     [127:0]  wb_data_ff;                       
reg              wb_data_has_nan_q1;               
reg     [5  :0]  wb_dcq_dbg_pc_oh_q1;              
reg              wb_dcq_dbg_pc_vld_q1;             
reg              wb_dvreg_last_ff;                 
reg              wb_is_bypass_ff;                  
reg              wb_last_ff;                       
reg     [7  :0]  wb_rls_uid_ff;                    
reg     [4  :0]  wb_vdreg_idx;                     
reg     [4  :0]  wb_vdreg_idx_ff;                  
reg              wb_vld_ff;                        
reg              wb_vld_ff_q;      

// &Wires; @22
wire    [127:0]  cmu_vlsu_lanex_rdata;             
wire             cmu_vlsu_lanex_rvalid;            
wire             cmu_vlsu_lanex_vldcq_rdy;         
wire             cmu_vlsu_ld_cmplt_spec_fail;      
wire             cpurst_b;                         
wire    [5  :0]  entry_crt_dcq_dbg_pc_oh;          
wire             entry_crt_dcq_dbg_pc_vld;         
wire             entry_crt_dcq_dvreg_last;         
wire    [2  :0]  entry_crt_dcq_emul;               
wire             entry_crt_dcq_lmul_mode;          
wire    [1  :0]  entry_crt_dcq_mew;                
wire    [1  :0]  entry_crt_dcq_nf;                 
wire             entry_crt_dcq_no_wb;              
wire             entry_crt_dcq_op_last;            
wire    [7  :0]  entry_crt_dcq_uid;                
wire    [4  :0]  entry_crt_dcq_vdreg0_idx;         
wire    [15 :0]  entry_crt_dcq_vmask;              
wire    [63 :0]  entry_crt_icq_idx_offset;         
wire             entry_crt_icq_vmask;              
wire             entry_no_need_writeback;          
wire             entry_vm;                         
wire             forever_cpuclk;                   
wire             giu_vlsu_expt_clr;                
wire             giu_xx_async_flush;               
wire    [5  :0]  lanex_vlsu_col_ld_debug_vld;      
wire    [5  :0]  lanex_vlsu_col_ld_nan_vld;        
wire             lanex_vlsu_giu_vldcq_full;        
wire    [7  :0]  lanex_vlsu_vid_ld_dealloc_uid;    
wire             lanex_vlsu_vid_vldcq_entry_bypass; 
wire             lanex_vlsu_vid_vldcq_wb_peak;     
wire             lanex_vlsu_vid_vldcq_wb_vld;      
wire    [7  :0]  lanex_vlsu_vid_wkup_uid;          
wire             lanex_vlsu_xx_wb_last;            
wire    [7  :0]  lanex_vlsu_xx_wb_uid;             
wire             lanex_vlsu_xx_wb_vld;             
wire             ld_dbg_vld_q1_en;                 
wire    [5  :0]  ld_dbg_vld_q1_ns;                 
wire             ld_dbg_vld_q2_en;                 
wire             ld_debug_vld;                     
wire    [5  :0]  ld_nan_vld_q1;                    
wire             ld_nan_vld_q2_en;                 
wire    [5  :0]  ld_nan_vld_q2_ns;
wire             ld_uop_crt_idx_shift;             
wire    [2  :0]  ld_uop_dbg_pc;                    
wire             ld_uop_dbg_pc_vld;                
wire             ld_uop_dvreg_last;                
wire    [1  :0]  ld_uop_eew;                       
wire    [4  :0]  ld_uop_ele_len;                   
wire    [4  :0]  ld_uop_ele_vimm;                  
wire    [2  :0]  ld_uop_emul;                      
wire             ld_uop_fast_cmplt;                
wire             ld_uop_lmul_mode;                 
wire    [1  :0]  ld_uop_mew;                       
wire    [1  :0]  ld_uop_nf;                        
wire             ld_uop_op_last;                   
wire    [2  :0]  ld_uop_type;                      
wire    [7  :0]  ld_uop_uid;                       
wire    [127:0]  ld_uop_vidx_data;                 
wire    [3  :0]  ld_uop_vidx_start;                
wire             ld_uop_vld;                       
wire             ld_uop_vm;                        
wire    [15 :0]  ld_uop_vmask;                     
wire    [15 :0]  ld_uop_vmask_data;                
wire    [15 :0]  ld_uop_vmask_final;               
wire    [3  :0]  ld_uop_vmask_start;               
wire    [4  :0]  ld_uop_vreg0_idx;                 
wire    [4  :0]  ld_uop_vstart_len;                
wire             pad_yy_icg_scan_en;               
wire             seg_vmask_vld;                    
wire    [15 :0]  uop_lmul_len_mask;                
wire    [15 :0]  uop_seg_len_mask;                 
wire    [3  :0]  uop_vidx_byte_offset;             
wire             vcp0_vlsu_local_icg_en;           
wire             vlas_icq_rvld;                    
wire    [63 :0]  vlas_idx;                         
wire             vlas_idx_vm;                      
wire             vlas_need_handshake;              
wire             vlas_rd_rdy;                      
wire             vldcq_clk;                        
wire             vldcq_clk_en;                     
wire             vldcq_cmu_rready;                 
wire    [7  :0]  vldcq_crt_ptr_nxt;                
wire             vldcq_crt_vld;                    
wire             vldcq_dbg_info_en;                
wire             vldcq_empty_nxt;                  
wire             vldcq_entry_bypass;               
wire             vldcq_entry_can_wb;               
wire    [7  :0]  vldcq_entry_crt_vld;              
wire    [5  :0]  vldcq_entry_dbg_pc_oh_0;          
wire    [5  :0]  vldcq_entry_dbg_pc_oh_1;          
wire    [5  :0]  vldcq_entry_dbg_pc_oh_2; 
wire    [5  :0]  vldcq_entry_dbg_pc_oh_3;          
wire    [5  :0]  vldcq_entry_dbg_pc_oh_4;          
wire    [5  :0]  vldcq_entry_dbg_pc_oh_5;          
wire    [5  :0]  vldcq_entry_dbg_pc_oh_6;          
wire    [5  :0]  vldcq_entry_dbg_pc_oh_7;          
wire    [7  :0]  vldcq_entry_dbg_pc_vld;           
wire    [7  :0]  vldcq_entry_dvreg_last;           
wire    [2  :0]  vldcq_entry_emul_0;               
wire    [2  :0]  vldcq_entry_emul_1;               
wire    [2  :0]  vldcq_entry_emul_2;               
wire    [2  :0]  vldcq_entry_emul_3;               
wire    [2  :0]  vldcq_entry_emul_4;               
wire    [2  :0]  vldcq_entry_emul_5;               
wire    [2  :0]  vldcq_entry_emul_6;               
wire    [2  :0]  vldcq_entry_emul_7;               
wire    [7  :0]  vldcq_entry_lmul_mode;            
wire    [1  :0]  vldcq_entry_mew_0;                
wire    [1  :0]  vldcq_entry_mew_1;                
wire    [1  :0]  vldcq_entry_mew_2;                
wire    [1  :0]  vldcq_entry_mew_3;                
wire    [1  :0]  vldcq_entry_mew_4;                
wire    [1  :0]  vldcq_entry_mew_5;                
wire    [1  :0]  vldcq_entry_mew_6;                
wire    [1  :0]  vldcq_entry_mew_7;                
wire    [1  :0]  vldcq_entry_nf_0;                 
wire    [1  :0]  vldcq_entry_nf_1;                 
wire    [1  :0]  vldcq_entry_nf_2;                 
wire    [1  :0]  vldcq_entry_nf_3;                 
wire    [1  :0]  vldcq_entry_nf_4;                 
wire    [1  :0]  vldcq_entry_nf_5;                 
wire    [1  :0]  vldcq_entry_nf_6;                 
wire    [1  :0]  vldcq_entry_nf_7;                 
wire    [7  :0]  vldcq_entry_no_wb;                
wire    [7  :0]  vldcq_entry_op_last;              
wire    [7  :0]  vldcq_entry_rls_vld;              
wire    [3  :0]  vldcq_entry_seg_shift_0;          
wire    [3  :0]  vldcq_entry_seg_shift_1;          
wire    [3  :0]  vldcq_entry_seg_shift_2;          
wire    [3  :0]  vldcq_entry_seg_shift_3;          
wire    [3  :0]  vldcq_entry_seg_shift_4;          
wire    [3  :0]  vldcq_entry_seg_shift_5;          
wire    [3  :0]  vldcq_entry_seg_shift_6;          
wire    [3  :0]  vldcq_entry_seg_shift_7;          
wire    [7  :0]  vldcq_entry_uid_0;                
wire    [7  :0]  vldcq_entry_uid_1;                
wire    [7  :0]  vldcq_entry_uid_2;                
wire    [7  :0]  vldcq_entry_uid_3;                
wire    [7  :0]  vldcq_entry_uid_4;                
wire    [7  :0]  vldcq_entry_uid_5;                
wire    [7  :0]  vldcq_entry_uid_6;                
wire    [7  :0]  vldcq_entry_uid_7;                
wire    [4  :0]  vldcq_entry_vdreg0_idx_0;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_1;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_2;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_3;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_4;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_5;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_6;         
wire    [4  :0]  vldcq_entry_vdreg0_idx_7;         
wire    [7  :0]  vldcq_entry_vld;                  
wire    [15 :0]  vldcq_entry_vmask_0;              
wire    [15 :0]  vldcq_entry_vmask_1;              
wire    [15 :0]  vldcq_entry_vmask_2;              
wire    [15 :0]  vldcq_entry_vmask_3;              
wire    [15 :0]  vldcq_entry_vmask_4;              
wire    [15 :0]  vldcq_entry_vmask_5;              
wire    [15 :0]  vldcq_entry_vmask_6;              
wire    [15 :0]  vldcq_entry_vmask_7;              
wire    [7  :0]  vldcq_entry_wb_vld;               
wire             vldcq_full_nxt;                   
wire             vldcq_rls_is_wb_vld;              
wire    [7  :0]  vldcq_rls_ptr_nxt;                
wire             vldcq_rls_vld;                    
wire             vldcq_status_upd_en;              
wire             vldcq_wb_1st;                     
wire    [15 :0]  vldcq_wb_byte_vld_lmul;           
wire    [15 :0]  vldcq_wb_byte_vld_reg_bit8;       
wire    [15 :0]  vldcq_wb_byte_vld_reg_dwrd;       
wire    [15 :0]  vldcq_wb_byte_vld_reg_half;       
wire    [15 :0]  vldcq_wb_byte_vld_reg_word;       
wire    [7  :0]  vldcq_wb_byte_vld_seg_bit8;       
wire    [7  :0]  vldcq_wb_byte_vld_seg_dwrd;       
wire    [15 :0]  vldcq_wb_byte_vld_seg_final;      
wire    [7  :0]  vldcq_wb_byte_vld_seg_half;       
wire    [7  :0]  vldcq_wb_byte_vld_seg_word;       
wire             vldcq_wb_cnt_upd;                 
wire             vldcq_wb_done;                    
wire             vldcq_wb_fire;                    
wire             vldcq_wb_last;                    
wire    [1  :0]  vldcq_wb_nxt;                     
wire             vldcq_wb_peak;                    
wire    [1  :0]  vldcq_wb_plus1;                   
wire             vldcq_wb_vld;                     
wire             vlicq_clk;                        
wire             vlicq_clk_en;                     
wire    [1  :0]  vlicq_crt_ptr_nxt;                
wire             vlicq_crt_vld;                    
wire             vlicq_empty_nxt;                  
wire    [1  :0]  vlicq_entry_crt_vld;              
wire    [1  :0]  vlicq_entry_rls_vld;              
wire    [1  :0]  vlicq_entry_vld;                  
wire    [1  :0]  vlicq_entry_vmask;                
wire             vlicq_full_nxt;                   
wire    [63 :0]  vlicq_idx_offset_0;               
wire    [63 :0]  vlicq_idx_offset_1;               
wire    [1  :0]  vlicq_rls_ptr_nxt;                
wire             vlicq_rls_vld;                    
wire             vlicq_status_upd_en;              
wire    [63 :0]  vlsu_cmu_lanex_ld_idx_offset;     
wire             vlsu_cmu_lanex_ld_vmask;          
wire             vlsu_cmu_lanex_rready;            
wire             vlsu_cmu_lanex_vldcq_vld;         
wire             vlsu_expt_clr;                    
wire             vlsu_expt_vld;                    
wire             vlsu_vcp0_vldcq_empty;            
wire             vlsu_vis_ret_vldcq_credit;        
wire             vlsu_vis_ret_vlicq_credit;        
wire             vlsu_wb_byte_rvalid;              
wire    [15 :0]  vlsu_wb_byte_vld;                 
wire    [127:0]  vlsu_wb_data;                     
wire    [127:0]  vlsu_wb_data_ori;                 
wire    [15 :0]  vlsu_xx_wb_byte_vld;              
wire    [127:0]  vlsu_xx_wb_data;                  
wire    [5  :0]  vlsu_xx_wb_idx;                   
wire             vlsu_xx_wb_last;                  
wire    [7  :0]  vlsu_xx_wb_uid;                   
wire             vlsu_xx_wb_vld;                   
wire             vlsu_xx_wb_vreg_last;             
wire             vrf_vlsu_ld_uop_crt_idx_shift;    
wire    [2  :0]  vrf_vlsu_ld_uop_dbg_pc;           
wire             vrf_vlsu_ld_uop_dbg_pc_vld;       
wire             vrf_vlsu_ld_uop_dvreg_last;       
wire    [1  :0]  vrf_vlsu_ld_uop_eew;              
wire    [4  :0]  vrf_vlsu_ld_uop_ele_len;          
wire    [4  :0]  vrf_vlsu_ld_uop_ele_vimm；
wire    [2  :0]  vrf_vlsu_ld_uop_emul;             
wire             vrf_vlsu_ld_uop_fast_cmplt;       
wire             vrf_vlsu_ld_uop_lmul_mode;        
wire    [1  :0]  vrf_vlsu_ld_uop_mew;              
wire    [1  :0]  vrf_vlsu_ld_uop_nf;               
wire             vrf_vlsu_ld_uop_op_last;          
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
wire             wb_data_has_nan;                  
wire    [5  :0]  wb_dcq_dbg_pc_oh;                 
wire             wb_dcq_dbg_pc_vld;                
wire             wb_dcq_dvreg_last;                
wire    [2  :0]  wb_dcq_emul;                      
wire    [1  :0]  wb_dcq_mew;                       
wire    [1  :0]  wb_dcq_nf;                        
wire    [3  :0]  wb_dcq_seg_shift;                 
wire    [7  :0]  wb_dcq_uid;                       
wire    [4  :0]  wb_dcq_vdreg0_idx;                
wire    [15 :0]  wb_dcq_vmask;                     
wire             wb_ld_nan_vld_q1;                 
wire             wb_ptr_is_lmul_mode;              
wire             wb_ptr_is_no_wb;                  
wire             wb_ptr_is_op_last;                
wire             wb_ptr_is_wb_vld;                 
wire    [7  :0]  wb_rls_uid;                       
wire    [4  :0]  wb_vdreg_idx_cur;                 
wire    [4  :0]  wb_vdreg_idx_nxt;               
//==========================================================================================||
//              PARAMETER DEFINE                                                            ||
//==========================================================================================||
parameter BIT8      = 2'b00;
parameter HALF      = 2'b01;
parameter WORD      = 2'b10;
parameter DWORD     = 2'b11;
 
//==========================================================================================||
//                          ICG CLK                                                         ||
//==========================================================================================||
assign vldcq_clk_en        =  vrf_vlsu_ld_uop_vld
                           | ~vldcq_empty
                           |  wb_vld_ff
                           |  wb_vld_ff_q
                           |  giu_xx_async_flush
                           |  expt_vld
                           |  vlsu_expt_vld;

// &Instance("com_root_gated_clk_cell", "x_vldcq_leaf_gated_clk"); @43
xpu_vpu_pc_com_root_gated_clk_cell  x_vldcq_leaf_gated_clk (
  .clk_in                 (forever_cpuclk        ),
  .clk_out                (vldcq_clk             ),
  .external_en            (1'b0                  ),
  .local_en               (vldcq_clk_en          ),
  .module_en              (vcp0_vlsu_local_icg_en),
  .pad_yy_icg_scan_en     (pad_yy_icg_scan_en    )
);

// &Connect(.clk_in              (forever_cpuclk        ), @44
//          .external_en         (1'b0                  ), @45
//          .local_en            (vldcq_clk_en          ), @46
//          .module_en           (vcp0_vlsu_local_icg_en), @47
//          .pad_yy_icg_scan_en  (pad_yy_icg_scan_en    ), @48
//          .clk_out             (vldcq_clk            )); @49

assign vlicq_clk_en        =  vrf_vlsu_ld_uop_vld
                           | ~vlicq_empty
                           |  giu_xx_async_flush
                           |  expt_vld
                           |  vlsu_expt_vld;
// &Instance("com_root_gated_clk_cell", "x_vlicq_leaf_gated_clk"); @57
xpu_vpu_pc_com_root_gated_clk_cell  x_vlicq_leaf_gated_clk (
  .clk_in                 (forever_cpuclk        ),
  .clk_out                (vlicq_clk             ),
  .external_en            (1'b0                  ),
  .local_en               (vlicq_clk_en          ),
  .module_en              (vcp0_vlsu_local_icg_en),
  .pad_yy_icg_scan_en     (pad_yy_icg_scan_en    )
);
//==========================================================================================||
//              INSTANCE                                                                    ||
//==========================================================================================||
// &LoopGenBeg("xxx",0,`XPU_VPU_PC_TN_VLDCQ_NUM-1); @68
// &ConnRule(s/_x$/\[xxx\]/); @69
// &ConnRule(s/_v$/_xxx/); @70
// &ConnRule(s/vv_/vl/); @71
// &Instance("tn_vlsu_dcq_entry","x_tn_vlsu_vldcq_entry_xxx"); @72
// &Connect(.vv_dcq_entry_clk(vldcq_clk)); @73
xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_0 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[0]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_0  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[0]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[0]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_0       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[0] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_0        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_0         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[0]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[0]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[0]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_0  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_0        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_0 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[0]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_0      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[0]    )
);

xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_1 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[1]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_1  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[1]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[1]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_1       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[1] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_1        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_1         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[1]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[1]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[1]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_1  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_1        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_1 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[1]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_1      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[1]    )
);
xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_2 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[2]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_2  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[2]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[2]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_2       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[2] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_2        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_2         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[2]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[2]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[2]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_2  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_2        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_2 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[2]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_2      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[2]    )
);

xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_3 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[3]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_3  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[3]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[3]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_3       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[3] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_3        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_3         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[3]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[3]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[3]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_3  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_3        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_3 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[3]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_3      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[3]    )
);


xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_4 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[4]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_4  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[4]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[4]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_4       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[4] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_4        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_4         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[4]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[4]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[4]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_4  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_4        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_4 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[4]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_4      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[4]    )
);

xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_5 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[5]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_5  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[5]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[5]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_5       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[5] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_5        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_5         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[5]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[5]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[5]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_5  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_5        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_5 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[5]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_5      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[5]    )
);

xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_6 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[6]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_6  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[6]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[6]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_6       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[6] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_6        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_6         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[6]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[6]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[6]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_6  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_6        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_6 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[6]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_6      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[6]    )
);

xpu_vpu_pc_tn_vlsu_dcq_entry  x_tn_vlsu_vldcq_entry_7 (
  .cpurst_b                  (cpurst_b                 ),
  .entry_crt_dcq_dbg_pc_oh   (entry_crt_dcq_dbg_pc_oh  ),
  .entry_crt_dcq_dbg_pc_vld  (entry_crt_dcq_dbg_pc_vld ),
  .entry_crt_dcq_dvreg_last  (entry_crt_dcq_dvreg_last ),
  .entry_crt_dcq_emul        (entry_crt_dcq_emul       ),
  .entry_crt_dcq_lmul_mode   (entry_crt_dcq_lmul_mode  ),
  .entry_crt_dcq_mew         (entry_crt_dcq_mew        ),
  .entry_crt_dcq_nf          (entry_crt_dcq_nf         ),
  .entry_crt_dcq_no_wb       (entry_crt_dcq_no_wb      ),
  .entry_crt_dcq_op_last     (entry_crt_dcq_op_last    ),
  .entry_crt_dcq_seg_shift   (entry_crt_dcq_seg_shift  ),
  .entry_crt_dcq_uid         (entry_crt_dcq_uid        ),
  .entry_crt_dcq_vdreg0_idx  (entry_crt_dcq_vdreg0_idx ),
  .entry_crt_dcq_vmask       (entry_crt_dcq_vmask      ),
  .giu_xx_async_flush        (giu_xx_async_flush       ),
  .vv_dcq_entry_clk          (vldcq_clk                ),
  .vv_dcq_entry_crt_vld_x    (vldcq_entry_crt_vld[7]   ),
  .vv_dcq_entry_dbg_pc_oh_v  (vldcq_entry_dbg_pc_oh_7  ),
  .vv_dcq_entry_dbg_pc_vld_x (vldcq_entry_dbg_pc_vld[7]),
  .vv_dcq_entry_dvreg_last_x (vldcq_entry_dvreg_last[7]),
  .vv_dcq_entry_emul_v       (vldcq_entry_emul_7       ),
  .vv_dcq_entry_lmul_mode_x  (vldcq_entry_lmul_mode[7] ),
  .vv_dcq_entry_mew_v        (vldcq_entry_mew_7        ),
  .vv_dcq_entry_nf_v         (vldcq_entry_nf_7         ),
  .vv_dcq_entry_no_wb_x      (vldcq_entry_no_wb[7]     ),
  .vv_dcq_entry_op_last_x    (vldcq_entry_op_last[7]   ),
  .vv_dcq_entry_rls_vld_x    (vldcq_entry_rls_vld[7]   ),
  .vv_dcq_entry_seg_shift_v  (vldcq_entry_seg_shift_7  ),
  .vv_dcq_entry_uid_v        (vldcq_entry_uid_7        ),
  .vv_dcq_entry_vdreg0_idx_v (vldcq_entry_vdreg0_idx_7 ),
  .vv_dcq_entry_vld_x        (vldcq_entry_vld[7]       ),
  .vv_dcq_entry_vmask_v      (vldcq_entry_vmask_7      ),
  .vv_dcq_entry_wb_vld_x     (vldcq_entry_wb_vld[7]    )
);
// &LoopGenEnd; @74

// &LoopGenBeg("xxx",0,`XPU_VPU_PC_TN_VLICQ_NUM-1); @76
// &ConnRule(s/_x$/\[xxx\]/); @77
// &ConnRule(s/_v$/_xxx/); @78
// &ConnRule(s/vv_/vl/); @79
// &Instance("tn_vlsu_index_vm_entry","x_tn_vlsu_vlicq_entry_xxx"); @80
// &Connect(.vv_icq_entry_clk(vlicq_clk)); @81
xpu_vpu_pc_tn_vlsu_index_vm_entry  x_tn_vlsu_vlicq_entry_0 (
  .cpurst_b                 (cpurst_b                ),
  .entry_crt_icq_idx_offset (entry_crt_icq_idx_offset),
  .entry_crt_icq_vmask      (entry_crt_icq_vmask     ),
  .giu_xx_async_flush       (giu_xx_async_flush      ),
  .vv_icq_entry_clk         (vlicq_clk               ),
  .vv_icq_entry_crt_vld_x   (vlicq_entry_crt_vld[0]  ),
  .vv_icq_entry_rls_vld_x   (vlicq_entry_rls_vld[0]  ),
  .vv_icq_entry_vld_x       (vlicq_entry_vld[0]      ),
  .vv_icq_entry_vmask_x     (vlicq_entry_vmask[0]    ),
  .vv_icq_idx_offset_v      (vlicq_idx_offset_0      )
);

xpu_vpu_pc_tn_vlsu_index_vm_entry  x_tn_vlsu_vlicq_entry_1 (
  .cpurst_b                 (cpurst_b                ),
  .entry_crt_icq_idx_offset (entry_crt_icq_idx_offset),
  .entry_crt_icq_vmask      (entry_crt_icq_vmask     ),
  .giu_xx_async_flush       (giu_xx_async_flush      ),
  .vv_icq_entry_clk         (vlicq_clk               ),
  .vv_icq_entry_crt_vld_x   (vlicq_entry_crt_vld[1]  ),
  .vv_icq_entry_rls_vld_x   (vlicq_entry_rls_vld[1]  ),
  .vv_icq_entry_vld_x       (vlicq_entry_vld[1]      ),
  .vv_icq_entry_vmask_x     (vlicq_entry_vmask[1]    ),
  .vv_icq_idx_offset_v      (vlicq_idx_offset_1      )
);
// &LoopGenEnd; @82
//==========================================================================================||
//                Input                                                                     ||
//==========================================================================================||
// 1.From VRF&IQ
assign ld_uop_vld                               = vrf_vlsu_ld_uop_vld                              ;
assign ld_uop_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]            = vrf_vlsu_ld_uop_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]           ;
assign ld_uop_type[2:0]                         = vrf_vlsu_ld_uop_type[2:0]                        ;    
assign ld_uop_eew[1:0]                          = vrf_vlsu_ld_uop_eew[1:0]                         ;
assign ld_uop_mew[1:0]                          = vrf_vlsu_ld_uop_mew[1:0]                         ; 
assign ld_uop_nf[1:0]                           = vrf_vlsu_ld_uop_nf[1:0]                          ; 
assign ld_uop_vm                                = vrf_vlsu_ld_uop_vm                               ;
assign ld_uop_crt_idx_shift                     = vrf_vlsu_ld_uop_crt_idx_shift                    ;
assign ld_uop_op_last                           = vrf_vlsu_ld_uop_op_last                          ;

assign ld_uop_vidx_start[`XPU_VPU_PC_TN_VLSU_EIDX]         = vrf_vlsu_ld_uop_vidx_start[`XPU_VPU_PC_TN_VLSU_EIDX]        ;
assign ld_uop_vidx_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0]      = vrf_vlsu_ld_uop_vidx_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0]     ;

assign ld_uop_vmask_start[`XPU_VPU_PC_TN_VLSU_EIDX]        = vrf_vlsu_ld_uop_vmask_start[`XPU_VPU_PC_TN_VLSU_EIDX]       ;
assign ld_uop_vmask_data[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]     = vrf_vlsu_ld_uop_vmask_data[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]    ;
assign ld_uop_emul[2:0]                         = vrf_vlsu_ld_uop_emul[2:0]                        ; 

assign ld_uop_vreg0_idx[4:0]                    = vrf_vlsu_ld_uop_vreg0_idx[4:0]                   ;  
assign ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX1]          = vrf_vlsu_ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX1]         ;

assign ld_uop_ele_len[`XPU_VPU_PC_TN_VLSU_EIDX1]           = vrf_vlsu_ld_uop_ele_len[`XPU_VPU_PC_TN_VLSU_EIDX1]          ;
assign ld_uop_vstart_len[`XPU_VPU_PC_TN_VLSU_EIDX1]        = vrf_vlsu_ld_uop_vstart_len[`XPU_VPU_PC_TN_VLSU_EIDX1]       ;
assign ld_uop_dvreg_last                        = vrf_vlsu_ld_uop_dvreg_last                       ;

assign ld_uop_lmul_mode                         = vrf_vlsu_ld_uop_lmul_mode                        ;
assign ld_uop_fast_cmplt                        = vrf_vlsu_ld_uop_fast_cmplt                       ;

assign ld_uop_dbg_pc_vld                        = vrf_vlsu_ld_uop_dbg_pc_vld                       ;
assign ld_uop_dbg_pc[`XPU_VPU_PC_TN_DBU_IDX_WIDTH-1:0]     = vrf_vlsu_ld_uop_dbg_pc[`XPU_VPU_PC_TN_DBU_IDX_WIDTH-1:0]    ;
// 2. From CMU
assign vlsu_wb_byte_rvalid                      = cmu_vlsu_lanex_rvalid                            ;
assign vlsu_wb_data_ori[`XPU_VPU_PC_TN_LANE_VLEN-1:0]      = cmu_vlsu_lanex_rdata[`XPU_VPU_PC_TN_LANE_VLEN-1:0]          ;
assign vlas_rd_rdy                              = cmu_vlsu_lanex_vldcq_rdy                         ;
assign vlsu_expt_vld                            = cmu_vlsu_ld_cmplt_spec_fail                      ;
// 3. From GIU
assign vlsu_expt_clr                            = giu_vlsu_expt_clr    ;

//==========================================================================================||
//                Common Ctrl Logic                                                         ||
//==========================================================================================||
//------------------------------------------------------------------------------------------+ 
// I. VLDCQ Pointer                                                                         |
//------------------------------------------------------------------------------------------+ 
//------------------------------------------------------------------------------------------  
// I-1. VLDCQ Control signal
assign vldcq_crt_vld  =  ld_uop_vld 
                      & ~vldcq_full;
assign vldcq_rls_vld  =  vldcq_wb_done ;
//------------------------------------------------------------------------------------------  
// I-2. VLDCQ Ptr nxt
assign vldcq_crt_ptr_nxt[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]  = {vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-2:0],  vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1]} ;
assign vldcq_rls_ptr_nxt[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]  = {vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-2:0],  vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1]} ;

//------------------------------------------------------------------------------------------  
// I-3. VLDCQ Create Pointer
always@(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLDCQ_NUM-1){1'b0}}, 1'b1};
  else if(giu_xx_async_flush) 
    vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLDCQ_NUM-1){1'b0}}, 1'b1};
  else if(vldcq_crt_vld)
    vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] <= vldcq_crt_ptr_nxt[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0];
end

//------------------------------------------------------------------------------------------  
// I-4. VLDCQ Release Pointer
always @(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b)
    vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLDCQ_NUM-1){1'b0}}, 1'b1};
  else if(giu_xx_async_flush)
    vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLDCQ_NUM-1){1'b0}}, 1'b1};
  else if(vldcq_rls_vld)
    vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] <= vldcq_rls_ptr_nxt[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0];
end

//------------------------------------------------------------------------------------------  
// I-6. VLDCQ Full & Empty 
assign vldcq_status_upd_en  =  vldcq_crt_vld
                            |  vldcq_rls_vld;

assign vldcq_full_nxt       =  vldcq_crt_vld
                            & ~vldcq_rls_vld
                            & (&(vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] 
                            |    vldcq_entry_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0])); 

assign vldcq_empty_nxt      = ~vldcq_crt_vld
                            &  vldcq_rls_vld
                            & (~(|(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] 
                            ^      vldcq_entry_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0])));

always@(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vldcq_full <= 1'b0;
  else if(giu_xx_async_flush) 
    vldcq_full <= 1'b0;
  else if(vldcq_status_upd_en)
    vldcq_full <= vldcq_full_nxt;
end

always@(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vldcq_empty <= 1'b1;
  else if(giu_xx_async_flush) 
    vldcq_empty <= 1'b1;
  else if(vldcq_status_upd_en)
    vldcq_empty <= vldcq_empty_nxt;
end
//------------------------------------------------------------------------------------------+ 
// II. VLDCQ Entry Logic                                                                    |
//------------------------------------------------------------------------------------------+ 
//------------------------------------------------------------------------------------------
// II-1. Create & Release Requst
assign vldcq_entry_crt_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] = {`XPU_VPU_PC_TN_VLDCQ_NUM{vldcq_crt_vld}}
                                              & vldcq_crt_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0];

assign vldcq_entry_rls_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] = {`XPU_VPU_PC_TN_VLDCQ_NUM{vldcq_rls_vld}}
                                              & vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0];

//------------------------------------------------------------------------------------------
// II-2 Common Fields
assign entry_crt_dcq_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]           = ld_uop_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]       ;
assign entry_crt_dcq_nf[1:0]                          = ld_uop_nf[1:0]                      ;
assign entry_crt_dcq_mew[1:0]                         = ld_uop_mew[1:0]                     ;
assign entry_crt_dcq_dvreg_last                       = ld_uop_dvreg_last                   ;
assign entry_crt_dcq_op_last                          = ld_uop_op_last                      ;
assign entry_crt_dcq_emul[2:0]                        = ld_uop_emul[2:0]                    ;
assign entry_crt_dcq_vdreg0_idx[4:0]                  = ld_uop_vreg0_idx[4:0]               ;
assign entry_crt_dcq_lmul_mode                        = ld_uop_lmul_mode                    ;
assign entry_crt_dcq_dbg_pc_vld                       = ld_uop_dbg_pc_vld                   ;
//------------------------------------------------------------------------------------------
// II-3 no need write back
// cond1: ele_len=0 &(segment mode | cs mode)
// cond2: !fast cmplt & mask = 0 & segment mode
assign entry_vm = entry_crt_dcq_vmask[0];

assign entry_no_need_writeback                =  ld_uop_ele_len[`XPU_VPU_PC_TN_VLSU_EIDX_WTH]
                                              &(~ld_uop_lmul_mode
                                              |  ld_uop_type[1])
                                              | ~ld_uop_fast_cmplt
                                              & ~entry_vm
                                              & ~ld_uop_lmul_mode                   ;
assign entry_crt_dcq_no_wb                    =  entry_no_need_writeback            ;

// &CombBeg; @230
always @*
begin
case({ld_uop_mew[1:0]})
  BIT8    : entry_crt_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX] =  ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX]         ;
  HALF    : entry_crt_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX] = {ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX_WTH-2:0], 1'b0}  ;
  WORD    : entry_crt_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX] = {ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX_WTH-3:0], 2'b00} ;
  DWORD   : entry_crt_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX] = {ld_uop_ele_vimm[`XPU_VPU_PC_TN_VLSU_EIDX_WTH-4:0], 3'b000};
  default : entry_crt_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX] = {`XPU_VPU_PC_TN_VLSU_EIDX_WTH{1'b0}}; 
endcase
// &CombEnd; @242
end
//------------------------------------------------------------------------------------------
// II-4 Vmask info
assign ld_uop_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = ld_uop_vmask_data[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] >> ld_uop_vmask_start[`XPU_VPU_PC_TN_VLSU_EIDX];

// &CombBeg; @247
always @*
begin
case(ld_uop_ele_len[`XPU_VPU_PC_TN_VLSU_EIDX1])
// &LoopGenBeg("zz",0,`XPU_VPU_PC_TN_VLSU_ENUM-2); @249
//   `XPU_VPU_PC_TN_VLSU_EIDX1_WTH'dzz: uop_ele_len_vl[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {{(`XPU_VPU_PC_TN_VLSU_ENUM-zz-1){1'b0} @250
  5'd0: uop_ele_len_vl[15:0] = {{15{1'b0}},{1{1'b1}}};
  5'd1: uop_ele_len_vl[15:0] = {{14{1'b0}},{2{1'b1}}};
  5'd2: uop_ele_len_vl[15:0] = {{13{1'b0}},{3{1'b1}}};
  5'd3: uop_ele_len_vl[15:0] = {{12{1'b0}},{4{1'b1}}};
  5'd4: uop_ele_len_vl[15:0] = {{11{1'b0}},{5{1'b1}}};
  5'd5: uop_ele_len_vl[15:0] = {{10{1'b0}},{6{1'b1}}};
  5'd6: uop_ele_len_vl[15:0] = {{9{1'b0}},{7{1'b1}}};
  5'd7: uop_ele_len_vl[15:0] = {{8{1'b0}},{8{1'b1}}};
  5'd8: uop_ele_len_vl[15:0] = {{7{1'b0}},{9{1'b1}}};
  5'd9: uop_ele_len_vl[15:0] = {{6{1'b0}},{10{1'b1}}};
  5'd10: uop_ele_len_vl[15:0] = {{5{1'b0}},{11{1'b1}}};
  5'd11: uop_ele_len_vl[15:0] = {{4{1'b0}},{12{1'b1}}};
  5'd12: uop_ele_len_vl[15:0] = {{3{1'b0}},{13{1'b1}}};
  5'd13: uop_ele_len_vl[15:0] = {{2{1'b0}},{14{1'b1}}};
  5'd14: uop_ele_len_vl[15:0] = {{1{1'b0}},{15{1'b1}}};
// &LoopGenEnd; @251
// &LoopGenBeg("zz",`XPU_VPU_PC_TN_VLSU_ENUM-1,`XPU_VPU_PC_TN_VLSU_ENUM-1); @252
//   `XPU_VPU_PC_TN_VLSU_EIDX1_WTH'dzz: uop_ele_len_vl[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {`XPU_VPU_PC_TN_VLSU_ENUM{1'b1}}; @253
  5'd15: uop_ele_len_vl[15:0] = {16{1'b1}};
// &LoopGenEnd; @254
  default: uop_ele_len_vl[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {`XPU_VPU_PC_TN_VLSU_ENUM{1'b0}}; 
endcase
// &CombEnd; @257
end
// &CombBeg; @259
always @*
begin
case(ld_uop_vstart_len[`XPU_VPU_PC_TN_VLSU_EIDX1])
// &LoopGenBeg("zz",0,`XPU_VPU_PC_TN_VLSU_ENUM-2); @261
//   `XPU_VPU_PC_TN_VLSU_EIDX1_WTH'dzz: uop_ele_len_vstart[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {{(`XPU_VPU_PC_TN_VLSU_ENUM-zz-1){1 @262
  5'd0: uop_ele_len_vstart[15:0] = {{15{1'b1}},{1{1'b0}}};
  5'd1: uop_ele_len_vstart[15:0] = {{14{1'b1}},{2{1'b0}}};
  5'd2: uop_ele_len_vstart[15:0] = {{13{1'b1}},{3{1'b0}}};
  5'd3: uop_ele_len_vstart[15:0] = {{12{1'b1}},{4{1'b0}}};
  5'd4: uop_ele_len_vstart[15:0] = {{11{1'b1}},{5{1'b0}}};
  5'd5: uop_ele_len_vstart[15:0] = {{10{1'b1}},{6{1'b0}}};
  5'd6: uop_ele_len_vstart[15:0] = {{9{1'b1}},{7{1'b0}}};
  5'd7: uop_ele_len_vstart[15:0] = {{8{1'b1}},{8{1'b0}}};
  5'd8: uop_ele_len_vstart[15:0] = {{7{1'b1}},{9{1'b0}}};
  5'd9: uop_ele_len_vstart[15:0] = {{6{1'b1}},{10{1'b0}}};
  5'd10: uop_ele_len_vstart[15:0] = {{5{1'b1}},{11{1'b0}}};
  5'd11: uop_ele_len_vstart[15:0] = {{4{1'b1}},{12{1'b0}}};
  5'd12: uop_ele_len_vstart[15:0] = {{3{1'b1}},{13{1'b0}}};
  5'd13: uop_ele_len_vstart[15:0] = {{2{1'b1}},{14{1'b0}}};
  5'd14: uop_ele_len_vstart[15:0] = {{1{1'b1}},{15{1'b0}}};
// &LoopGenEnd; @263
// &LoopGenBeg("zz",`XPU_VPU_PC_TN_VLSU_ENUM-1,`XPU_VPU_PC_TN_VLSU_ENUM-1); @264
//   `XPU_VPU_PC_TN_VLSU_EIDX1_WTH'dzz: uop_ele_len_vstart[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {`XPU_VPU_PC_TN_VLSU_ENUM{1'b0}}; @265
  5'd15: uop_ele_len_vstart[15:0] = {16{1'b0}};
// &LoopGenEnd; @266
  default: uop_ele_len_vstart[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {`XPU_VPU_PC_TN_VLSU_ENUM{1'b1}}; 
endcase
// &CombEnd; @269
end

assign uop_seg_len_mask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]    = {`XPU_VPU_PC_TN_VLSU_ENUM{uop_ele_len_vl[0]    & ld_uop_vstart_len[`XPU_VPU_PC_TN_VLSU_EIDX_WTH]}};
assign uop_lmul_len_mask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]   = uop_ele_len_vl[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]   & uop_ele_len_vstart[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] ;

assign ld_uop_vmask_final[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]  = ({`XPU_VPU_PC_TN_VLSU_ENUM{ ld_uop_vm}}        | ld_uop_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0])
                                              & ({`XPU_VPU_PC_TN_VLSU_ENUM{ ld_uop_lmul_mode}} & uop_lmul_len_mask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]
                                              |  {`XPU_VPU_PC_TN_VLSU_ENUM{~ld_uop_lmul_mode}} & uop_seg_len_mask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]); 

assign entry_crt_dcq_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = ld_uop_vmask_final[`XPU_VPU_PC_TN_VLSU_ENUM-1:0];

// II-4 debug_pc idx to onehot
assign entry_crt_dcq_dbg_pc_oh[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] = {{(`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1){1'b0}}, 1'b1} << ld_uop_dbg_pc[`XPU_VPU_PC_TN_DBU_IDX_WIDTH-1:0];

//------------------------------------------------------------------------------------------+ 
// III. Vector Load Index Control Queue                                                     |
//------------------------------------------------------------------------------------------+ 
//------------------------------------------------------------------------------------------  
// III-1. VLICQ Create & Release
// handshake cond: ele_len!=0 & (!fastcmplt | idx-segment mode) & crt_idx_shift
assign vlas_need_handshake    = ~ld_uop_ele_len[`XPU_VPU_PC_TN_VLSU_EIDX_WTH]       
                              &(~ld_uop_fast_cmplt
                              | ~ld_uop_lmul_mode & ld_uop_type[2])                  
                              &  ld_uop_crt_idx_shift;

assign vlicq_crt_vld          = ld_uop_vld  
                              &~vlicq_full
                              & vlas_need_handshake;
assign vlicq_rls_vld          = vlas_icq_rvld
                              &(vlas_rd_rdy
                              | expt_vld);
//------------------------------------------------------------------------------------------  
// III-2. VLICQ Ptr Nxt
assign vlicq_crt_ptr_nxt[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] = {vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-2:0], vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1]};
assign vlicq_rls_ptr_nxt[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] = {vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-2:0], vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1]};
//------------------------------------------------------------------------------------------  
// III-3. VLICQ Create Pointer
always@(posedge vlicq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLICQ_NUM-1){1'b0}}, 1'b1};
  else if(giu_xx_async_flush) 
    vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLICQ_NUM-1){1'b0}}, 1'b1};
  else if(vlicq_crt_vld)
    vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] <= vlicq_crt_ptr_nxt[`XPU_VPU_PC_TN_VLICQ_NUM-1:0];
end
//------------------------------------------------------------------------------------------  
// III-4. VLICQ Release Pointer
always@(posedge vlicq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLICQ_NUM-1){1'b0}}, 1'b1};
  else if(giu_xx_async_flush) 
    vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] <= {{(`XPU_VPU_PC_TN_VLICQ_NUM-1){1'b0}}, 1'b1};
  else if(vlicq_rls_vld)
    vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] <= vlicq_rls_ptr_nxt[`XPU_VPU_PC_TN_VLICQ_NUM-1:0];
end
//------------------------------------------------------------------------------------------ 
// III-4. VLICQ Full & Empty 
assign vlicq_status_upd_en  =  vlicq_crt_vld
                            |  vlicq_rls_vld;

assign vlicq_full_nxt       =  vlicq_crt_vld
                            & ~vlicq_rls_vld
                            & (&(vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] 
                            |    vlicq_entry_vld[`XPU_VPU_PC_TN_VLICQ_NUM-1:0])); 

assign vlicq_empty_nxt      = ~vlicq_crt_vld
                            &  vlicq_rls_vld
                            & (~(|(vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] 
                            ^      vlicq_entry_vld[`XPU_VPU_PC_TN_VLICQ_NUM-1:0])));

always@(posedge vlicq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vlicq_full <= 1'b0;
  else if(giu_xx_async_flush) 
    vlicq_full <= 1'b0;
  else if(vlicq_status_upd_en)
    vlicq_full <= vlicq_full_nxt;
end

always@(posedge vlicq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vlicq_empty <= 1'b1;
  else if(giu_xx_async_flush) 
    vlicq_empty <= 1'b1;
  else if(vlicq_status_upd_en)
    vlicq_empty <= vlicq_empty_nxt;
end
//------------------------------------------------------------------------------------------+ 
// IV. VLICQ Entry Logic                                                                    |
//------------------------------------------------------------------------------------------+ 
//------------------------------------------------------------------------------------------
// IV-1. Create & Release Logic
assign vlicq_entry_crt_vld[`XPU_VPU_PC_TN_VLICQ_NUM-1:0]  = {`XPU_VPU_PC_TN_VLICQ_NUM{vlicq_crt_vld}}
                                               & vlicq_crt_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0];
assign vlicq_entry_rls_vld[`XPU_VPU_PC_TN_VLICQ_NUM-1:0]  = {`XPU_VPU_PC_TN_VLICQ_NUM{vlicq_rls_vld}}
                                               & vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0];
// IV-2. Entry Info
//------------------------------------------------------------------------------------------
// IV-2.1 VIndex 
assign uop_vidx_byte_offset[`XPU_VPU_PC_TN_VLSU_EIDX]     = ld_uop_vidx_start[`XPU_VPU_PC_TN_VLSU_EIDX] << ld_uop_eew[1:0];

// &CombBeg; @371
always @*
begin
case(uop_vidx_byte_offset[`XPU_VPU_PC_TN_VLSU_EIDX])
// &LoopGenBeg("zz",0,`XPU_VPU_PC_TN_VLSU_IDX_SFT); @373
//   `XPU_VPU_PC_TN_VLSU_EIDX_WTH'dzz: entry_uop_vidx_shift[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] = ld_uop_vidx_data[8*zz+` @374
  4'd0: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[63:0];
  4'd1: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[71:8];
  4'd2: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[79:16];
  4'd3: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[87:24];
  4'd4: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[95:32];
  4'd5: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[103:40];
  4'd6: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[111:48];
  4'd7: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[119:56];
  4'd8: entry_uop_vidx_shift[63:0] = ld_uop_vidx_data[127:64];
// &LoopGenEnd; @375
// &LoopGenBeg("zz",`XPU_VPU_PC_TN_VLSU_IDX_SFT+1,`XPU_VPU_PC_TN_VLSU_ENUM-1); @376
//   `XPU_VPU_PC_TN_VLSU_EIDX_WTH'dzz: entry_uop_vidx_shift[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] = {{(8*(zz-`XPU_VPU_PC_TN_VLSU_IDX_S @377
  4'd9: entry_uop_vidx_shift[63:0] = {{8{1'b0}}, ld_uop_vidx_data[127:72]};
  4'd10: entry_uop_vidx_shift[63:0] = {{16{1'b0}}, ld_uop_vidx_data[127:80]};
  4'd11: entry_uop_vidx_shift[63:0] = {{24{1'b0}}, ld_uop_vidx_data[127:88]};
  4'd12: entry_uop_vidx_shift[63:0] = {{32{1'b0}}, ld_uop_vidx_data[127:96]};
  4'd13: entry_uop_vidx_shift[63:0] = {{40{1'b0}}, ld_uop_vidx_data[127:104]};
  4'd14: entry_uop_vidx_shift[63:0] = {{48{1'b0}}, ld_uop_vidx_data[127:112]};
  4'd15: entry_uop_vidx_shift[63:0] = {{56{1'b0}}, ld_uop_vidx_data[127:120]};
// &LoopGenEnd; @378
  default : entry_uop_vidx_shift[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] =  {`XPU_VPU_PC_TN_IDX_WIDTH{1'b0}};
endcase
// &CombEnd; @381
end
// &CombBeg; @383
always @*
begin
case(ld_uop_eew[1:0])
  2'b00   : entry_uop_vidx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] = {{56{1'b0}}, entry_uop_vidx_shift[0+: 8]}; 
  2'b01   : entry_uop_vidx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] = {{48{1'b0}}, entry_uop_vidx_shift[0+:16]}; 
  2'b10   : entry_uop_vidx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] = {{32{1'b0}}, entry_uop_vidx_shift[0+:32]}; 
  2'b11   : entry_uop_vidx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] =              entry_uop_vidx_shift[0+:64] ;
  default : entry_uop_vidx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0] =              entry_uop_vidx_shift[0+:64] ;
endcase
// &CombEnd; @391
end

assign entry_crt_icq_idx_offset[`XPU_VPU_PC_TN_IDX_WIDTH-1:0]  = entry_uop_vidx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0];
//------------------------------------------------------------------------------------------
// IV-2.2 Vmask
assign entry_crt_icq_vmask                          = ld_uop_vmask_final[0];

//------------------------------------------------------------------------------------------+ 
// V. Issue to VLAS                                                                         |
//------------------------------------------------------------------------------------------+ 
//------------------------------------------------------------------------------------------
// V-1. Create valid
assign vlas_icq_rvld  = |(vlicq_entry_vld[`XPU_VPU_PC_TN_VLICQ_NUM-1:0]);
//------------------------------------------------------------------------------------------
// V-2. idx
// &VectorSel("xx","vlas_idx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0]","vlicq_rls_ptr",0,"vlicq_idx_offset_xx[`XPU_VPU_PC_TN_I @406
assign vlas_idx[63:0] =
                {64{vlicq_rls_ptr[0]}} & vlicq_idx_offset_0[63:0]
              | {64{vlicq_rls_ptr[1]}} & vlicq_idx_offset_1[63:0];
//------------------------------------------------------------------------------------------
// V-3. vm
assign vlas_idx_vm   = |(vlicq_rls_ptr[`XPU_VPU_PC_TN_VLICQ_NUM-1:0] & vlicq_entry_vmask[`XPU_VPU_PC_TN_VLICQ_NUM-1:0]);
//------------------------------------------------------------------------------------------+ 
// VI. WB & Release                                                                         |
//------------------------------------------------------------------------------------------+
assign wb_ptr_is_no_wb     = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_no_wb[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);
assign wb_ptr_is_lmul_mode = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_lmul_mode[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);
assign wb_ptr_is_wb_vld    = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);
assign wb_ptr_is_op_last   = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_op_last[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);
assign vldcq_rls_is_wb_vld = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_wb_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);
// &VectorSel("xx","wb_dcq_seg_shift","vldcq_rls_ptr","vldcq_entry_seg_shift_xx[`XPU_VPU_PC_TN_VLSU_EIDX @418
assign wb_dcq_seg_shift[3:0] =
                {4{vldcq_rls_ptr[0]}} & vldcq_entry_seg_shift_0[3:0]
              | {4{vldcq_rls_ptr[1]}} & vldcq_entry_seg_shift_1[3:0]
              | {4{vldcq_rls_ptr[2]}} & vldcq_entry_seg_shift_2[3:0]
              | {4{vldcq_rls_ptr[3]}} & vldcq_entry_seg_shift_3[3:0]
              | {4{vldcq_rls_ptr[4]}} & vldcq_entry_seg_shift_4[3:0]
              | {4{vldcq_rls_ptr[5]}} & vldcq_entry_seg_shift_5[3:0]
              | {4{vldcq_rls_ptr[6]}} & vldcq_entry_seg_shift_6[3:0]
              | {4{vldcq_rls_ptr[7]}} & vldcq_entry_seg_shift_7[3:0];
//------------------------------------------------------------------------------------------
// VI-1. WB Cnt
assign vldcq_entry_can_wb             = wb_ptr_is_wb_vld;
// for no wb cond
assign vldcq_entry_bypass             =(wb_ptr_is_no_wb
                                      | expt_vld)
                                      & vldcq_entry_can_wb;
// wb num limit
assign vldcq_wb_peak                  = vldcq_wb_cnt[1:0] == wb_dcq_nf[1:0];
// cmu vlmb rready
assign vldcq_cmu_rready               = vldcq_rls_is_wb_vld &
                                        (vldcq_wb_cnt[1:0] <= wb_dcq_nf[1:0]);
// vlmb handshake vld
assign vldcq_wb_vld                   = vldcq_entry_can_wb 
                                      &~vldcq_entry_bypass
                                      &(vldcq_wb_cnt[1:0] <= wb_dcq_nf[1:0])
                                      &~expt_vld;
// vlmb handshake vld & rdy
assign vldcq_wb_fire                  = vldcq_wb_vld
                                      & vlsu_wb_byte_rvalid;
// uop wb finish
assign vldcq_wb_done                  =(vldcq_wb_fire 
                                      | vldcq_entry_bypass)
                                      & vldcq_wb_peak;
// wb counter update
assign vldcq_wb_cnt_upd               = vldcq_wb_fire
                                      | vldcq_entry_bypass;

assign vldcq_wb_plus1[1:0]            = vldcq_wb_cnt[1:0] + 2'b01;
assign vldcq_wb_nxt[1:0]              = {2{~vldcq_wb_done}}
                                      & vldcq_wb_plus1[1:0];

always@(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    vldcq_wb_cnt[1:0] <= {2{1'b0}};
  else if(giu_xx_async_flush) 
    vldcq_wb_cnt[1:0] <= {2{1'b0}};
  else if(vldcq_wb_cnt_upd)
    vldcq_wb_cnt[1:0] <= vldcq_wb_nxt[1:0];
end

assign vldcq_wb_last = 1'b1;
// VI-2. WB Signal
assign wb_dcq_dvreg_last = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_dvreg_last[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);
assign wb_dcq_dbg_pc_vld = |(vldcq_rls_ptr[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0] & vldcq_entry_dbg_pc_vld[`XPU_VPU_PC_TN_VLDCQ_NUM-1:0]);

// &VectorSel("xx","wb_dcq_uid","vldcq_rls_ptr","vldcq_entry_uid_xx[`XPU_VPU_PC_TN_UID_WIDTH-1:0]",0,`TN @466
assign wb_dcq_uid[7:0] =
                {8{vldcq_rls_ptr[0]}} & vldcq_entry_uid_0[7:0]
              | {8{vldcq_rls_ptr[1]}} & vldcq_entry_uid_1[7:0]
              | {8{vldcq_rls_ptr[2]}} & vldcq_entry_uid_2[7:0]
              | {8{vldcq_rls_ptr[3]}} & vldcq_entry_uid_3[7:0]
              | {8{vldcq_rls_ptr[4]}} & vldcq_entry_uid_4[7:0]
              | {8{vldcq_rls_ptr[5]}} & vldcq_entry_uid_5[7:0]
              | {8{vldcq_rls_ptr[6]}} & vldcq_entry_uid_6[7:0]
              | {8{vldcq_rls_ptr[7]}} & vldcq_entry_uid_7[7:0];
// &VectorSel("xx","wb_dcq_nf","vldcq_rls_ptr","vldcq_entry_nf_xx[1:0]",0,`XPU_VPU_PC_TN_VLDCQ_NUM-1,2); @467
assign wb_dcq_nf[1:0] =
                {2{vldcq_rls_ptr[0]}} & vldcq_entry_nf_0[1:0]
              | {2{vldcq_rls_ptr[1]}} & vldcq_entry_nf_1[1:0]
              | {2{vldcq_rls_ptr[2]}} & vldcq_entry_nf_2[1:0]
              | {2{vldcq_rls_ptr[3]}} & vldcq_entry_nf_3[1:0]
              | {2{vldcq_rls_ptr[4]}} & vldcq_entry_nf_4[1:0]
              | {2{vldcq_rls_ptr[5]}} & vldcq_entry_nf_5[1:0]
              | {2{vldcq_rls_ptr[6]}} & vldcq_entry_nf_6[1:0]
              | {2{vldcq_rls_ptr[7]}} & vldcq_entry_nf_7[1:0];
// &VectorSel("xx","wb_dcq_vdreg0_idx","vldcq_rls_ptr","vldcq_entry_vdreg0_idx_xx[4:0]",0,`TN @468
assign wb_dcq_vdreg0_idx[4:0] =
                {5{vldcq_rls_ptr[0]}} & vldcq_entry_vdreg0_idx_0[4:0]
              | {5{vldcq_rls_ptr[1]}} & vldcq_entry_vdreg0_idx_1[4:0]
              | {5{vldcq_rls_ptr[2]}} & vldcq_entry_vdreg0_idx_2[4:0]
              | {5{vldcq_rls_ptr[3]}} & vldcq_entry_vdreg0_idx_3[4:0]
              | {5{vldcq_rls_ptr[4]}} & vldcq_entry_vdreg0_idx_4[4:0]
              | {5{vldcq_rls_ptr[5]}} & vldcq_entry_vdreg0_idx_5[4:0]
              | {5{vldcq_rls_ptr[6]}} & vldcq_entry_vdreg0_idx_6[4:0]
              | {5{vldcq_rls_ptr[7]}} & vldcq_entry_vdreg0_idx_7[4:0];
// &VectorSel("xx","wb_dcq_emul","vldcq_rls_ptr","vldcq_entry_emul_xx[2:0]",0,`XPU_VPU_PC_TN_VLDCQ_NUM-1 @469
assign wb_dcq_emul[2:0] =
                {3{vldcq_rls_ptr[0]}} & vldcq_entry_emul_0[2:0]
              | {3{vldcq_rls_ptr[1]}} & vldcq_entry_emul_1[2:0]
              | {3{vldcq_rls_ptr[2]}} & vldcq_entry_emul_2[2:0]
              | {3{vldcq_rls_ptr[3]}} & vldcq_entry_emul_3[2:0]
              | {3{vldcq_rls_ptr[4]}} & vldcq_entry_emul_4[2:0]
              | {3{vldcq_rls_ptr[5]}} & vldcq_entry_emul_5[2:0]
              | {3{vldcq_rls_ptr[6]}} & vldcq_entry_emul_6[2:0]
              | {3{vldcq_rls_ptr[7]}} & vldcq_entry_emul_7[2:0];
// &VectorSel("xx","wb_dcq_vmask","vldcq_rls_ptr","vldcq_entry_vmask_xx[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]",0 @470
assign wb_dcq_vmask[15:0] =
                {16{vldcq_rls_ptr[0]}} & vldcq_entry_vmask_0[15:0]
              | {16{vldcq_rls_ptr[1]}} & vldcq_entry_vmask_1[15:0]
              | {16{vldcq_rls_ptr[2]}} & vldcq_entry_vmask_2[15:0]
              | {16{vldcq_rls_ptr[3]}} & vldcq_entry_vmask_3[15:0]
              | {16{vldcq_rls_ptr[4]}} & vldcq_entry_vmask_4[15:0]
              | {16{vldcq_rls_ptr[5]}} & vldcq_entry_vmask_5[15:0]
              | {16{vldcq_rls_ptr[6]}} & vldcq_entry_vmask_6[15:0]
              | {16{vldcq_rls_ptr[7]}} & vldcq_entry_vmask_7[15:0];
// &VectorSel("xx","wb_dcq_mew","vldcq_rls_ptr","vldcq_entry_mew_xx[1:0]",0,`XPU_VPU_PC_TN_VLDCQ_NUM-1,2 @471
assign wb_dcq_mew[1:0] =
                {2{vldcq_rls_ptr[0]}} & vldcq_entry_mew_0[1:0]
              | {2{vldcq_rls_ptr[1]}} & vldcq_entry_mew_1[1:0]
              | {2{vldcq_rls_ptr[2]}} & vldcq_entry_mew_2[1:0]
              | {2{vldcq_rls_ptr[3]}} & vldcq_entry_mew_3[1:0]
              | {2{vldcq_rls_ptr[4]}} & vldcq_entry_mew_4[1:0]
              | {2{vldcq_rls_ptr[5]}} & vldcq_entry_mew_5[1:0]
              | {2{vldcq_rls_ptr[6]}} & vldcq_entry_mew_6[1:0]
              | {2{vldcq_rls_ptr[7]}} & vldcq_entry_mew_7[1:0];
// &VectorSel("xx","wb_dcq_dbg_pc_oh","vldcq_rls_ptr","vldcq_entry_dbg_pc_oh_xx[`XPU_VPU_PC_TN_DBU_IDX_O @472
assign wb_dcq_dbg_pc_oh[5:0] =
                {6{vldcq_rls_ptr[0]}} & vldcq_entry_dbg_pc_oh_0[5:0]
              | {6{vldcq_rls_ptr[1]}} & vldcq_entry_dbg_pc_oh_1[5:0]
              | {6{vldcq_rls_ptr[2]}} & vldcq_entry_dbg_pc_oh_2[5:0]
              | {6{vldcq_rls_ptr[3]}} & vldcq_entry_dbg_pc_oh_3[5:0]
              | {6{vldcq_rls_ptr[4]}} & vldcq_entry_dbg_pc_oh_4[5:0]
              | {6{vldcq_rls_ptr[5]}} & vldcq_entry_dbg_pc_oh_5[5:0]
              | {6{vldcq_rls_ptr[6]}} & vldcq_entry_dbg_pc_oh_6[5:0]
              | {6{vldcq_rls_ptr[7]}} & vldcq_entry_dbg_pc_oh_7[5:0];
//------------------------------------------------------------------------------------------
// VI-3. WB Vreg
assign vldcq_wb_1st           = ~(|vldcq_wb_cnt[1:0]);
assign wb_vdreg_idx_cur[4:0]  = vldcq_wb_1st
                              ? wb_dcq_vdreg0_idx[4:0]
                              : wb_vdreg_idx[4:0];
// &CombBeg; @479
always @*
begin
casez (wb_dcq_emul[2:0])
    3'b1??  : dvreg_shift[4:0] = 5'h01;
    3'b000  : dvreg_shift[4:0] = 5'h01;
    3'b001  : dvreg_shift[4:0] = 5'h02;
    3'b010  : dvreg_shift[4:0] = 5'h04;
    3'b011  : dvreg_shift[4:0] = 5'h08;
    default : dvreg_shift[4:0] = {5{1'b0}};
endcase
// &CombEnd; @492
end

assign wb_vdreg_idx_nxt[4:0]  = wb_vdreg_idx_cur[4:0]
                              + dvreg_shift[4:0];
always @(posedge vldcq_clk) begin
  if(vldcq_wb_cnt_upd)
    wb_vdreg_idx[4:0] <= wb_vdreg_idx_nxt[4:0];
end

assign wb_rls_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0] = {vldcq_wb_cnt[1:0], wb_dcq_uid[`XPU_VPU_PC_TN_UID_WIDTH-3:0]};
//------------------------------------------------------------------------------------------
// VI-3. WB Byte Mask
// wb_byte_vld by VREG-size SPLITE
assign vldcq_wb_byte_vld_reg_bit8[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]=     wb_dcq_vmask[`XPU_VPU_PC_TN_VLSU_ENUM-1:0];
assign vldcq_wb_byte_vld_reg_half[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]= {{2{wb_dcq_vmask[7]}},
                                                       {2{wb_dcq_vmask[6]}},
                                                       {2{wb_dcq_vmask[5]}},
                                                       {2{wb_dcq_vmask[4]}},
                                                       {2{wb_dcq_vmask[3]}},
                                                       {2{wb_dcq_vmask[2]}},
                                                       {2{wb_dcq_vmask[1]}},
                                                       {2{wb_dcq_vmask[0]}}};
assign vldcq_wb_byte_vld_reg_word[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]= {{4{wb_dcq_vmask[3]}},
                                                       {4{wb_dcq_vmask[2]}},
                                                       {4{wb_dcq_vmask[1]}},
                                                       {4{wb_dcq_vmask[0]}}};

assign vldcq_wb_byte_vld_reg_dwrd[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]= {{8{wb_dcq_vmask[1]}},
                                                       {8{wb_dcq_vmask[0]}}};

// &CombBeg; @523
always @*
begin
case(wb_dcq_mew[1:0])
  BIT8    : vldcq_wb_byte_vld_reg[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = vldcq_wb_byte_vld_reg_bit8[`XPU_VPU_PC_TN_VLSU_ENUM-1:0];
  HALF    : vldcq_wb_byte_vld_reg[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = vldcq_wb_byte_vld_reg_half[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]; 
  WORD    : vldcq_wb_byte_vld_reg[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = vldcq_wb_byte_vld_reg_word[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]; 
  DWORD   : vldcq_wb_byte_vld_reg[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = vldcq_wb_byte_vld_reg_dwrd[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]; 
  default : vldcq_wb_byte_vld_reg[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {`XPU_VPU_PC_TN_VLSU_ENUM{1'b0}}; 
endcase
// &CombEnd; @535
end

assign vldcq_wb_byte_vld_lmul[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = vldcq_wb_byte_vld_reg[`XPU_VPU_PC_TN_VLSU_ENUM-1:0];
// wb_byte_vld by VSEG-size SPLITE
assign seg_vmask_vld = wb_dcq_vmask[0];

assign vldcq_wb_byte_vld_seg_bit8[7:0] = {7'h00,    seg_vmask_vld };
assign vldcq_wb_byte_vld_seg_half[7:0] = {6'h00, {2{seg_vmask_vld}}};
assign vldcq_wb_byte_vld_seg_word[7:0] = {4'h0 , {4{seg_vmask_vld}}};
assign vldcq_wb_byte_vld_seg_dwrd[7:0] = {       {8{seg_vmask_vld}}};

// &CombBeg; @546
always @*
begin
case(wb_dcq_mew[1:0])
  BIT8    : vldcq_wb_byte_vld_seg[7:0] = vldcq_wb_byte_vld_seg_bit8[7:0];
  HALF    : vldcq_wb_byte_vld_seg[7:0] = vldcq_wb_byte_vld_seg_half[7:0]; 
  WORD    : vldcq_wb_byte_vld_seg[7:0] = vldcq_wb_byte_vld_seg_word[7:0]; 
  DWORD   : vldcq_wb_byte_vld_seg[7:0] = vldcq_wb_byte_vld_seg_dwrd[7:0]; 
  default : vldcq_wb_byte_vld_seg[7:0] = {8{1'b0}}; 
endcase
// &CombEnd; @558
end
assign vldcq_wb_byte_vld_seg_final[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] = {{(`XPU_VPU_PC_TN_VLSU_ENUM-8){1'b0}}, vldcq_wb_byte_vld_seg[7:0]}
                                                      << wb_dcq_seg_shift[`XPU_VPU_PC_TN_VLSU_EIDX];
// final wb_byte_vld 
assign vlsu_wb_byte_vld[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]      = {`XPU_VPU_PC_TN_VLSU_ENUM{ wb_ptr_is_lmul_mode}} 
                                                & vldcq_wb_byte_vld_lmul[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]
                                                | {`XPU_VPU_PC_TN_VLSU_ENUM{~wb_ptr_is_lmul_mode}} 
                                                & vldcq_wb_byte_vld_seg_final[`XPU_VPU_PC_TN_VLSU_ENUM-1:0];

//------------------------------------------------------------------------------------------
// VI-4. WB Data Shift
assign vlsu_wb_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0]          = vlsu_wb_data_ori[`XPU_VPU_PC_TN_LANE_VLEN-1:0];

//------------------------------------------------------------------------------------------
// VI-5. WB Pipe
always@(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    wb_vld_ff <= 1'b0;
  else if(giu_xx_async_flush) 
    wb_vld_ff <= 1'b0;
  else if(vldcq_wb_fire | vldcq_entry_bypass)
    wb_vld_ff <= 1'b1;
  else
    wb_vld_ff <= 1'b0;
end

always@(posedge vldcq_clk or negedge cpurst_b)
begin
  if(~cpurst_b)
  begin
    wb_vld_ff_q <= 1'b0;
  end
  else
  begin
    wb_vld_ff_q <= wb_vld_ff;
  end
end

always@(posedge vldcq_clk) begin
  if(vldcq_wb_fire | vldcq_entry_bypass) begin
    wb_rls_uid_ff[`XPU_VPU_PC_TN_UID_WIDTH-1:0]  <= wb_rls_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0];
    wb_vdreg_idx_ff[4:0]              <= wb_vdreg_idx_cur[4:0];
    wb_byte_vld_ff[`XPU_VPU_PC_TN_VLSU_ENUM-1:0] <= vlsu_wb_byte_vld[`XPU_VPU_PC_TN_VLSU_ENUM-1:0];
    wb_data_ff[`XPU_VPU_PC_TN_LANE_VLEN-1:0]     <= vlsu_wb_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0];
    wb_last_ff                        <= vldcq_wb_last;
    wb_dvreg_last_ff                  <= wb_dcq_dvreg_last;
    wb_is_bypass_ff                   <= vldcq_entry_bypass;
  end
end
//------------------------------------------------------------------------------------------
// VI-6. NaN Check
// &Instance("tn_vlsu_nan_checker","x_tn_vlsu_nan_checker_ld"); @610
xpu_vpu_pc_tn_vlsu_nan_checker  x_tn_vlsu_nan_checker_ld (
  .lane_data_has_nan       (wb_data_has_nan        ),
  .vlsu_lane_data          (vlsu_wb_data_ori[127:0]),
  .vlsu_lane_mew           (wb_dcq_mew[1:0]        ),
  .vlsu_lane_strb          (vlsu_wb_byte_vld[15:0] )
);

// &Connect(.vlsu_lane_data(vlsu_wb_data_ori[`XPU_VPU_PC_TN_LANE_VLEN-1:0])); @611
// &Connect(.vlsu_lane_strb(vlsu_wb_byte_vld[`XPU_VPU_PC_TN_VLSU_ENUM-1:0])); @612
// &Connect(.vlsu_lane_mew(wb_dcq_mew[1:0])); @613
// &Connect(.lane_data_has_nan(wb_data_has_nan)); @614

always@(posedge vldcq_clk or negedge cpurst_b)
begin
  if(~cpurst_b)
  begin
    vldcq_wb_fire_q1 <= 1'b0;
  end
  else
  begin
    vldcq_wb_fire_q1 <= vldcq_wb_fire;
  end
end

assign vldcq_dbg_info_en =
  vldcq_wb_fire;

always@(posedge vldcq_clk)
begin
  if(vldcq_dbg_info_en)
  begin
    wb_data_has_nan_q1   <= wb_data_has_nan;
    wb_dcq_dbg_pc_vld_q1 <= wb_dcq_dbg_pc_vld;
    wb_dcq_dbg_pc_oh_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= wb_dcq_dbg_pc_oh[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];
  end
end

assign wb_ld_nan_vld_q1 =
  vldcq_wb_fire_q1 &
  wb_data_has_nan_q1 &
  wb_dcq_dbg_pc_vld_q1;

assign ld_nan_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] =
  {`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH{wb_ld_nan_vld_q1}} &
  wb_dcq_dbg_pc_oh_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];

assign ld_nan_vld_q2_en =
  wb_ld_nan_vld_q1 |
  (|ld_nan_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]);

assign ld_nan_vld_q2_ns[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] = ld_nan_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];

always@(posedge vldcq_clk or negedge cpurst_b)
begin
  if(~cpurst_b)
  begin
    ld_nan_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= {`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH{1'b0}};
  end
  else if(ld_nan_vld_q2_en)
  begin
    ld_nan_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= ld_nan_vld_q2_ns[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];
  end
end
assign ld_debug_vld   = vldcq_wb_done
                      & wb_dcq_dbg_pc_vld
                      & wb_ptr_is_op_last;

// dbg_vld flop
assign ld_dbg_vld_q1_en  =  
  ld_debug_vld |
  (|ld_dbg_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]);

assign ld_dbg_vld_q1_ns[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] =
  {`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH{ld_debug_vld}} & 
  wb_dcq_dbg_pc_oh[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];

always@(posedge vldcq_clk or negedge cpurst_b)
begin
  if(~cpurst_b)
  begin
    ld_dbg_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= {`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH{1'b0}};
  end
  else if(ld_dbg_vld_q1_en)
  begin
    ld_dbg_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= ld_dbg_vld_q1_ns[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];
  end
end 

assign ld_dbg_vld_q2_en =
  (|ld_dbg_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]) |
  (|ld_dbg_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]);

always@(posedge vldcq_clk or negedge cpurst_b)
begin
  if(~cpurst_b)
  begin
    ld_dbg_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= {`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH{1'b0}};
  end
  else if(ld_dbg_vld_q2_en)
  begin
    ld_dbg_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0] <= ld_dbg_vld_q1[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0];
  end
end

//------------------------------------------------------------------------------------------+ 
// VII. Expt Handler                                                                        |
//------------------------------------------------------------------------------------------+
always@(posedge vldcq_clk or negedge cpurst_b) begin
  if(~cpurst_b) 
    expt_vld <= 1'b0;
  else if(giu_xx_async_flush) 
    expt_vld <= 1'b0;
  else if(vlsu_expt_clr)
    expt_vld <= 1'b0;
  else if(vlsu_expt_vld)
    expt_vld <= 1'b1;
end
/==========================================================================================||
//               Output                                                                     ||
//==========================================================================================||
// 1. To VCP0
assign vlsu_vcp0_vldcq_empty                                  = vldcq_empty
                                                              &~wb_vld_ff                                 ;

// 2. To CMU
assign vlsu_cmu_lanex_rready                                  = vldcq_cmu_rready                          ;

assign vlsu_cmu_lanex_ld_vmask                                = vlas_idx_vm                               ;
assign vlsu_cmu_lanex_ld_idx_offset[`XPU_VPU_PC_TN_IDX_WIDTH-1:0]        = vlas_idx[`XPU_VPU_PC_TN_IDX_WIDTH-1:0]               ;
assign vlsu_cmu_lanex_vldcq_vld                               = vlas_icq_rvld;
// 3. To VREG FILE(VRF-stage)
assign vlsu_xx_wb_vld                                         = wb_vld_ff;
assign vlsu_xx_wb_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]                      = wb_rls_uid_ff[`XPU_VPU_PC_TN_UID_WIDTH-1:0]          ;
assign vlsu_xx_wb_idx[5:0]                                    = {1'b0, wb_vdreg_idx_ff[4:0]}              ;
assign vlsu_xx_wb_byte_vld[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]                 = wb_is_bypass_ff
                                                              ? {`XPU_VPU_PC_TN_VLSU_ENUM{1'b0}}
                                                              : wb_byte_vld_ff[`XPU_VPU_PC_TN_VLSU_ENUM-1:0]         ;
assign vlsu_xx_wb_data[`XPU_VPU_PC_TN_LANE_VLEN-1:0]                     = wb_data_ff[`XPU_VPU_PC_TN_LANE_VLEN-1:0]             ;
assign vlsu_xx_wb_last                                        = wb_last_ff                                ;
assign vlsu_xx_wb_vreg_last                                   = wb_dvreg_last_ff                          ;

// 4. To UIDT
assign lanex_vlsu_xx_wb_vld                                   = wb_vld_ff                                 ;
assign lanex_vlsu_xx_wb_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]                = wb_rls_uid_ff[`XPU_VPU_PC_TN_UID_WIDTH-1:0]          ;
assign lanex_vlsu_xx_wb_last                                  = wb_last_ff                                ;

// assign lanex_vlsu_vid_ld_dealloc_vld                          = vldcq_wb_done                             ;
assign lanex_vlsu_vid_vldcq_wb_vld                            = vldcq_wb_vld                              ;
assign lanex_vlsu_vid_vldcq_entry_bypass                      = vldcq_entry_bypass                        ;
assign lanex_vlsu_vid_vldcq_wb_peak                           = vldcq_wb_peak                             ;

assign lanex_vlsu_vid_ld_dealloc_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]       = wb_dcq_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]             ;

// 5. To Lane Collector
assign lanex_vlsu_col_ld_debug_vld[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]  = ld_dbg_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]      ;
assign lanex_vlsu_col_ld_nan_vld[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]    = ld_nan_vld_q2[`XPU_VPU_PC_TN_DBU_IDX_OH_WIDTH-1:0]      ;

// 6. Credit
// assign lanex_vlsu_vid_wkup_vld                                = vldcq_wb_done                             ;
assign lanex_vlsu_vid_wkup_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]             = wb_rls_uid[`XPU_VPU_PC_TN_UID_WIDTH-1:0]             ;

assign vlsu_vis_ret_vldcq_credit                              = vldcq_wb_done                             ;
assign vlsu_vis_ret_vlicq_credit                              = vlicq_rls_vld                             ;

// 7. To GIU
assign lanex_vlsu_giu_vldcq_full                              = vldcq_full
                                                              | vlicq_full                                ;


// &ModuleEnd; @816
endmodule
