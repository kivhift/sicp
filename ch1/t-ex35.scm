; Test 1.35
(define (tests-OK?)
  (println "phi =" (/ (+ 1 (sqrt 5)) 2))
  (println "fixed-point-phi =" phi)
  (println "phi/fixed-point-phi =" (/ (/ (+ 1 (sqrt 5)) 2) phi))
  (and
    #t
))
