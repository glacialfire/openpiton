// Modified by Princeton University on June 9th, 2015
/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: tlu_stb2b_trap_94.s
* Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
* 
* The above named program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License version 2 as published by the Free Software Foundation.
* 
* The above named program is distributed in the hope that it will be 
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
* 
* You should have received a copy of the GNU General Public
* License along with this work; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
* 
* ========== Copyright Header End ============================================
*/
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!! Diag: tlu_stb2b_trap_94.s
!! No. Threads: 1
!! Description: 
!! This diag tests the pic-verflow and asynchronous fpu trap
!! occuring at same time
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#define PCONTEXT	0x10
#define SCONTEXT	0x10

#define MAIN_PAGE_NUCLEUS_ALSO
#define MAIN_PAGE_HV_ALSO

#include "my_intr_handlers.s"
#define H_T0_Interrupt_Level_15_0x4f
#define My_T0_Interrupt_Level_15_0x4f \
	rd	%softint, %g1; \
	sethi	%hi(0x8000), %g1; \
	wr	%g1, %g0, %clear_softint; \
	rd	%pcr, %g1; \
	and	%g1, 0x300, %g2; \
	wr	%g1, %g2, %pcr; \
	add	%l6, 0x4f, %l6; \
	retry

#include "enable_traps.h"
#include "boot.s"

.text
.global main

main:
	nop
	th_fork(main_th)
main_th_0:
main_th_1:
main_th_2:
main_th_3:
        mov     16, %g7
wait_y3:
        cmp     %g7, %g0
        bne     %xcc, wait_y3
        dec     %g7
	nop
	mov	0, %l6
! Init float registers
	wr	%g0, 4, %fprs
	setx	data_start, %g1, %l2
	ld 	[%l2], %f0
	ld 	[%l2], %f4
	ld 	[%l2+16], %f8
	stx	%fsr, [%l2+32]
	ldx	[%l2+32], %g4
	setx	%hi(0x0f000000), %g1, %g3
	or	%g4, %g3, %g4
	stx	%g4, [%l2+32]
	ldx	[%l2+32], %fsr
	ta	T_CHANGE_HPRIV
	wrpr	%g0, 10, %pil
	wr	%g0, 4, %pcr
	setx	%hi(0xfffffffc00000000), %g1, %l0
	wr	%l0, %g0, %pic
	ta	T_CHANGE_NONHPRIV
	nop
	nop
	nop
	nop
fdiv_by_zero:
	fdivs   %f8, %f0, %f4
	nop
	nop
	nop
	nop
	cmp	%l6, 0x4f
	be	diag_pass
	nop
	ta	T_BAD_TRAP
	nop
	nop
	nop
	nop
	.data
data_start:
	.xword	0x0000000000000000
	.xword	0x64297dea458deb94
	.xword	0xbd070713e308fc36
	.xword	0x29f23727823c8f78
	.xword	0xd80b5ccc37147394
	.xword	0xc64c69ebc926ed5d
	.xword	0x270e7e9113cc3de6
	.xword	0xa2f677322b2a2a38
	.xword	0x52302adeb28379d7
	.xword	0x8a42179873392031
	.xword	0xaff96d180105a4b1
	.xword	0x489abc4fec910d6b
	.xword	0x96d7f84d6574e032
	.xword	0xfb0ef60b1312532d
	.xword	0x256c9a247076602a
	.xword	0x55c7f7f7f1df3ffc
.text
 /********************************
  *      Diag PASSED !           *
  ********************************/
diag_pass:
	ta	T_GOOD_TRAP

.data
	.xword 0x1234567887654321


