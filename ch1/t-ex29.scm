; Test 1.29
(define (tests-OK?)
  (println "-- Integral of x^3 over [0, 1] = 1/4 --")
  (println "Riemann w/ 0.001:" (integral cube 0 1 0.001))
  (println "Simpson w/ n=100:" (simpson-integral cube 0 1 100))
  (println "Simpson w/ n=1000:" (simpson-integral cube 0 1 1000))
  #t
)
