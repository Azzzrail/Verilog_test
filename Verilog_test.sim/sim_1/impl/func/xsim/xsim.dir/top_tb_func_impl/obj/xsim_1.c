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
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_280(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_370(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_514(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_526(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_550(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_558(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_562(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_643(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_647(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_651(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_655(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_659(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_663(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_685(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_689(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_693(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[150] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_897, (funcp)execute_898, (funcp)execute_899, (funcp)execute_900, (funcp)execute_901, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_10, (funcp)execute_11, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_14, (funcp)execute_15, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_430, (funcp)execute_431, (funcp)execute_432, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_436, (funcp)execute_437, (funcp)execute_438, (funcp)execute_34, (funcp)execute_35, (funcp)execute_38, (funcp)execute_444, (funcp)execute_445, (funcp)execute_443, (funcp)execute_41, (funcp)execute_447, (funcp)execute_448, (funcp)execute_449, (funcp)execute_450, (funcp)execute_446, (funcp)execute_88, (funcp)execute_507, (funcp)execute_508, (funcp)execute_509, (funcp)execute_848, (funcp)execute_849, (funcp)execute_126, (funcp)execute_532, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_531, (funcp)execute_578, (funcp)execute_579, (funcp)execute_580, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_586, (funcp)execute_412, (funcp)execute_883, (funcp)execute_886, (funcp)execute_887, (funcp)execute_888, (funcp)execute_425, (funcp)execute_426, (funcp)execute_427, (funcp)execute_902, (funcp)execute_903, (funcp)execute_904, (funcp)execute_905, (funcp)execute_906, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_19, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_169, (funcp)transaction_170, (funcp)transaction_171, (funcp)transaction_172, (funcp)transaction_173, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_182, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_185, (funcp)transaction_186, (funcp)transaction_192, (funcp)transaction_203, (funcp)transaction_204, (funcp)transaction_205, (funcp)transaction_207, (funcp)transaction_75, (funcp)transaction_79, (funcp)transaction_83, (funcp)transaction_87, (funcp)transaction_130, (funcp)transaction_134, (funcp)transaction_138, (funcp)transaction_142, (funcp)transaction_146, (funcp)transaction_150, (funcp)transaction_154, (funcp)transaction_280, (funcp)transaction_284, (funcp)transaction_288, (funcp)transaction_337, (funcp)transaction_341, (funcp)transaction_345, (funcp)transaction_349, (funcp)transaction_353, (funcp)transaction_357, (funcp)transaction_361, (funcp)transaction_370, (funcp)transaction_502, (funcp)transaction_506, (funcp)transaction_510, (funcp)transaction_514, (funcp)transaction_518, (funcp)transaction_522, (funcp)transaction_526, (funcp)transaction_530, (funcp)transaction_534, (funcp)transaction_538, (funcp)transaction_542, (funcp)transaction_546, (funcp)transaction_550, (funcp)transaction_554, (funcp)transaction_558, (funcp)transaction_562, (funcp)transaction_635, (funcp)transaction_639, (funcp)transaction_643, (funcp)transaction_647, (funcp)transaction_651, (funcp)transaction_655, (funcp)transaction_659, (funcp)transaction_663, (funcp)transaction_685, (funcp)transaction_689, (funcp)transaction_693};
const int NumRelocateId= 150;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_func_impl/xsim.reloc",  (void **)funcTab, 150);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_tb_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/top_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
