; Test 1.39
(load "close-enough.scm")
(define tolerance 1e-4)
(define (tests-OK?)
  (println "tan-cf 3 7:" (tan-cf 3.0 7))
  (println "     tan 3:" (tan 3.0))
  (and
    (close-enough? (tan 3.0) (tan-cf 3.0 7))
))
