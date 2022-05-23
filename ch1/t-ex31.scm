; Test 1.31
(define (tests-OK?)
  (println "Wallis sum (400):" (wallis-pi 400))
  (and
    (= 1 (factorial 0))
    (= 1 (factorial 1))
    (= 2 (factorial 2))
    (= 6 (factorial 3))
    (= 120 (factorial 5))
))
