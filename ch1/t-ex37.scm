; Test 1.37
(define (approx-OK? k)
  (< (abs (- phi (/ 1.0 (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) k)))) 0.00001))

(define (tests-OK?)
  (println "phi =" phi)
  (println "k=13" (approx-OK? 13))
  (and
    (approx-OK? 13)
))
