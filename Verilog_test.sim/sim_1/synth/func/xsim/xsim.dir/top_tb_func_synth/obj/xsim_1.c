/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_897(char*, char *);
extern void execute_898(char*, char *);
extern void execute_899(char*, char *);
extern void execute_900(char*, char *);
extern void execute_901(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_10(char*, char *);
extern void execute_11(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_430(char*, char *);
extern void execute_431(char*, char *);
extern void execute_432(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_436(char*, char *);
extern void execute_437(char*, char *);
extern void execute_438(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_38(char*, char *);
extern void execute_444(char*, char *);
extern void execute_445(char*, char *);
extern void execute_443(char*, char *);
extern void execute_41(char*, char *);
extern void execute_447(char*, char *);
extern void execute_448(char*, char *);
extern void execute_449(char*, char *);
extern void execute_450(char*, char *);
extern void execute_446(char*, char *);
extern void execute_88(char*, char *);
extern void execute_507(char*, char *);
extern void execute_508(char*, char *);
extern void execute_509(char*, char *);
extern void execute_848(char*, char *);
extern void execute_849(char*, char *);
extern void execute_126(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_531(char*, char *);
extern void execute_578(char*, char *);
extern void execute_579(char*, char *);
extern void execute_580(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_586(char*, char *);
extern void execute_412(char*, char *);
extern void execute_883(char*, char *);
extern void execute_886(char*, char *);
extern void execute_887(char*, char *);
extern void execute_888(char*, char *);
extern void execute_425(char*, char *);
extern void execute_426(char*, char *);
extern void execute_427(char*, char *);
extern void execute_902(char*, char *);
extern void execute_903(char*, char *);
extern void execute_904(char*, char *);
extern void execute_905(char*, char *);
extern void execute_906(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_296(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_365(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_519(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_523(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_531(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_551(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_555(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_563(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_567(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_571(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_644(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_648(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_668(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_672(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[159] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_897, (funcp)execute_898, (funcp)execute_899, (funcp)execute_900, (funcp)execute_901, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_10, (funcp)execute_11, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_14, (funcp)execute_15, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_430, (funcp)execute_431, (funcp)execute_432, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_436, (funcp)execute_437, (funcp)execute_438, (funcp)execute_34, (funcp)execute_35, (funcp)execute_38, (funcp)execute_444, (funcp)execute_445, (funcp)execute_443, (funcp)execute_41, (funcp)execute_447, (funcp)execute_448, (funcp)execute_449, (funcp)execute_450, (funcp)execute_446, (funcp)execute_88, (funcp)execute_507, (funcp)execute_508, (funcp)execute_509, (funcp)execute_848, (funcp)execute_849, (funcp)execute_126, (funcp)execute_532, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_531, (funcp)execute_578, (funcp)execute_579, (funcp)execute_580, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_586, (funcp)execute_412, (funcp)execute_883, (funcp)execute_886, (funcp)execute_887, (funcp)execute_888, (funcp)execute_425, (funcp)execute_426, (funcp)execute_427, (funcp)execute_902, (funcp)execute_903, (funcp)execute_904, (funcp)execute_905, (funcp)execute_906, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_19, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_169, (funcp)transaction_170, (funcp)transaction_171, (funcp)transaction_172, (funcp)transaction_173, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_179, (funcp)transaction_180, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_188, (funcp)transaction_189, (funcp)transaction_190, (funcp)transaction_191, (funcp)transaction_192, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_203, (funcp)transaction_214, (funcp)transaction_215, (funcp)transaction_75, (funcp)transaction_79, (funcp)transaction_83, (funcp)transaction_87, (funcp)transaction_130, (funcp)transaction_134, (funcp)transaction_138, (funcp)transaction_142, (funcp)transaction_146, (funcp)transaction_150, (funcp)transaction_154, (funcp)transaction_288, (funcp)transaction_292, (funcp)transaction_296, (funcp)transaction_345, (funcp)transaction_349, (funcp)transaction_353, (funcp)transaction_357, (funcp)transaction_361, (funcp)transaction_365, (funcp)transaction_369, (funcp)transaction_378, (funcp)transaction_511, (funcp)transaction_515, (funcp)transaction_519, (funcp)transaction_523, (funcp)transaction_527, (funcp)transaction_531, (funcp)transaction_535, (funcp)transaction_539, (funcp)transaction_543, (funcp)transaction_547, (funcp)transaction_551, (funcp)transaction_555, (funcp)transaction_559, (funcp)transaction_563, (funcp)transaction_567, (funcp)transaction_571, (funcp)transaction_644, (funcp)transaction_648, (funcp)transaction_652, (funcp)transaction_656, (funcp)transaction_660, (funcp)transaction_664, (funcp)transaction_668, (funcp)transaction_672, (funcp)transaction_694, (funcp)transaction_698, (funcp)transaction_702};
const int NumRelocateId= 159;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_func_synth/xsim.reloc",  (void **)funcTab, 159);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_tb_func_synth/xsim.reloc");
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
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/top_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
