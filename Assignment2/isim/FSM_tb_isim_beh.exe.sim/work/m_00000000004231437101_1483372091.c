/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/hegartso/Documents/3c7/Assignment2/Assignment2/LightControl.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};



static void Always_39_0(char *t0)
{
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t13;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4944);
    *((int *)t2) = 1;
    t3 = (t0 + 4408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1616U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(46, ng0);

LAB9:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3136);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3456);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(41, ng0);

LAB8:    xsi_set_current_line(42, ng0);
    t11 = ((char*)((ng1)));
    memcpy(t12, t11, 8);
    t13 = (t0 + 3136);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3456);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB7;

}

static void Always_53_1(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4960);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 3136);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2976);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 3, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(160, ng0);

LAB40:    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng1)));
    memcpy(t16, t2, 8);
    t3 = (t0 + 2976);
    xsi_vlogvar_assign_value(t3, t16, 0, 0, 3);

LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(75, ng0);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t7 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB16;

LAB17:
LAB18:    goto LAB15;

LAB9:    xsi_set_current_line(109, ng0);

LAB25:    xsi_set_current_line(110, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2656);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(116, ng0);

LAB26:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2096U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng2)));
    memcpy(t16, t2, 8);
    t3 = (t0 + 2976);
    xsi_vlogvar_assign_value(t3, t16, 0, 0, 3);

LAB29:    goto LAB15;

LAB11:    xsi_set_current_line(139, ng0);
    t3 = (t0 + 1456U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB31;

LAB32:
LAB33:    goto LAB15;

LAB16:    xsi_set_current_line(76, ng0);

LAB19:    xsi_set_current_line(77, ng0);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 2656);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(84, ng0);

LAB20:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng1)));
    memcpy(t16, t2, 8);
    t3 = (t0 + 2976);
    xsi_vlogvar_assign_value(t3, t16, 0, 0, 3);

LAB23:    goto LAB18;

LAB21:    xsi_set_current_line(86, ng0);

LAB24:    xsi_set_current_line(87, ng0);
    t5 = ((char*)((ng2)));
    memcpy(t16, t5, 8);
    t6 = (t0 + 2976);
    xsi_vlogvar_assign_value(t6, t16, 0, 0, 3);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB27:    xsi_set_current_line(118, ng0);

LAB30:    xsi_set_current_line(119, ng0);
    t5 = ((char*)((ng3)));
    memcpy(t16, t5, 8);
    t6 = (t0 + 2976);
    xsi_vlogvar_assign_value(t6, t16, 0, 0, 3);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB29;

LAB31:    xsi_set_current_line(140, ng0);

LAB34:    xsi_set_current_line(141, ng0);
    t6 = ((char*)((ng1)));
    t7 = (t0 + 2656);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(148, ng0);

LAB35:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 1936U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng3)));
    memcpy(t16, t2, 8);
    t3 = (t0 + 2976);
    xsi_vlogvar_assign_value(t3, t16, 0, 0, 3);

LAB38:    goto LAB33;

LAB36:    xsi_set_current_line(150, ng0);

LAB39:    xsi_set_current_line(151, ng0);
    t5 = ((char*)((ng1)));
    memcpy(t16, t5, 8);
    t6 = (t0 + 2976);
    xsi_vlogvar_assign_value(t6, t16, 0, 0, 3);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

}


extern void work_m_00000000004231437101_1483372091_init()
{
	static char *pe[] = {(void *)Always_39_0,(void *)Always_53_1};
	xsi_register_didat("work_m_00000000004231437101_1483372091", "isim/FSM_tb_isim_beh.exe.sim/work/m_00000000004231437101_1483372091.didat");
	xsi_register_executes(pe);
}
