;; Copyright (c) 2015 Carnegie Mellon University. All Rights Reserved.
;; 
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions are
;; met:
;; 
;; 1. Redistributions of source code must retain the above copyright
;; notice, this list of conditions and the following acknowledgments and
;; disclaimers.
;; 
;; 2. Redistributions in binary form must reproduce the above copyright
;; notice, this list of conditions and the following disclaimer in the
;; documentation and/or other materials provided with the distribution.
;; 
;; 3. The names "Carnegie Mellon University," "SEI" and/or "Software
;; Engineering Institute" shall not be used to endorse or promote
;; products derived from this software without prior written
;; permission. For written permission, please contact
;; permission@sei.cmu.edu.
;; 
;; 4. Products derived from this software may not be called "SEI" nor may
;; "SEI" appear in their names without prior written permission of
;; permission@sei.cmu.edu.
;; 
;; 5. Redistributions of any form whatsoever must retain the following
;; acknowledgment:
;; 
;; This material is based upon work funded and supported by the
;; Department of Defense under Contract No. FA8721-05-C-0003 with
;; Carnegie Mellon University for the operation of the Software
;; Engineering Institute, a federally funded research and development
;; center.
;; 
;; Any opinions, findings and conclusions or recommendations expressed in
;; this material are those of the author(s) and do not necessarily
;; reflect the views of the United States Department of Defense.
;; 
;; NO WARRANTY. THIS CARNEGIE MELLON UNIVERSITY AND SOFTWARE ENGINEERING
;; INSTITUTE MATERIAL IS FURNISHED ON AN AS-IS BASIS. CARNEGIE
;; MELLON UNIVERSITY MAKES NO WARRANTIES OF ANY KIND, EITHER EXPRESSED OR
;; IMPLIED, AS TO ANY MATTER INCLUDING, BUT NOT LIMITED TO, WARRANTY OF
;; FITNESS FOR PURPOSE OR MERCHANTABILITY, EXCLUSIVITY, OR RESULTS
;; OBTAINED FROM USE OF THE MATERIAL. CARNEGIE MELLON UNIVERSITY DOES NOT
;; MAKE ANY WARRANTY OF ANY KIND WITH RESPECT TO FREEDOM FROM PATENT,
;; TRADEMARK, OR COPYRIGHT INFRINGEMENT.
;; 
;; This material has been approved for public release and unlimited distribution.
;; 
;; DM-0002403
;; 
(set-logic QF_NRA)
(declare-fun angle () Real)
(declare-fun distance () Real)
(declare-fun angle_1 () Real)
(declare-fun distance_1 () Real)
(declare-fun px_1 () Real)
(declare-fun py_1 () Real)
(declare-fun sinA_1 () Real)
(declare-fun cosA_1 () Real)
(declare-fun xHitDist_1 () Real)
(declare-fun yHitDist_1 () Real)
(declare-fun xSign_1 () Real)
(declare-fun ySign_1 () Real)
(declare-fun _C0_ () Bool)
(declare-fun sinA_2 () Real)
(declare-fun ySign_2 () Real)
(declare-fun yHitDist_2 () Real)
(declare-fun _C1_ () Bool)
(declare-fun cosA_2 () Real)
(declare-fun xSign_2 () Real)
(declare-fun xHitDist_2 () Real)
(declare-fun _C2_ () Bool)
(declare-fun _C3_ () Bool)
(declare-fun px_2 () Real)
(declare-fun py_2 () Real)
(declare-fun ySign_3 () Real)
(declare-fun distance_2 () Real)
(declare-fun xSign_3 () Real)
(declare-fun _C4_ () Bool)
(declare-fun xHitDist_3 () Real)
(declare-fun _C5_ () Bool)
(declare-fun yHitDist_3 () Real)
(declare-fun _C6_ () Bool)
(declare-fun _C7_ () Bool)
(declare-fun px_3 () Real)
(declare-fun py_3 () Real)
(declare-fun ySign_4 () Real)
(declare-fun distance_3 () Real)
(declare-fun xSign_4 () Real)
(declare-fun _C8_ () Bool)
(declare-fun xHitDist_4 () Real)
(declare-fun _C9_ () Bool)
(declare-fun yHitDist_4 () Real)
(declare-fun px_4 () Real)
(declare-fun py_4 () Real)
(declare-fun dx_1 () Real)
(declare-fun dy_1 () Real)
(declare-fun deltaSq_1 () Real)
(assert (>= angle 0))
(assert (<= angle 6.28319))
(assert (>= distance 0))
(assert (<= distance 2))
(assert (= angle_1 angle))
(assert (= distance_1 distance))
(assert (= px_1 1.250000))
(assert (= py_1 0.500000))
(assert (= sinA_1 (sin angle_1)))
(assert (= cosA_1 (cos angle_1)))
(assert (= xHitDist_1 0))
(assert (= yHitDist_1 0))
(assert (= xSign_1 1))
(assert (= ySign_1 1))
(assert (= _C0_ (< sinA_1 0)))
(assert (or (not _C0_) (= sinA_2 (- sinA_1))))
(assert (or (not _C0_) (= ySign_2 -1)))
(assert (or (not _C0_) (= yHitDist_2 (- py_1 0.000000))))
(assert (or _C0_ (= yHitDist_2 (- 1.000000 py_1))))
(assert (or _C0_ (= sinA_2 sinA_1)))
(assert (or _C0_ (= ySign_2 ySign_1)))
(assert (= _C1_ (< cosA_1 0)))
(assert (or (not _C1_) (= cosA_2 (- cosA_1))))
(assert (or (not _C1_) (= xSign_2 -1)))
(assert (or (not _C1_) (= xHitDist_2 (- px_1 0.000000))))
(assert (or _C1_ (= xHitDist_2 (- 1.500000 px_1))))
(assert (or _C1_ (= xSign_2 xSign_1)))
(assert (or _C1_ (= cosA_2 cosA_1)))
(assert (= _C2_ (or (> (* sinA_2 distance_1) yHitDist_2) (> (* cosA_2 distance_1) xHitDist_2))))
(assert (= _C3_ (<= (* cosA_2 yHitDist_2) (* sinA_2 xHitDist_2))))
(assert (or (not (and _C2_ _C3_)) (= px_2 (+ px_1 (/ (*  xSign_2 yHitDist_2 cosA_2) sinA_2)))))
(assert (or (not (and _C2_ _C3_)) (= py_2 (+ py_1 (* ySign_2 yHitDist_2)))))
(assert (or (not (and _C2_ _C3_)) (= ySign_3 (- ySign_2))))
(assert (or (not (and _C2_ _C3_)) (= distance_2 (- distance_1 (/ yHitDist_2 sinA_2)))))
(assert (or (not (and _C2_ (not _C3_))) (= px_2 (+ px_1 (* xSign_2 xHitDist_2)))))
(assert (or (not (and _C2_ (not _C3_))) (= py_2 (+ py_1 (/ (*  ySign_2 xHitDist_2 sinA_2) cosA_2)))))
(assert (or (not (and _C2_ (not _C3_))) (= xSign_3 (- xSign_2))))
(assert (or (not (and _C2_ (not _C3_))) (= distance_2 (- distance_1 (/ xHitDist_2 cosA_2)))))
(assert (or (not (and _C2_ (not _C3_))) (= ySign_3 ySign_2)))
(assert (or (not (and _C2_ _C3_)) (= xSign_3 xSign_2)))
(assert (= _C4_ (> xSign_3 0)))
(assert (or (not (and _C2_ _C4_)) (= xHitDist_3 (- 1.500000 px_2))))
(assert (or (not (and _C2_ (not _C4_))) (= xHitDist_3 (- px_2 0.000000))))
(assert (= _C5_ (> ySign_3 0)))
(assert (or (not (and _C2_ _C5_)) (= yHitDist_3 (- 1.000000 py_2))))
(assert (or (not (and _C2_ (not _C5_))) (= yHitDist_3 (- py_2 0.000000))))
(assert (or _C2_ (= distance_2 distance_1)))
(assert (or _C2_ (= yHitDist_3 yHitDist_2)))
(assert (or _C2_ (= xSign_3 xSign_2)))
(assert (or _C2_ (= ySign_3 ySign_2)))
(assert (or _C2_ (= px_2 px_1)))
(assert (or _C2_ (= py_2 py_1)))
(assert (or _C2_ (= xHitDist_3 xHitDist_2)))
(assert (= _C6_ (or (> (* sinA_2 distance_2) yHitDist_3) (> (* cosA_2 distance_2) xHitDist_3))))
(assert (= _C7_ (<= (* cosA_2 yHitDist_3) (* sinA_2 xHitDist_3))))
(assert (or (not (and _C6_ _C7_)) (= px_3 (+ px_2 (/ (*  xSign_3 yHitDist_3 cosA_2) sinA_2)))))
(assert (or (not (and _C6_ _C7_)) (= py_3 (+ py_2 (* ySign_3 yHitDist_3)))))
(assert (or (not (and _C6_ _C7_)) (= ySign_4 (- ySign_3))))
(assert (or (not (and _C6_ _C7_)) (= distance_3 (- distance_2 (/ yHitDist_3 sinA_2)))))
(assert (or (not (and _C6_ (not _C7_))) (= px_3 (+ px_2 (* xSign_3 xHitDist_3)))))
(assert (or (not (and _C6_ (not _C7_))) (= py_3 (+ py_2 (/ (*  ySign_3 xHitDist_3 sinA_2) cosA_2)))))
(assert (or (not (and _C6_ (not _C7_))) (= xSign_4 (- xSign_3))))
(assert (or (not (and _C6_ (not _C7_))) (= distance_3 (- distance_2 (/ xHitDist_3 cosA_2)))))
(assert (or (not (and _C6_ (not _C7_))) (= ySign_4 ySign_3)))
(assert (or (not (and _C6_ _C7_)) (= xSign_4 xSign_3)))
(assert (= _C8_ (> xSign_4 0)))
(assert (or (not (and _C6_ _C8_)) (= xHitDist_4 (- 1.500000 px_3))))
(assert (or (not (and _C6_ (not _C8_))) (= xHitDist_4 (- px_3 0.000000))))
(assert (= _C9_ (> ySign_4 0)))
(assert (or (not (and _C6_ _C9_)) (= yHitDist_4 (- 1.000000 py_3))))
(assert (or (not (and _C6_ (not _C9_))) (= yHitDist_4 (- py_3 0.000000))))
(assert (or _C6_ (= distance_3 distance_2)))
(assert (or _C6_ (= yHitDist_4 yHitDist_3)))
(assert (or _C6_ (= xSign_4 xSign_3)))
(assert (or _C6_ (= ySign_4 ySign_3)))
(assert (or _C6_ (= px_3 px_2)))
(assert (or _C6_ (= py_3 py_2)))
(assert (or _C6_ (= xHitDist_4 xHitDist_3)))
(assert (= px_4 (+ px_3 (*  distance_3 cosA_2 xSign_4))))
(assert (= py_4 (+ py_3 (*  distance_3 sinA_2 ySign_4))))
(assert (= dx_1 (- 0.250000 px_4)))
(assert (= dy_1 (- 0.500000 py_4)))
(assert (= deltaSq_1 (+ (* dx_1 dx_1) (* dy_1 dy_1))))
(assert (not (> deltaSq_1 0.000400)))
(check-sat)
(exit)
