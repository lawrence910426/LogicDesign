/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_1075(char*, char *);
IKI_DLLESPEC extern void execute_3034(char*, char *);
IKI_DLLESPEC extern void execute_3035(char*, char *);
IKI_DLLESPEC extern void execute_3036(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_1081(char*, char *);
IKI_DLLESPEC extern void execute_1082(char*, char *);
IKI_DLLESPEC extern void execute_1954(char*, char *);
IKI_DLLESPEC extern void execute_1077(char*, char *);
IKI_DLLESPEC extern void execute_1078(char*, char *);
IKI_DLLESPEC extern void execute_1079(char*, char *);
IKI_DLLESPEC extern void execute_1080(char*, char *);
IKI_DLLESPEC extern void execute_3037(char*, char *);
IKI_DLLESPEC extern void execute_3038(char*, char *);
IKI_DLLESPEC extern void execute_3039(char*, char *);
IKI_DLLESPEC extern void execute_3040(char*, char *);
IKI_DLLESPEC extern void execute_3041(char*, char *);
IKI_DLLESPEC extern void execute_3042(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[19] = {(funcp)execute_1075, (funcp)execute_3034, (funcp)execute_3035, (funcp)execute_3036, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1081, (funcp)execute_1082, (funcp)execute_1954, (funcp)execute_1077, (funcp)execute_1078, (funcp)execute_1079, (funcp)execute_1080, (funcp)execute_3037, (funcp)execute_3038, (funcp)execute_3039, (funcp)execute_3040, (funcp)execute_3041, (funcp)execute_3042, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 19;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Decode_And_Execute_tb_behav/xsim.reloc",  (void **)funcTab, 19);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Decode_And_Execute_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Decode_And_Execute_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Decode_And_Execute_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Decode_And_Execute_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Decode_And_Execute_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
