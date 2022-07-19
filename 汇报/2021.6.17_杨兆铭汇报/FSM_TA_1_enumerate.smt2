(set-option :print-success false)
(set-option :produce-models true)
(set-logic QF_UFLIA)




;;;;;;; initial state information
;;;step 0 variables
(declare-const ST_TL_0 Int)
(declare-const ST_AL_0 Int)
(declare-const count_0 Int)
(declare-const Sec_0 Int)
(declare-const Theat_0 Int)
(declare-const Tkeep_0 Int)
(declare-const Pgo_0 Int)
(declare-const Pstop_0 Int)
(declare-const Ago_0 Int)
(declare-const Astop_0 Int)

;;;step 0 variables' domain assumption
(assert(and (or (= ST_TL_0 0) (= ST_TL_0 1) (= ST_TL_0 2)) (or (= ST_AL_0 0) (= ST_AL_0 1) (= ST_AL_0 2)) (or (= Theat_0 0) (= Theat_0 1) (= Theat_0 -1)) (or (= Tkeep_0 0) (= Tkeep_0 1) (= Tkeep_0 -1)) (or (= Pgo_0 0) (= Pgo_0 1) (= Pgo_0 -1)) (or (= Pstop_0 0) (= Pstop_0 1) (= Pstop_0 -1)) (or (= Ago_0 0) (= Ago_0 1) (= Ago_0 -1)) (or (= Astop_0 0) (= Astop_0 1) (= Astop_0 -1))) )

;;;initial states predicate
(define-fun I0 () Bool (and (= ST_TL_0 0) (= ST_AL_0 0) (= count_0 0) (= Sec_0 -1) (= Theat_0 -1) (= Tkeep_0 -1) (= Pgo_0 -1) (= Pstop_0 -1) (= Ago_0 -1) (= Astop_0 -1)) )




;;;step 1 variables
(declare-const ST_TL_1 Int)
(declare-const ST_AL_1 Int)
(declare-const count_1 Int)
(declare-const Sec_1 Int)
(declare-const Theat_1 Int)
(declare-const Tkeep_1 Int)
(declare-const Pgo_1 Int)
(declare-const Pstop_1 Int)
(declare-const Ago_1 Int)
(declare-const Astop_1 Int)

;;;step 1 variables' domain assumption
(assert(and (or (= ST_TL_1 0) (= ST_TL_1 1) (= ST_TL_1 2)) (or (= ST_AL_1 0) (= ST_AL_1 1) (= ST_AL_1 2)) (or (= Theat_1 0) (= Theat_1 1) (= Theat_1 -1)) (or (= Tkeep_1 0) (= Tkeep_1 1) (= Tkeep_1 -1)) (or (= Pgo_1 0) (= Pgo_1 1) (= Pgo_1 -1)) (or (= Pstop_1 0) (= Pstop_1 1) (= Pstop_1 -1)) (or (= Ago_1 0) (= Ago_1 1) (= Ago_1 -1)) (or (= Astop_1 0) (= Astop_1 1) (= Astop_1 -1))) )

;;;sub-transitions t_1_* & corresponding consitions Con_1_*
(define-fun t_1_1 () Bool (and (= ST_TL_0 0) (= Theat_1 1) (= Tkeep_1 0) (= Pgo_1 -1) (= Pstop_1 -1) (= count_1 0) (= ST_TL_1 1)))
(define-fun Con_1_1 () Bool (= ST_TL_0 0))

(define-fun t_1_2 () Bool (and (= ST_TL_0 1) (not (= Sec_1 -1)) (< count_0 2) (= Theat_1 -1) (= Tkeep_1 -1) (= Pgo_1 -1) (= Pstop_1 -1) (= count_1 (+ count_0 1)) (= ST_TL_1 1)))
(define-fun Con_1_2 () Bool (and (= ST_TL_0 1) (not (= Sec_1 -1)) (< count_0 2)))

(define-fun t_1_3 () Bool (and (= ST_TL_0 1) (not (= Sec_1 -1)) (= count_0 2) (= Theat_1 0) (= Tkeep_1 1) (= Pgo_1 1) (= Pstop_1 -1) (= ST_TL_1 2)))
(define-fun Con_1_3 () Bool (and (= ST_TL_0 1) (not (= Sec_1 -1)) (= count_0 2)))

(define-fun t_1_4 () Bool (and (= ST_TL_0 2) (not (= Sec_1 -1)) (= Theat_1 1) (= Tkeep_1 0) (= Pgo_1 0) (= Pstop_1 1) (= count_1 0) (= ST_TL_1 1)))
(define-fun Con_1_4 () Bool (and (= ST_TL_0 2) (not (= Sec_1 -1))))

(define-fun t_1_5 () Bool (and (= ST_AL_0 0) (= Ago_1 0) (= Astop_1 1) (= ST_AL_1 1)))
(define-fun Con_1_5 () Bool (= ST_AL_0 0))

(define-fun t_1_6 () Bool (and (= ST_AL_0 1) (not (= Pgo_1 -1)) (= Ago_1 1) (= Astop_1 0) (= ST_AL_1 2)))
(define-fun Con_1_6 () Bool (and (= ST_AL_0 1) (not (= Pgo_1 -1))))

(define-fun t_1_7 () Bool (and (= ST_AL_0 2) (not (= Pstop_1 -1)) (= Ago_1 0) (= Astop_1 1) (= ST_AL_1 1)))
(define-fun Con_1_7 () Bool (and (= ST_AL_0 2) (not (= Pstop_1 -1))))

;;; transition T_1
(define-fun T_1 ((Val_1 Int)) Bool (and (= Sec_1 Val_1) (or (or t_1_1 t_1_2 t_1_3 t_1_4) (and (not Con_1_1) (not Con_1_2) (not Con_1_3) (not Con_1_4) (= ST_TL_1 ST_TL_0) (= count_1 count_0) (= Theat_1 -1) (= Tkeep_1 -1) (= Pgo_1 -1) (= Pstop_1 -1))) (or (or t_1_5 t_1_6 t_1_7) (and (not Con_1_5) (not Con_1_6) (not Con_1_7) (= ST_AL_1 ST_AL_0) (= Ago_1 -1) (= Astop_1 -1)))))




;;;step 2 variables
(declare-const ST_TL_2 Int)
(declare-const ST_AL_2 Int)
(declare-const count_2 Int)
(declare-const Sec_2 Int)
(declare-const Theat_2 Int)
(declare-const Tkeep_2 Int)
(declare-const Pgo_2 Int)
(declare-const Pstop_2 Int)
(declare-const Ago_2 Int)
(declare-const Astop_2 Int)

;;;step 2 variables' domain assumption
(assert(and (or (= ST_TL_2 0) (= ST_TL_2 1) (= ST_TL_2 2)) (or (= ST_AL_2 0) (= ST_AL_2 1) (= ST_AL_2 2)) (or (= Theat_2 0) (= Theat_2 1) (= Theat_2 -1)) (or (= Tkeep_2 0) (= Tkeep_2 1) (= Tkeep_2 -1)) (or (= Pgo_2 0) (= Pgo_2 1) (= Pgo_2 -1)) (or (= Pstop_2 0) (= Pstop_2 1) (= Pstop_2 -1)) (or (= Ago_2 0) (= Ago_2 1) (= Ago_2 -1)) (or (= Astop_2 0) (= Astop_2 1) (= Astop_2 -1))) )

;;;sub-transitions t_2_* & corresponding consitions Con_2_*
(define-fun t_2_1 () Bool (and (= ST_TL_1 0) (= Theat_2 1) (= Tkeep_2 0) (= Pgo_2 -1) (= Pstop_2 -1) (= count_2 0) (= ST_TL_2 1)))
(define-fun Con_2_1 () Bool (= ST_TL_1 0))

(define-fun t_2_2 () Bool (and (= ST_TL_1 1) (not (= Sec_2 -1)) (< count_1 2) (= Theat_2 -1) (= Tkeep_2 -1) (= Pgo_2 -1) (= Pstop_2 -1) (= count_2 (+ count_1 1)) (= ST_TL_2 1)))
(define-fun Con_2_2 () Bool (and (= ST_TL_1 1) (not (= Sec_2 -1)) (< count_1 2)))

(define-fun t_2_3 () Bool (and (= ST_TL_1 1) (not (= Sec_2 -1)) (= count_1 2) (= Theat_2 0) (= Tkeep_2 1) (= Pgo_2 1) (= Pstop_2 -1) (= ST_TL_2 2)))
(define-fun Con_2_3 () Bool (and (= ST_TL_1 1) (not (= Sec_2 -1)) (= count_1 2)))

(define-fun t_2_4 () Bool (and (= ST_TL_1 2) (not (= Sec_2 -1)) (= Theat_2 1) (= Tkeep_2 0) (= Pgo_2 0) (= Pstop_2 1) (= count_2 0) (= ST_TL_2 1)))
(define-fun Con_2_4 () Bool (and (= ST_TL_1 2) (not (= Sec_2 -1))))

(define-fun t_2_5 () Bool (and (= ST_AL_1 0) (= Ago_2 0) (= Astop_2 1) (= ST_AL_2 1)))
(define-fun Con_2_5 () Bool (= ST_AL_1 0))

(define-fun t_2_6 () Bool (and (= ST_AL_1 1) (not (= Pgo_2 -1)) (= Ago_2 1) (= Astop_2 0) (= ST_AL_1 2)))
(define-fun Con_2_6 () Bool (and (= ST_AL_1 1) (not (= Pgo_2 -1))))

(define-fun t_2_7 () Bool (and (= ST_AL_1 2) (not (= Pstop_2 -1)) (= Ago_2 0) (= Astop_2 1) (= ST_AL_2 1)))
(define-fun Con_2_7 () Bool (and (= ST_AL_1 2) (not (= Pstop_2 -1))))

;;; transition T_2
(define-fun T_2 ((Val_2 Int)) Bool (and (= Sec_2 Val_2) (or (or t_2_1 t_2_2 t_2_3 t_2_4) (and (not Con_2_1) (not Con_2_2) (not Con_2_3) (not Con_2_4) (= ST_TL_2 ST_TL_1) (= count_2 count_1) (= Theat_2 -1) (= Tkeep_2 -1) (= Pgo_2 -1) (= Pstop_2 -1))) (or (or t_2_5 t_2_6 t_2_7) (and (not Con_2_5) (not Con_2_6) (not Con_2_7) (= ST_AL_2 ST_AL_1) (= Ago_2 -1) (= Astop_2 -1)))))




;;;step 3 variables
(declare-const ST_TL_3 Int)
(declare-const ST_AL_3 Int)
(declare-const count_3 Int)
(declare-const Sec_3 Int)
(declare-const Theat_3 Int)
(declare-const Tkeep_3 Int)
(declare-const Pgo_3 Int)
(declare-const Pstop_3 Int)
(declare-const Ago_3 Int)
(declare-const Astop_3 Int)

;;;step 3 variables' domain assumption
(assert(and (or (= ST_TL_3 0) (= ST_TL_3 1) (= ST_TL_3 2)) (or (= ST_AL_3 0) (= ST_AL_3 1) (= ST_AL_3 2)) (or (= Theat_3 0) (= Theat_3 1) (= Theat_3 -1)) (or (= Tkeep_3 0) (= Tkeep_3 1) (= Tkeep_3 -1)) (or (= Pgo_3 0) (= Pgo_3 1) (= Pgo_3 -1)) (or (= Pstop_3 0) (= Pstop_3 1) (= Pstop_3 -1)) (or (= Ago_3 0) (= Ago_3 1) (= Ago_3 -1)) (or (= Astop_3 0) (= Astop_3 1) (= Astop_3 -1))) )

;;;sub-transitions t_3_* & corresponding consitions Con_3_*
(define-fun t_3_1 () Bool (and (= ST_TL_2 0) (= Theat_3 1) (= Tkeep_3 0) (= Pgo_3 -1) (= Pstop_3 -1) (= count_3 0) (= ST_TL_3 1)))
(define-fun Con_3_1 () Bool (= ST_TL_2 0))

(define-fun t_3_2 () Bool (and (= ST_TL_2 1) (not (= Sec_3 -1)) (< count_2 2) (= Theat_3 -1) (= Tkeep_3 -1) (= Pgo_3 -1) (= Pstop_3 -1) (= count_3 (+ count_2 1)) (= ST_TL_3 1)))
(define-fun Con_3_2 () Bool (and (= ST_TL_2 1) (not (= Sec_3 -1)) (< count_2 2)))

(define-fun t_3_3 () Bool (and (= ST_TL_2 1) (not (= Sec_3 -1)) (= count_2 2) (= Theat_3 0) (= Tkeep_3 1) (= Pgo_3 1) (= Pstop_3 -1) (= ST_TL_3 2)))
(define-fun Con_3_3 () Bool (and (= ST_TL_2 1) (not (= Sec_3 -1)) (= count_2 2)))

(define-fun t_3_4 () Bool (and (= ST_TL_2 2) (not (= Sec_3 -1)) (= Theat_3 1) (= Tkeep_3 0) (= Pgo_3 0) (= Pstop_3 1) (= count_3 0) (= ST_TL_3 1)))
(define-fun Con_3_4 () Bool (and (= ST_TL_2 2) (not (= Sec_3 -1))))

(define-fun t_3_5 () Bool (and (= ST_AL_2 0) (= Ago_3 0) (= Astop_3 1) (= ST_AL_3 1)))
(define-fun Con_3_5 () Bool (= ST_AL_2 0))

(define-fun t_3_6 () Bool (and (= ST_AL_2 1) (not (= Pgo_3 -1)) (= Ago_3 1) (= Astop_3 0) (= ST_AL_3 2)))
(define-fun Con_3_6 () Bool (and (= ST_AL_2 1) (not (= Pgo_3 -1))))

(define-fun t_3_7 () Bool (and (= ST_AL_2 2) (not (= Pstop_3 -1)) (= Ago_3 0) (= Astop_3 1) (= ST_AL_3 1)))
(define-fun Con_3_7 () Bool (and (= ST_AL_2 2) (not (= Pstop_3 -1))))

;;; transition T_3
(define-fun T_3 ((Val_3 Int)) Bool (and (= Sec_3 Val_3) (or (or t_3_1 t_3_2 t_3_3 t_3_4) (and (not Con_3_1) (not Con_3_2) (not Con_3_3) (not Con_3_4) (= ST_TL_3 ST_TL_2) (= count_3 count_2) (= Theat_3 -1) (= Tkeep_3 -1) (= Pgo_3 -1) (= Pstop_3 -1))) (or (or t_3_5 t_3_6 t_3_7) (and (not Con_3_5) (not Con_3_6) (not Con_3_7) (= ST_AL_3 ST_AL_2) (= Ago_3 -1) (= Astop_3 -1)))))




;;;step 4 variables
(declare-const ST_TL_4 Int)
(declare-const ST_AL_4 Int)
(declare-const count_4 Int)
(declare-const Sec_4 Int)
(declare-const Theat_4 Int)
(declare-const Tkeep_4 Int)
(declare-const Pgo_4 Int)
(declare-const Pstop_4 Int)
(declare-const Ago_4 Int)
(declare-const Astop_4 Int)

;;;step 4 variables' domain assumption
(assert(and (or (= ST_TL_4 0) (= ST_TL_4 1) (= ST_TL_4 2)) (or (= ST_AL_4 0) (= ST_AL_4 1) (= ST_AL_4 2)) (or (= Theat_4 0) (= Theat_4 1) (= Theat_4 -1)) (or (= Tkeep_4 0) (= Tkeep_4 1) (= Tkeep_4 -1)) (or (= Pgo_4 0) (= Pgo_4 1) (= Pgo_4 -1)) (or (= Pstop_4 0) (= Pstop_4 1) (= Pstop_4 -1)) (or (= Ago_4 0) (= Ago_4 1) (= Ago_4 -1)) (or (= Astop_4 0) (= Astop_4 1) (= Astop_4 -1))) )

;;;sub-transitions t_4_* & corresponding consitions Con_4_*
(define-fun t_4_1 () Bool (and (= ST_TL_3 0) (= Theat_4 1) (= Tkeep_4 0) (= Pgo_4 -1) (= Pstop_4 -1) (= count_4 0) (= ST_TL_4 1)))
(define-fun Con_4_1 () Bool (= ST_TL_3 0))

(define-fun t_4_2 () Bool (and (= ST_TL_3 1) (not (= Sec_4 -1)) (< count_3 2) (= Theat_4 -1) (= Tkeep_4 -1) (= Pgo_4 -1) (= Pstop_4 -1) (= count_4 (+ count_3 1)) (= ST_TL_4 1)))
(define-fun Con_4_2 () Bool (and (= ST_TL_3 1) (not (= Sec_4 -1)) (< count_3 2)))

(define-fun t_4_3 () Bool (and (= ST_TL_3 1) (not (= Sec_4 -1)) (= count_3 2) (= Theat_4 0) (= Tkeep_4 1) (= Pgo_4 1) (= Pstop_4 -1) (= ST_TL_4 2)))
(define-fun Con_4_3 () Bool (and (= ST_TL_3 1) (not (= Sec_4 -1)) (= count_3 2)))

(define-fun t_4_4 () Bool (and (= ST_TL_3 2) (not (= Sec_4 -1)) (= Theat_4 1) (= Tkeep_4 0) (= Pgo_4 0) (= Pstop_4 1) (= count_4 0) (= ST_TL_4 1)))
(define-fun Con_4_4 () Bool (and (= ST_TL_3 2) (not (= Sec_4 -1))))

(define-fun t_4_5 () Bool (and (= ST_AL_3 0) (= Ago_4 0) (= Astop_4 1) (= ST_AL_4 1)))
(define-fun Con_4_5 () Bool (= ST_AL_3 0))

(define-fun t_4_6 () Bool (and (= ST_AL_3 1) (not (= Pgo_4 -1)) (= Ago_4 1) (= Astop_4 0) (= ST_AL_4 2)))
(define-fun Con_4_6 () Bool (and (= ST_AL_3 1) (not (= Pgo_4 -1))))

(define-fun t_4_7 () Bool (and (= ST_AL_3 2) (not (= Pstop_4 -1)) (= Ago_4 0) (= Astop_4 1) (= ST_AL_4 1)))
(define-fun Con_4_7 () Bool (and (= ST_AL_3 2) (not (= Pstop_4 -1))))

;;; transition T_4
(define-fun T_4 ((Val_4 Int)) Bool (and (= Sec_4 Val_4) (or (or t_4_1 t_4_2 t_4_3 t_4_4) (and (not Con_4_1) (not Con_4_2) (not Con_4_3) (not Con_4_4) (= ST_TL_4 ST_TL_3) (= count_4 count_3) (= Theat_4 -1) (= Tkeep_4 -1) (= Pgo_4 -1) (= Pstop_4 -1))) (or (or t_4_5 t_4_6 t_4_7) (and (not Con_4_5) (not Con_4_6) (not Con_4_7) (= ST_AL_4 ST_AL_3) (= Ago_4 -1) (= Astop_4 -1)))))




;;;step 5 variables
(declare-const ST_TL_5 Int)
(declare-const ST_AL_5 Int)
(declare-const count_5 Int)
(declare-const Sec_5 Int)
(declare-const Theat_5 Int)
(declare-const Tkeep_5 Int)
(declare-const Pgo_5 Int)
(declare-const Pstop_5 Int)
(declare-const Ago_5 Int)
(declare-const Astop_5 Int)

;;;step 5 variables' domain assumption
(assert(and (or (= ST_TL_5 0) (= ST_TL_5 1) (= ST_TL_5 2)) (or (= ST_AL_5 0) (= ST_AL_5 1) (= ST_AL_5 2)) (or (= Theat_5 0) (= Theat_5 1) (= Theat_5 -1)) (or (= Tkeep_5 0) (= Tkeep_5 1) (= Tkeep_5 -1)) (or (= Pgo_5 0) (= Pgo_5 1) (= Pgo_5 -1)) (or (= Pstop_5 0) (= Pstop_5 1) (= Pstop_5 -1)) (or (= Ago_5 0) (= Ago_5 1) (= Ago_5 -1)) (or (= Astop_5 0) (= Astop_5 1) (= Astop_5 -1))) )

;;;sub-transitions t_5_* & corresponding consitions Con_5_*
(define-fun t_5_1 () Bool (and (= ST_TL_4 0) (= Theat_5 1) (= Tkeep_5 0) (= Pgo_5 -1) (= Pstop_5 -1) (= count_5 0) (= ST_TL_5 1)))
(define-fun Con_5_1 () Bool (= ST_TL_4 0))

(define-fun t_5_2 () Bool (and (= ST_TL_4 1) (not (= Sec_5 -1)) (< count_4 2) (= Theat_5 -1) (= Tkeep_5 -1) (= Pgo_5 -1) (= Pstop_5 -1) (= count_5 (+ count_4 1)) (= ST_TL_5 1)))
(define-fun Con_5_2 () Bool (and (= ST_TL_4 1) (not (= Sec_5 -1)) (< count_4 2)))

(define-fun t_5_3 () Bool (and (= ST_TL_4 1) (not (= Sec_5 -1)) (= count_4 2) (= Theat_5 0) (= Tkeep_5 1) (= Pgo_5 1) (= Pstop_5 -1) (= ST_TL_5 2)))
(define-fun Con_5_3 () Bool (and (= ST_TL_4 1) (not (= Sec_5 -1)) (= count_4 2)))

(define-fun t_5_4 () Bool (and (= ST_TL_4 2) (not (= Sec_5 -1)) (= Theat_5 1) (= Tkeep_5 0) (= Pgo_5 0) (= Pstop_5 1) (= count_5 0) (= ST_TL_5 1)))
(define-fun Con_5_4 () Bool (and (= ST_TL_4 2) (not (= Sec_5 -1))))

(define-fun t_5_5 () Bool (and (= ST_AL_4 0) (= Ago_5 0) (= Astop_5 1) (= ST_AL_5 1)))
(define-fun Con_5_5 () Bool (= ST_AL_4 0))

(define-fun t_5_6 () Bool (and (= ST_AL_4 1) (not (= Pgo_5 -1)) (= Ago_5 1) (= Astop_5 0) (= ST_AL_5 2)))
(define-fun Con_5_6 () Bool (and (= ST_AL_4 1) (not (= Pgo_5 -1))))

(define-fun t_5_7 () Bool (and (= ST_AL_4 2) (not (= Pstop_5 -1)) (= Ago_5 0) (= Astop_5 1) (= ST_AL_5 1)))
(define-fun Con_5_7 () Bool (and (= ST_AL_4 2) (not (= Pstop_5 -1))))

;;; transition T_5
(define-fun T_5 ((Val_5 Int)) Bool (and (= Sec_5 Val_5) (or (or t_5_1 t_5_2 t_5_3 t_5_4) (and (not Con_5_1) (not Con_5_2) (not Con_5_3) (not Con_5_4) (= ST_TL_5 ST_TL_4) (= count_5 count_4) (= Theat_5 -1) (= Tkeep_5 -1) (= Pgo_5 -1) (= Pstop_5 -1))) (or (or t_5_5 t_5_6 t_5_7) (and (not Con_5_5) (not Con_5_6) (not Con_5_7) (= ST_AL_5 ST_AL_4) (= Ago_5 -1) (= Astop_5 -1)))))




;;;step 6 variables
(declare-const ST_TL_6 Int)
(declare-const ST_AL_6 Int)
(declare-const count_6 Int)
(declare-const Sec_6 Int)
(declare-const Theat_6 Int)
(declare-const Tkeep_6 Int)
(declare-const Pgo_6 Int)
(declare-const Pstop_6 Int)
(declare-const Ago_6 Int)
(declare-const Astop_6 Int)

;;;step 6 variables' domain assumption
(assert(and (or (= ST_TL_6 0) (= ST_TL_6 1) (= ST_TL_6 2)) (or (= ST_AL_6 0) (= ST_AL_6 1) (= ST_AL_6 2)) (or (= Theat_6 0) (= Theat_6 1) (= Theat_6 -1)) (or (= Tkeep_6 0) (= Tkeep_6 1) (= Tkeep_6 -1)) (or (= Pgo_6 0) (= Pgo_6 1) (= Pgo_6 -1)) (or (= Pstop_6 0) (= Pstop_6 1) (= Pstop_6 -1)) (or (= Ago_6 0) (= Ago_6 1) (= Ago_6 -1)) (or (= Astop_6 0) (= Astop_6 1) (= Astop_6 -1))) )

;;;sub-transitions t_6_* & corresponding consitions Con_6_*
(define-fun t_6_1 () Bool (and (= ST_TL_5 0) (= Theat_6 1) (= Tkeep_6 0) (= Pgo_6 -1) (= Pstop_6 -1) (= count_6 0) (= ST_TL_6 1)))
(define-fun Con_6_1 () Bool (= ST_TL_5 0))

(define-fun t_6_2 () Bool (and (= ST_TL_5 1) (not (= Sec_6 -1)) (< count_5 2) (= Theat_6 -1) (= Tkeep_6 -1) (= Pgo_6 -1) (= Pstop_6 -1) (= count_6 (+ count_5 1)) (= ST_TL_6 1)))
(define-fun Con_6_2 () Bool (and (= ST_TL_5 1) (not (= Sec_6 -1)) (< count_5 2)))

(define-fun t_6_3 () Bool (and (= ST_TL_5 1) (not (= Sec_6 -1)) (= count_5 2) (= Theat_6 0) (= Tkeep_6 1) (= Pgo_6 1) (= Pstop_6 -1) (= ST_TL_6 2)))
(define-fun Con_6_3 () Bool (and (= ST_TL_5 1) (not (= Sec_6 -1)) (= count_5 2)))

(define-fun t_6_4 () Bool (and (= ST_TL_5 2) (not (= Sec_6 -1)) (= Theat_6 1) (= Tkeep_6 0) (= Pgo_6 0) (= Pstop_6 1) (= count_6 0) (= ST_TL_6 1)))
(define-fun Con_6_4 () Bool (and (= ST_TL_5 2) (not (= Sec_6 -1))))

(define-fun t_6_5 () Bool (and (= ST_AL_5 0) (= Ago_6 0) (= Astop_6 1) (= ST_AL_6 1)))
(define-fun Con_6_5 () Bool (= ST_AL_5 0))

(define-fun t_6_6 () Bool (and (= ST_AL_5 1) (not (= Pgo_6 -1)) (= Ago_6 1) (= Astop_6 0) (= ST_AL_6 2)))
(define-fun Con_6_6 () Bool (and (= ST_AL_5 1) (not (= Pgo_6 -1))))

(define-fun t_6_7 () Bool (and (= ST_AL_5 2) (not (= Pstop_6 -1)) (= Ago_6 0) (= Astop_6 1) (= ST_AL_6 1)))
(define-fun Con_6_7 () Bool (and (= ST_AL_5 2) (not (= Pstop_6 -1))))

;;; transition T_6
(define-fun T_6 ((Val_6 Int)) Bool (and (= Sec_6 Val_6) (or (or t_6_1 t_6_2 t_6_3 t_6_4) (and (not Con_6_1) (not Con_6_2) (not Con_6_3) (not Con_6_4) (= ST_TL_6 ST_TL_5) (= count_6 count_5) (= Theat_6 -1) (= Tkeep_6 -1) (= Pgo_6 -1) (= Pstop_6 -1))) (or (or t_6_5 t_6_6 t_6_7) (and (not Con_6_5) (not Con_6_6) (not Con_6_7) (= ST_AL_6 ST_AL_5) (= Ago_6 -1) (= Astop_6 -1)))))




;;;step 7 variables
(declare-const ST_TL_7 Int)
(declare-const ST_AL_7 Int)
(declare-const count_7 Int)
(declare-const Sec_7 Int)
(declare-const Theat_7 Int)
(declare-const Tkeep_7 Int)
(declare-const Pgo_7 Int)
(declare-const Pstop_7 Int)
(declare-const Ago_7 Int)
(declare-const Astop_7 Int)

;;;step 7 variables' domain assumption
(assert(and (or (= ST_TL_7 0) (= ST_TL_7 1) (= ST_TL_7 2)) (or (= ST_AL_7 0) (= ST_AL_7 1) (= ST_AL_7 2)) (or (= Theat_7 0) (= Theat_7 1) (= Theat_7 -1)) (or (= Tkeep_7 0) (= Tkeep_7 1) (= Tkeep_7 -1)) (or (= Pgo_7 0) (= Pgo_7 1) (= Pgo_7 -1)) (or (= Pstop_7 0) (= Pstop_7 1) (= Pstop_7 -1)) (or (= Ago_7 0) (= Ago_7 1) (= Ago_7 -1)) (or (= Astop_7 0) (= Astop_7 1) (= Astop_7 -1))) )

;;;sub-transitions t_7_* & corresponding consitions Con_7_*
(define-fun t_7_1 () Bool (and (= ST_TL_6 0) (= Theat_7 1) (= Tkeep_7 0) (= Pgo_7 -1) (= Pstop_7 -1) (= count_7 0) (= ST_TL_7 1)))
(define-fun Con_7_1 () Bool (= ST_TL_6 0))

(define-fun t_7_2 () Bool (and (= ST_TL_6 1) (not (= Sec_7 -1)) (< count_6 2) (= Theat_7 -1) (= Tkeep_7 -1) (= Pgo_7 -1) (= Pstop_7 -1) (= count_7 (+ count_6 1)) (= ST_TL_7 1)))
(define-fun Con_7_2 () Bool (and (= ST_TL_6 1) (not (= Sec_7 -1)) (< count_6 2)))

(define-fun t_7_3 () Bool (and (= ST_TL_6 1) (not (= Sec_7 -1)) (= count_6 2) (= Theat_7 0) (= Tkeep_7 1) (= Pgo_7 1) (= Pstop_7 -1) (= ST_TL_7 2)))
(define-fun Con_7_3 () Bool (and (= ST_TL_6 1) (not (= Sec_7 -1)) (= count_6 2)))

(define-fun t_7_4 () Bool (and (= ST_TL_6 2) (not (= Sec_7 -1)) (= Theat_7 1) (= Tkeep_7 0) (= Pgo_7 0) (= Pstop_7 1) (= count_7 0) (= ST_TL_7 1)))
(define-fun Con_7_4 () Bool (and (= ST_TL_6 2) (not (= Sec_7 -1))))

(define-fun t_7_5 () Bool (and (= ST_AL_6 0) (= Ago_7 0) (= Astop_7 1) (= ST_AL_7 1)))
(define-fun Con_7_5 () Bool (= ST_AL_6 0))

(define-fun t_7_6 () Bool (and (= ST_AL_6 1) (not (= Pgo_7 -1)) (= Ago_7 1) (= Astop_7 0) (= ST_AL_7 2)))
(define-fun Con_7_6 () Bool (and (= ST_AL_6 1) (not (= Pgo_7 -1))))

(define-fun t_7_7 () Bool (and (= ST_AL_6 2) (not (= Pstop_7 -1)) (= Ago_7 0) (= Astop_7 1) (= ST_AL_7 1)))
(define-fun Con_7_7 () Bool (and (= ST_AL_6 2) (not (= Pstop_7 -1))))

;;; transition T_7
(define-fun T_7 ((Val_7 Int)) Bool (and (= Sec_7 Val_7) (or (or t_7_1 t_7_2 t_7_3 t_7_4) (and (not Con_7_1) (not Con_7_2) (not Con_7_3) (not Con_7_4) (= ST_TL_7 ST_TL_6) (= count_7 count_6) (= Theat_7 -1) (= Tkeep_7 -1) (= Pgo_7 -1) (= Pstop_7 -1))) (or (or t_7_5 t_7_6 t_7_7) (and (not Con_7_5) (not Con_7_6) (not Con_7_7) (= ST_AL_7 ST_AL_6) (= Ago_7 -1) (= Astop_7 -1)))))




;;; Property
(define-fun f () Bool (not (or (and (= ST_TL_0 1) (= ST_AL_0 2)) (and (= ST_TL_1 1) (= ST_AL_1 2)) (and (= ST_TL_2 1) (= ST_AL_2 2)) (and (= ST_TL_3 1) (= ST_AL_3 2)) (and (= ST_TL_4 1) (= ST_AL_4 2)) (and (= ST_TL_5 1) (= ST_AL_5 2)) (and (= ST_TL_6 1) (= ST_AL_6 2)) (and (= ST_TL_7 1) (= ST_AL_7 2)))))




;;;verification
;;;;;;k=7, M ^ not f
(assert (and I0 (T_1 1) (T_2 2) (T_3 3) (T_4 4) (T_5 5) (T_6 6) (T_7 7) (not f)) )

;;;;;;k=7, M ^ f
;(assert (and I0 (T_1 1) (T_2 2) (T_3 3) (T_4 4) (T_5 5) (T_6 6) (T_7 7) f) )

(check-sat)
(get-model)
(exit)