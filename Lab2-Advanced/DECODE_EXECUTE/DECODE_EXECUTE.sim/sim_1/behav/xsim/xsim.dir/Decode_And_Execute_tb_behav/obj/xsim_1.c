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
IKI_DLLESPEC extern void execute_1364(char*, char *);
IKI_DLLESPEC extern void execute_3323(char*, char *);
IKI_DLLESPEC extern void execute_3324(char*, char *);
IKI_DLLESPEC extern void execute_3325(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_1372(char*, char *);
IKI_DLLESPEC extern void execute_1370(char*, char *);
IKI_DLLESPEC extern void execute_1371(char*, char *);
IKI_DLLESPEC extern void execute_15(char*, char *);
IKI_DLLESPEC extern void execute_1380(char*, char *);
IKI_DLLESPEC extern void execute_26(char*, char *);
IKI_DLLESPEC extern void execute_1396(char*, char *);
IKI_DLLESPEC extern void execute_1397(char*, char *);
IKI_DLLESPEC extern void execute_1398(char*, char *);
IKI_DLLESPEC extern void execute_1399(char*, char *);
IKI_DLLESPEC extern void execute_658(char*, char *);
IKI_DLLESPEC extern void execute_2243(char*, char *);
IKI_DLLESPEC extern void execute_710(char*, char *);
IKI_DLLESPEC extern void execute_2328(char*, char *);
IKI_DLLESPEC extern void execute_2329(char*, char *);
IKI_DLLESPEC extern void execute_2330(char*, char *);
IKI_DLLESPEC extern void execute_2331(char*, char *);
IKI_DLLESPEC extern void execute_716(char*, char *);
IKI_DLLESPEC extern void execute_2340(char*, char *);
IKI_DLLESPEC extern void execute_2341(char*, char *);
IKI_DLLESPEC extern void execute_2342(char*, char *);
IKI_DLLESPEC extern void execute_2343(char*, char *);
IKI_DLLESPEC extern void execute_827(char*, char *);
IKI_DLLESPEC extern void execute_2488(char*, char *);
IKI_DLLESPEC extern void execute_2489(char*, char *);
IKI_DLLESPEC extern void execute_2490(char*, char *);
IKI_DLLESPEC extern void execute_962(char*, char *);
IKI_DLLESPEC extern void execute_2679(char*, char *);
IKI_DLLESPEC extern void execute_2680(char*, char *);
IKI_DLLESPEC extern void execute_2681(char*, char *);
IKI_DLLESPEC extern void execute_1366(char*, char *);
IKI_DLLESPEC extern void execute_1367(char*, char *);
IKI_DLLESPEC extern void execute_1368(char*, char *);
IKI_DLLESPEC extern void execute_1369(char*, char *);
IKI_DLLESPEC extern void execute_3326(char*, char *);
IKI_DLLESPEC extern void execute_3327(char*, char *);
IKI_DLLESPEC extern void execute_3328(char*, char *);
IKI_DLLESPEC extern void execute_3329(char*, char *);
IKI_DLLESPEC extern void execute_3330(char*, char *);
IKI_DLLESPEC extern void execute_3331(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[46] = {(funcp)execute_1364, (funcp)execute_3323, (funcp)execute_3324, (funcp)execute_3325, (funcp)execute_8, (funcp)execute_1372, (funcp)execute_1370, (funcp)execute_1371, (funcp)execute_15, (funcp)execute_1380, (funcp)execute_26, (funcp)execute_1396, (funcp)execute_1397, (funcp)execute_1398, (funcp)execute_1399, (funcp)execute_658, (funcp)execute_2243, (funcp)execute_710, (funcp)execute_2328, (funcp)execute_2329, (funcp)execute_2330, (funcp)execute_2331, (funcp)execute_716, (funcp)execute_2340, (funcp)execute_2341, (funcp)execute_2342, (funcp)execute_2343, (funcp)execute_827, (funcp)execute_2488, (funcp)execute_2489, (funcp)execute_2490, (funcp)execute_962, (funcp)execute_2679, (funcp)execute_2680, (funcp)execute_2681, (funcp)execute_1366, (funcp)execute_1367, (funcp)execute_1368, (funcp)execute_1369, (funcp)execute_3326, (funcp)execute_3327, (funcp)execute_3328, (funcp)execute_3329, (funcp)execute_3330, (funcp)execute_3331, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 46;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Decode_And_Execute_tb_behav/xsim.reloc",  (void **)funcTab, 46);

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
