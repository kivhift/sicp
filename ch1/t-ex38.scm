; Test 1.38
(load "close-enough.scm")
(define tolerance 1e-5)
(define (tests-OK?)
  (println "k=8:" e)
  (println " e =" (exp 1))
  (and
    (close-enough? e (exp 1))
))
