(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)

(set-option :smt.mbqi false)

(define-sort Str () Int)
(declare-fun strLen (Str) Int)
(declare-fun subString (Str Int Int) Str)
(declare-fun concatString (Str Str) Str)
(define-sort Elt () Int)
(define-sort LSet () (Array Elt Bool))
(define-fun smt_set_emp () LSet ((as const LSet) false))
(define-fun smt_set_mem ((x Elt) (s LSet)) Bool (select s x))
(define-fun smt_set_add ((s LSet) (x Elt)) LSet (store s x true))
(define-fun smt_set_cup ((s1 LSet) (s2 LSet)) LSet ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 LSet) (s2 LSet)) LSet ((_ map and) s1 s2))
(define-fun smt_set_com ((s LSet)) LSet ((_ map not) s))
(define-fun smt_set_dif ((s1 LSet) (s2 LSet)) LSet (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 LSet) (s2 LSet)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(define-sort Map () (Array Elt Elt))
(define-fun smt_map_sel ((m Map) (k Elt)) Elt (select m k))
(define-fun smt_map_sto ((m Map) (k Elt) (v Elt)) Map (store m k v))
(define-fun smt_map_cup ((m1 Map) (m2 Map)) Map ((_ map (+ (Elt Elt) Elt)) m1 m2))
(define-fun smt_map_def ((v Elt)) Map ((as const (Map)) v))
(define-fun bool_to_int ((b Bool)) Int (ite b 1 0))
(define-fun Z3_OP_MUL ((x Int) (y Int)) Int (* x y))
(define-fun Z3_OP_DIV ((x Int) (y Int)) Int (div x y))
(declare-fun GHC.Base.id () Int)
(declare-fun cast_as_int () Int)
(declare-fun GHC.Base.$62$$62$$61$ () Int)
(declare-fun GHC.Real.rem () Int)
(declare-fun GHC.List.init () Int)
(declare-fun Main.bar () Int)
(declare-fun addrLen () Int)
(declare-fun papp5 () Int)
(declare-fun GHC.List.iterate () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun GHC.Classes.$61$$61$ () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.List.drop () Int)
(declare-fun lq_tmp$36$x$35$$35$541 () Str)
(declare-fun VV$35$$35$F$35$$35$18 () Str)
(declare-fun Data.Foldable.length () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun GHC.List.replicate () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803755$35$$35$d2DN () Bool)
(declare-fun GHC.List.zipWith () Int)
(declare-fun n$35$$35$a1Rk () Int)
(declare-fun GHC.Classes.$62$$61$ () Int)
(declare-fun GHC.Num.fromInteger () Int)
(declare-fun papp3 () Int)
(declare-fun GHC.List.span () Int)
(declare-fun GHC.Classes.$62$ () Int)
(declare-fun GHC.Types.False () Bool)
(declare-fun GHC.List.scanr1 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun GHC.Real.div () Int)
(declare-fun GHC.List.scanl () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun VV$35$$35$F$35$$35$12 () Int)
(declare-fun GHC.Read.$36$fReadInt () Int)
(declare-fun GHC.List.zip () Int)
(declare-fun Text.Read.read () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun GHC.CString.unpackCString$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$570 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803762$35$$35$d2DU () Int)
(declare-fun GHC.List.dropWhile () Int)
(declare-fun autolen () Int)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Real.$94$ () Int)
(declare-fun head () Int)
(declare-fun GHC.Real.mod () Int)
(declare-fun Main.foo () Int)
(declare-fun GHC.Real.divMod () Int)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun System.IO.getLine () Int)
(declare-fun GHC.Classes.compare () Int)
(declare-fun lq_tmp$36$x$35$$35$554 () Int)
(declare-fun lit$36$liquidhaskell$45$example$45$0.2.0.0$45$GbnFa9jvC583sXuIbPJCY6 () Str)
(declare-fun papp2 () Int)
(declare-fun GHC.Real.toInteger () Int)
(declare-fun GHC.Real.quotRem () Int)
(declare-fun lit$36$Main () Str)
(declare-fun lq_tmp$36$x$35$$35$670 () Int)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun GHC.List.reverse () Int)
(declare-fun lit$36$erro$33$ () Str)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun lq_karg$36$VV$35$$35$551$35$$35$k_$35$$35$552 () Str)
(declare-fun GHC.List.filter () Int)
(declare-fun fromJust () Int)
(declare-fun GHC.List.cycle () Int)
(declare-fun GHC.List.$33$$33$ () Int)
(declare-fun GHC.List.tail () Int)
(declare-fun lq_tmp$36$x$35$$35$548 () Int)
(declare-fun papp7 () Int)
(declare-fun GHC.Classes.$47$$61$ () Int)
(declare-fun GHC.List.break () Int)
(declare-fun GHC.Types.True () Bool)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun GHC.List.splitAt () Int)
(declare-fun lq_tmp$36$x$35$$35$493 () Int)
(declare-fun GHC.Base.$43$$43$ () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun lq_tmp$36$x$35$$35$688 () Int)
(declare-fun GHC.Real.quot () Int)
(declare-fun GHC.Real.$47$ () Int)
(declare-fun GHC.Classes.$38$$38$ () Int)
(declare-fun GHC.Base.$36$fMonadIO () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803760$35$$35$d2DS () Int)
(declare-fun GHC.Show.show () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun GHC.Classes.$124$$124$ () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun GHC.List.last () Int)
(declare-fun GHC.Classes.$36$fOrdInt () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.List.scanl1 () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun GHC.Num.$45$ () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun GHC.Base.. () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun GHC.Base.$36$fFunctorIO () Int)
(declare-fun GHC.Real.fromRational () Int)
(declare-fun isJust () Int)
(declare-fun lq_karg$36$VV$35$$35$557$35$$35$k_$35$$35$558 () Int)
(declare-fun GHC.List.takeWhile () Int)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO () Bool)
(declare-fun VV$35$$35$F$35$$35$21 () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803752$35$$35$d2DK () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun GHC.List.take () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun GHC.Show.$36$fShowInt () Int)
(declare-fun GHC.Classes.$60$$61$ () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803754$35$$35$d2DM () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun System.IO.putStrLn () Int)
(declare-fun GHC.Base.map () Int)
(declare-fun GHC.Base.$36$ () Int)
(declare-fun papp1 () Int)
(declare-fun GHC.Classes.max () Int)
(declare-fun GHC.Classes.$60$ () Int)
(declare-fun tail () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun GHC.Num.$42$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803753$35$$35$d2DL () Int)
(declare-fun lq_tmp$36$x$35$$35$444 () Int)
(declare-fun GHC.Real.recip () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun lq_tmp$36$x$35$$35$664 () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun GHC.List.scanr () Int)
(declare-fun x$35$$35$a1Rl () Int)
(declare-fun GHC.Num.negate () Int)
(declare-fun GHC.Real.fromIntegral () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun Main.main () Int)
(declare-fun GHC.Classes.min () Int)
(declare-fun GHC.List.head () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun lq_tmp$36$x$35$$35$494 () Int)
(declare-fun GHC.List.repeat () Int)
(declare-fun lit$36$$32$is$32$a$32$large$32$number$33$ () Str)
(declare-fun GHC.Classes.not () Int)
(declare-fun GHC.Num.$43$ () Int)
(declare-fun Data.Tuple.fst () Int)
(declare-fun Data.Functor.$60$$36$$62$ () Int)
(declare-fun GHC.Err.error () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun lq_tmp$36$x$35$$35$611 () Int)
(declare-fun Data.Tuple.snd () Int)
(declare-fun apply$35$$35$13 (Int (_ BitVec 32)) Bool)
(declare-fun apply$35$$35$9 (Int Str) Bool)
(declare-fun apply$35$$35$6 (Int Bool) Str)
(declare-fun apply$35$$35$11 (Int Str) (_ BitVec 32))
(declare-fun apply$35$$35$15 (Int (_ BitVec 32)) (_ BitVec 32))
(declare-fun apply$35$$35$0 (Int Int) Int)
(declare-fun apply$35$$35$8 (Int Str) Int)
(declare-fun apply$35$$35$1 (Int Int) Bool)
(declare-fun apply$35$$35$7 (Int Bool) (_ BitVec 32))
(declare-fun apply$35$$35$14 (Int (_ BitVec 32)) Str)
(declare-fun apply$35$$35$10 (Int Str) Str)
(declare-fun apply$35$$35$5 (Int Bool) Bool)
(declare-fun apply$35$$35$2 (Int Int) Str)
(declare-fun apply$35$$35$12 (Int (_ BitVec 32)) Int)
(declare-fun apply$35$$35$3 (Int Int) (_ BitVec 32))
(declare-fun apply$35$$35$4 (Int Bool) Int)
(declare-fun coerce$35$$35$13 ((_ BitVec 32)) Bool)
(declare-fun coerce$35$$35$9 (Str) Bool)
(declare-fun coerce$35$$35$6 (Bool) Str)
(declare-fun coerce$35$$35$11 (Str) (_ BitVec 32))
(declare-fun coerce$35$$35$15 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun coerce$35$$35$0 (Int) Int)
(declare-fun coerce$35$$35$8 (Str) Int)
(declare-fun coerce$35$$35$1 (Int) Bool)
(declare-fun coerce$35$$35$7 (Bool) (_ BitVec 32))
(declare-fun coerce$35$$35$14 ((_ BitVec 32)) Str)
(declare-fun coerce$35$$35$10 (Str) Str)
(declare-fun coerce$35$$35$5 (Bool) Bool)
(declare-fun coerce$35$$35$2 (Int) Str)
(declare-fun coerce$35$$35$12 ((_ BitVec 32)) Int)
(declare-fun coerce$35$$35$3 (Int) (_ BitVec 32))
(declare-fun coerce$35$$35$4 (Bool) Int)
(declare-fun smt_lambda$35$$35$13 ((_ BitVec 32) Bool) Int)
(declare-fun smt_lambda$35$$35$9 (Str Bool) Int)
(declare-fun smt_lambda$35$$35$6 (Bool Str) Int)
(declare-fun smt_lambda$35$$35$11 (Str (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$15 ((_ BitVec 32) (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$0 (Int Int) Int)
(declare-fun smt_lambda$35$$35$8 (Str Int) Int)
(declare-fun smt_lambda$35$$35$1 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$7 (Bool (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$14 ((_ BitVec 32) Str) Int)
(declare-fun smt_lambda$35$$35$10 (Str Str) Int)
(declare-fun smt_lambda$35$$35$5 (Bool Bool) Int)
(declare-fun smt_lambda$35$$35$2 (Int Str) Int)
(declare-fun smt_lambda$35$$35$12 ((_ BitVec 32) Int) Int)
(declare-fun smt_lambda$35$$35$3 (Int (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$4 (Bool Int) Int)
(declare-fun lam_arg$35$$35$1$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$2$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$3$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$4$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$5$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$6$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$7$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$1$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$2$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$3$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$4$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$5$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$6$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$7$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$1$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$2$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$3$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$4$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$5$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$6$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$7$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$1$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$2$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$3$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$4$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$5$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$6$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$7$35$$35$4 () Bool)



(assert (distinct lit$36$$32$is$32$a$32$large$32$number$33$ lit$36$erro$33$ lit$36$Main lit$36$liquidhaskell$45$example$45$0.2.0.0$45$GbnFa9jvC583sXuIbPJCY6))




(assert (distinct GHC.Types.True GHC.Types.False))
(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$liquidhaskell$45$example$45$0.2.0.0$45$GbnFa9jvC583sXuIbPJCY6) 52))
(assert (= (strLen lit$36$Main) 4))
(assert (= (strLen lit$36$erro$33$) 5))
(assert (= (strLen lit$36$$32$is$32$a$32$large$32$number$33$) 19))
(push 1)
(assert (and (exists ((lq_karg$36$VV$35$$35$551$35$$35$k_$35$$35$552 Str) (lq_tmp$36$x$35$$35$556 Str)) (and (and (= lq_karg$36$VV$35$$35$551$35$$35$k_$35$$35$552 lq_tmp$36$x$35$$35$541) (= lq_tmp$36$x$35$$35$556 lq_tmp$36$x$35$$35$541)) (exists ((VV$35$$35$F$35$$35$18 Str)) (and (>= (apply$35$$35$8 (as len Int) VV$35$$35$F$35$$35$18) 0) (= lq_karg$36$VV$35$$35$551$35$$35$k_$35$$35$552 VV$35$$35$F$35$$35$18))))) (not GHC.Types.False) GHC.Types.True (>= (apply$35$$35$8 (as len Int) lq_tmp$36$x$35$$35$541) 0)))
(push 1)
(assert (not (= 0 1)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (= VV$35$$35$F$35$$35$21 1)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (< VV$35$$35$F$35$$35$21 0)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (> VV$35$$35$F$35$$35$21 0)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (>= VV$35$$35$F$35$$35$21 0)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (not (= VV$35$$35$F$35$$35$21 0))))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (<= VV$35$$35$F$35$$35$21 0)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (= VV$35$$35$F$35$$35$21 0)))
(check-sat)
; SMT Says: Sat
(pop 1)
(push 1)
(assert (not (> VV$35$$35$F$35$$35$21 10)))
(check-sat)
; SMT Says: Sat
(pop 1)
(pop 1)
(push 1)
(assert (and (= lq_anf$36$$35$$35$7205759403792803755$35$$35$d2DN (> x$35$$35$a1Rl lq_anf$36$$35$$35$7205759403792803754$35$$35$d2DM)) (and (= lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO (> x$35$$35$a1Rl lq_anf$36$$35$$35$7205759403792803754$35$$35$d2DM)) (= lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO lq_anf$36$$35$$35$7205759403792803755$35$$35$d2DN)) (= VV$35$$35$F$35$$35$12 x$35$$35$a1Rl) (not GHC.Types.False) GHC.Types.True (and (= lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO (> x$35$$35$a1Rl lq_anf$36$$35$$35$7205759403792803754$35$$35$d2DM)) (= lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO lq_anf$36$$35$$35$7205759403792803755$35$$35$d2DN)) (and (= lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO (> x$35$$35$a1Rl lq_anf$36$$35$$35$7205759403792803754$35$$35$d2DM)) (= lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO lq_anf$36$$35$$35$7205759403792803755$35$$35$d2DN) lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO lq_anf$36$$35$$35$7205759403792803756$35$$35$d2DO) (= lq_anf$36$$35$$35$7205759403792803753$35$$35$d2DL 10) (= lq_anf$36$$35$$35$7205759403792803754$35$$35$d2DM lq_anf$36$$35$$35$7205759403792803753$35$$35$d2DL)))
(push 1)
(assert (not (> VV$35$$35$F$35$$35$12 10)))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(exit)