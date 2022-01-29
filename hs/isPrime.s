	.section	__TEXT,__text,regular,pure_instructions
	.p2align	3                               ; -- Begin function s1jg_info$def
ltmp0:                                  ; @"s1jg_info$def"
	.quad	__u1ku_srt$def-_s1jg_info$def
	.quad	1                               ; 0x1
	.long	16                              ; 0x10
	.long	1                               ; 0x1
	.alt_entry	_s1jg_info$def
_s1jg_info$def:
; %bb.0:                                ; %n1kv
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.hs	LBB0_2
; %bb.1:                                ; %c1jw
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB0_2:                                 ; %c1jx
Lloh0:
	adrp	x8, _stg_upd_frame_info@GOTPAGE
Lloh1:
	ldr	x8, [x8, _stg_upd_frame_info@GOTPAGEOFF]
	stp	x8, x22, [x20, #-16]!
	ldr	x24, [x22, #16]
Lloh2:
	adrp	x23, _base_GHCziRead_zdfReadInteger_closure@GOTPAGE
Lloh3:
	ldr	x23, [x23, _base_GHCziRead_zdfReadInteger_closure@GOTPAGEOFF]
Lloh4:
	adrp	x22, _base_TextziRead_read_closure@GOTPAGE
Lloh5:
	ldr	x22, [x22, _base_TextziRead_read_closure@GOTPAGEOFF]
	bl	_stg_ap_pp_fast
	ret
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
                                        ; -- End function
	.p2align	3                               ; -- Begin function s1ji_info$def
ltmp1:                                  ; @"s1ji_info$def"
	.quad	__u1kr_srt$def-_s1ji_info$def
	.quad	0                               ; 0x0
	.long	15                              ; 0xf
	.long	1                               ; 0x1
	.alt_entry	_s1ji_info$def
_s1ji_info$def:
; %bb.0:                                ; %n1l7
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.hs	LBB1_2
; %bb.1:                                ; %c1jM
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB1_2:                                 ; %c1jN
Lloh6:
	adrp	x8, _stg_upd_frame_info@GOTPAGE
Lloh7:
	ldr	x8, [x8, _stg_upd_frame_info@GOTPAGEOFF]
	stp	x8, x22, [x20, #-16]!
Lloh8:
	adrp	x23, _c1jK_str$def@PAGE
Lloh9:
	add	x23, x23, _c1jK_str$def@PAGEOFF
Lloh10:
	adrp	x22, _ghczmprim_GHCziCString_unpackCStringzh_closure@GOTPAGE
Lloh11:
	ldr	x22, [x22, _ghczmprim_GHCziCString_unpackCStringzh_closure@GOTPAGEOFF]
	bl	_stg_ap_n_fast
	ret
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
                                        ; -- End function
	.p2align	3                               ; -- Begin function s1jj_info$def
ltmp2:                                  ; @"s1jj_info$def"
	.quad	__u1ks_srt$def-_s1jj_info$def
	.quad	1                               ; 0x1
	.long	16                              ; 0x10
	.long	1                               ; 0x1
	.alt_entry	_s1jj_info$def
_s1jj_info$def:
; %bb.0:                                ; %n1lC
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.lo	LBB2_3
; %bb.1:                                ; %c1jQ
	add	x21, x21, #16                   ; =16
	ldr	x8, [x19, #856]
	cmp	x21, x8
	b.ls	LBB2_4
; %bb.2:                                ; %c1jS
	mov	w8, #16
	str	x8, [x19, #904]
LBB2_3:                                 ; %c1jP
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB2_4:                                 ; %c1jR
Lloh12:
	adrp	x8, _stg_upd_frame_info@GOTPAGE
Lloh13:
	ldr	x8, [x8, _stg_upd_frame_info@GOTPAGEOFF]
	stp	x8, x22, [x20, #-16]!
Lloh14:
	adrp	x8, _s1ji_info$def@PAGE
Lloh15:
	add	x8, x8, _s1ji_info$def@PAGEOFF
	ldr	x23, [x22, #16]
	mov	x24, x21
	str	x8, [x24, #-8]!
Lloh16:
	adrp	x22, _base_GHCziBase_zpzp_closure@GOTPAGE
Lloh17:
	ldr	x22, [x22, _base_GHCziBase_zpzp_closure@GOTPAGEOFF]
	bl	_stg_ap_pp_fast
	ret
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
                                        ; -- End function
	.p2align	3                               ; -- Begin function s1jk_info$def
ltmp3:                                  ; @"s1jk_info$def"
	.quad	__u1kr_srt$def-_s1jk_info$def
	.quad	0                               ; 0x0
	.long	15                              ; 0xf
	.long	1                               ; 0x1
	.alt_entry	_s1jk_info$def
_s1jk_info$def:
; %bb.0:                                ; %n1mx
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.hs	LBB3_2
; %bb.1:                                ; %c1k5
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB3_2:                                 ; %c1k6
Lloh18:
	adrp	x8, _stg_upd_frame_info@GOTPAGE
Lloh19:
	ldr	x8, [x8, _stg_upd_frame_info@GOTPAGEOFF]
	stp	x8, x22, [x20, #-16]!
Lloh20:
	adrp	x23, _c1k3_str$def@PAGE
Lloh21:
	add	x23, x23, _c1k3_str$def@PAGEOFF
Lloh22:
	adrp	x22, _ghczmprim_GHCziCString_unpackCStringzh_closure@GOTPAGE
Lloh23:
	ldr	x22, [x22, _ghczmprim_GHCziCString_unpackCStringzh_closure@GOTPAGEOFF]
	bl	_stg_ap_n_fast
	ret
	.loh AdrpLdrGot	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
                                        ; -- End function
	.p2align	3                               ; -- Begin function s1jl_info$def
ltmp4:                                  ; @"s1jl_info$def"
	.quad	__u1ks_srt$def-_s1jl_info$def
	.quad	1                               ; 0x1
	.long	16                              ; 0x10
	.long	1                               ; 0x1
	.alt_entry	_s1jl_info$def
_s1jl_info$def:
; %bb.0:                                ; %n1n2
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.lo	LBB4_3
; %bb.1:                                ; %c1k9
	add	x21, x21, #16                   ; =16
	ldr	x8, [x19, #856]
	cmp	x21, x8
	b.ls	LBB4_4
; %bb.2:                                ; %c1kb
	mov	w8, #16
	str	x8, [x19, #904]
LBB4_3:                                 ; %c1k8
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB4_4:                                 ; %c1ka
Lloh24:
	adrp	x8, _stg_upd_frame_info@GOTPAGE
Lloh25:
	ldr	x8, [x8, _stg_upd_frame_info@GOTPAGEOFF]
	stp	x8, x22, [x20, #-16]!
Lloh26:
	adrp	x8, _s1jk_info$def@PAGE
Lloh27:
	add	x8, x8, _s1jk_info$def@PAGEOFF
	ldr	x23, [x22, #16]
	mov	x24, x21
	str	x8, [x24, #-8]!
Lloh28:
	adrp	x22, _base_GHCziBase_zpzp_closure@GOTPAGE
Lloh29:
	ldr	x22, [x22, _base_GHCziBase_zpzp_closure@GOTPAGEOFF]
	bl	_stg_ap_pp_fast
	ret
	.loh AdrpLdrGot	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
                                        ; -- End function
	.p2align	3                               ; -- Begin function s1jm_info$def
ltmp5:                                  ; @"s1jm_info$def"
	.quad	4294967301                      ; 0x100000005
	.quad	3                               ; 0x3
	.long	14                              ; 0xe
	.long	0                               ; 0x0
	.alt_entry	_s1jm_info$def
_s1jm_info$def:
; %bb.0:                                ; %n1nX
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.lo	LBB5_3
; %bb.1:                                ; %c1ki
	add	x21, x21, #24                   ; =24
	ldr	x8, [x19, #856]
	cmp	x21, x8
	b.ls	LBB5_4
; %bb.2:                                ; %c1kk
	mov	w8, #24
	str	x8, [x19, #904]
LBB5_3:                                 ; %c1kh
Lloh30:
	adrp	x22, _s1jm_closure$def@PAGE
Lloh31:
	add	x22, x22, _s1jm_closure$def@PAGEOFF
	ldur	x8, [x19, #-8]
	blr	x8
	ret
LBB5_4:                                 ; %c1kj
Lloh32:
	adrp	x9, _s1jg_info$def@PAGE
Lloh33:
	add	x9, x9, _s1jg_info$def@PAGEOFF
	mov	x8, x21
	str	x9, [x8, #-16]!
Lloh34:
	adrp	x9, _c1jy_info$def@PAGE
Lloh35:
	add	x9, x9, _c1jy_info$def@PAGEOFF
	str	x23, [x21]
	str	x9, [x20, #-16]!
Lloh36:
	adrp	x22, _IsPrimeLib_isPrime_closure@GOTPAGE
Lloh37:
	ldr	x22, [x22, _IsPrimeLib_isPrime_closure@GOTPAGEOFF]
	str	x23, [x20, #8]
	mov	x23, x8
	bl	_stg_ap_p_fast
	ret
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
                                        ; -- End function
	.p2align	3                               ; -- Begin function c1jy_info$def
ltmp6:                                  ; @"c1jy_info$def"
	.quad	__u1kt_srt$def-_c1jy_info$def
	.quad	1                               ; 0x1
	.long	30                              ; 0x1e
	.long	1                               ; 0x1
	.alt_entry	_c1jy_info$def
_c1jy_info$def:
; %bb.0:                                ; %n1oR
	ldr	x8, [x20, #8]
	and	x10, x22, #0x7
	add	x21, x21, #24                   ; =24
	ldr	x9, [x19, #856]
	cmp	x21, x9
	cset	w9, hi
	cmp	x10, #2                         ; =2
	b.ne	LBB6_3
; %bb.1:                                ; %c1ke
	tbnz	w9, #0, LBB6_4
; %bb.2:                                ; %c1kp
Lloh38:
	adrp	x9, _s1jl_info$def@PAGE
Lloh39:
	add	x9, x9, _s1jl_info$def@PAGEOFF
	b	LBB6_6
LBB6_3:                                 ; %c1kd
	tbz	w9, #0, LBB6_5
LBB6_4:                                 ; %c1kn
	mov	w8, #24
	str	x8, [x19, #904]
	bl	_stg_gc_unpt_r1
	ret
LBB6_5:                                 ; %c1km
Lloh40:
	adrp	x9, _s1jj_info$def@PAGE
Lloh41:
	add	x9, x9, _s1jj_info$def@PAGEOFF
LBB6_6:                                 ; %c1km
	mov	x24, x21
	str	x9, [x24, #-16]!
	str	x8, [x21]
Lloh42:
	adrp	x23, _base_SystemziIO_putStrLn_closure@GOTPAGE
Lloh43:
	ldr	x23, [x23, _base_SystemziIO_putStrLn_closure@GOTPAGEOFF]
Lloh44:
	adrp	x22, _base_GHCziBase_zd_closure@GOTPAGE
Lloh45:
	ldr	x22, [x22, _base_GHCziBase_zd_closure@GOTPAGEOFF]
	add	x20, x20, #16                   ; =16
	bl	_stg_ap_pp_fast
	ret
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh42, Lloh43
                                        ; -- End function
	.globl	_Main_main_info$def             ; -- Begin function Main_main_info$def
	.p2align	3
ltmp7:                                  ; @"Main_main_info$def"
	.quad	__u1qp_srt$def-_Main_main_info$def
	.quad	0                               ; 0x0
	.long	21                              ; 0x15
	.long	1                               ; 0x1
	.alt_entry	_Main_main_info$def
_Main_main_info$def:
; %bb.0:                                ; %n1qq
	sub	x8, x20, #40                    ; =40
	cmp	x8, x28
	b.hs	LBB7_2
; %bb.1:                                ; %c1qn
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB7_2:                                 ; %c1qo
	mov	x0, x19
	mov	x1, x22
	bl	_newCAF
	cbz	x0, LBB7_4
; %bb.3:                                ; %c1qk
Lloh46:
	adrp	x8, _stg_bh_upd_frame_info@GOTPAGE
Lloh47:
	ldr	x8, [x8, _stg_bh_upd_frame_info@GOTPAGEOFF]
Lloh48:
	adrp	x9, _stg_ap_pp_info@GOTPAGE
Lloh49:
	ldr	x9, [x9, _stg_ap_pp_info@GOTPAGEOFF]
	str	x9, [x20, #-40]!
	stp	x8, x0, [x20, #24]
Lloh50:
	adrp	x23, _base_GHCziBase_zdfMonadIO_closure@GOTPAGE
Lloh51:
	ldr	x23, [x23, _base_GHCziBase_zdfMonadIO_closure@GOTPAGEOFF]
Lloh52:
	adrp	x8, _base_SystemziIO_getLine_closure@GOTPAGE
Lloh53:
	ldr	x8, [x8, _base_SystemziIO_getLine_closure@GOTPAGEOFF]
Lloh54:
	adrp	x9, _s1jm_closure$def@PAGE+1
Lloh55:
	add	x9, x9, _s1jm_closure$def@PAGEOFF+1
	stp	x8, x9, [x20, #8]
	bl	_base_GHCziBase_zgzgze_info
	ret
LBB7_4:                                 ; %c1ql
	ldr	x8, [x22]
	blr	x8
	ret
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpLdrGot	Lloh46, Lloh47
                                        ; -- End function
	.globl	_ZCMain_main_info$def           ; -- Begin function ZCMain_main_info$def
	.p2align	3
ltmp8:                                  ; @"ZCMain_main_info$def"
	.quad	__u1rs_srt$def-_ZCMain_main_info$def
	.quad	0                               ; 0x0
	.long	21                              ; 0x15
	.long	1                               ; 0x1
	.alt_entry	_ZCMain_main_info$def
_ZCMain_main_info$def:
; %bb.0:                                ; %n1rt
	sub	x8, x20, #16                    ; =16
	cmp	x8, x28
	b.hs	LBB8_2
; %bb.1:                                ; %c1rq
	ldur	x8, [x19, #-16]
	blr	x8
	ret
LBB8_2:                                 ; %c1rr
	mov	x0, x19
	mov	x1, x22
	bl	_newCAF
	cbz	x0, LBB8_4
; %bb.3:                                ; %c1rn
Lloh56:
	adrp	x8, _stg_bh_upd_frame_info@GOTPAGE
Lloh57:
	ldr	x8, [x8, _stg_bh_upd_frame_info@GOTPAGEOFF]
	stp	x8, x0, [x20, #-16]!
Lloh58:
	adrp	x23, _Main_main_closure$def@PAGE
Lloh59:
	add	x23, x23, _Main_main_closure$def@PAGEOFF
Lloh60:
	adrp	x22, _base_GHCziTopHandler_runMainIO_closure@GOTPAGE
Lloh61:
	ldr	x22, [x22, _base_GHCziTopHandler_runMainIO_closure@GOTPAGEOFF]
	bl	_stg_ap_p_fast
	ret
LBB8_4:                                 ; %c1ro
	ldr	x8, [x22]
	blr	x8
	ret
	.loh AdrpLdrGot	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpLdrGot	Lloh56, Lloh57
                                        ; -- End function
	.section	__TEXT,__const
_r1j2_bytes$def:                        ; @"r1j2_bytes$def"
	.asciz	"main"

	.section	__DATA,__data
	.p2align	3                               ; @"r1jb_closure$def"
_r1jb_closure$def:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1j2_bytes$def

	.section	__TEXT,__const
_r1jc_bytes$def:                        ; @"r1jc_bytes$def"
	.asciz	"Main"

	.section	__DATA,__data
	.p2align	3                               ; @"r1jd_closure$def"
_r1jd_closure$def:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1jc_bytes$def

	.globl	_Main_zdtrModule_closure        ; @Main_zdtrModule_closure
	.p2align	4
_Main_zdtrModule_closure:
	.quad	_ghczmprim_GHCziTypes_Module_con_info
	.quad	_r1jb_closure$def+1
	.quad	_r1jd_closure$def+1
	.quad	3                               ; 0x3

	.p2align	4                               ; @"_u1kr_srt$def"
__u1kr_srt$def:
	.quad	_stg_SRT_1_info
	.quad	_ghczmprim_GHCziCString_unpackCStringzh_closure
	.quad	0                               ; 0x0

	.p2align	4                               ; @"_u1ks_srt$def"
__u1ks_srt$def:
	.quad	_stg_SRT_2_info
	.quad	_base_GHCziBase_zpzp_closure
	.quad	__u1kr_srt$def
	.quad	0                               ; 0x0

	.p2align	4                               ; @"_u1kt_srt$def"
__u1kt_srt$def:
	.quad	_stg_SRT_3_info
	.quad	_base_GHCziBase_zd_closure
	.quad	_base_SystemziIO_putStrLn_closure
	.quad	__u1ks_srt$def
	.quad	0                               ; 0x0

	.p2align	4                               ; @"_u1ku_srt$def"
__u1ku_srt$def:
	.quad	_stg_SRT_2_info
	.quad	_base_TextziRead_read_closure
	.quad	_base_GHCziRead_zdfReadInteger_closure
	.quad	0                               ; 0x0

	.section	__TEXT,__const
_c1jK_str$def:                          ; @"c1jK_str$def"
	.asciz	" isn't a prime."

_c1k3_str$def:                          ; @"c1k3_str$def"
	.asciz	" is a prime."

	.section	__DATA,__data
	.p2align	4                               ; @"s1jm_closure$def"
_s1jm_closure$def:
	.quad	_s1jm_info$def
	.quad	_IsPrimeLib_isPrime_closure
	.quad	__u1kt_srt$def
	.quad	__u1ku_srt$def
	.quad	0                               ; 0x0

	.p2align	4                               ; @"_u1qp_srt$def"
__u1qp_srt$def:
	.quad	_stg_SRT_3_info
	.quad	_base_SystemziIO_getLine_closure
	.quad	_base_GHCziBase_zdfMonadIO_closure
	.quad	_s1jm_closure$def
	.quad	0                               ; 0x0

	.p2align	4                               ; @"Main_main_closure$def"
_Main_main_closure$def:
	.quad	_Main_main_info$def
	.quad	0                               ; 0x0
	.quad	0                               ; 0x0
	.quad	0                               ; 0x0

	.p2align	4                               ; @"_u1rs_srt$def"
__u1rs_srt$def:
	.quad	_stg_SRT_2_info
	.quad	_base_GHCziTopHandler_runMainIO_closure
	.quad	_Main_main_closure$def
	.quad	0                               ; 0x0

	.globl	_ZCMain_main_closure            ; @ZCMain_main_closure
	.p2align	4
_ZCMain_main_closure:
	.quad	_ZCMain_main_info$def
	.quad	0                               ; 0x0
	.quad	0                               ; 0x0
	.quad	0                               ; 0x0

	.no_dead_strip	_Main_main_closure$def
	.no_dead_strip	_Main_zdtrModule_closure
	.no_dead_strip	_ZCMain_main_closure
	.no_dead_strip	__u1kr_srt$def
	.no_dead_strip	__u1ks_srt$def
	.no_dead_strip	__u1kt_srt$def
	.no_dead_strip	__u1ku_srt$def
	.no_dead_strip	__u1qp_srt$def
	.no_dead_strip	__u1rs_srt$def
	.no_dead_strip	_c1jK_str$def
	.no_dead_strip	_c1k3_str$def
	.no_dead_strip	_r1j2_bytes$def
	.no_dead_strip	_r1jb_closure$def
	.no_dead_strip	_r1jc_bytes$def
	.no_dead_strip	_r1jd_closure$def
	.no_dead_strip	_s1jm_closure$def
	.globl	_Main_main_closure
.set _Main_main_closure, _Main_main_closure$def
	.globl	_Main_main_info
.set _Main_main_info, _Main_main_info$def
	.globl	_ZCMain_main_info
.set _ZCMain_main_info, _ZCMain_main_info$def
## no .subsection_via_symbols for ghc. We need our info tables!
