; Test 1.33
(define (tests-OK?)
  (println (prime-square-sum 2 2022))
  (println (totient-product 20))
  (println (totient-sum 2022))

  (and
    (= 2240 (totient-product 9))
    (= 87 (prime-square-sum 2 10))
    (= 2397 (prime-square-sum 2 29))
))
