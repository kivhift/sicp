; Test 1.45
; (println (try-nth-root-of 1e10 4 2))
; (println (try-nth-root-of 1e10 8 3))
; (println (try-nth-root-of 1e10 16 4))
; (println (try-nth-root-of 1e10 32 5))
; (println (try-nth-root-of 1e10 64 6))
; The prior experiments imply that the needed average-damp count is the floor
; of the binary logarithm of the root count n.

(define (test-OK x n) (close-enough? (expt x (/ 1 n)) (nth-root-of x n)))
(define (tests-OK?)
  (and
    (test-OK 2 2)
    (test-OK 2 3)
    (test-OK 2 4)
    (test-OK 42 13)
    (test-OK 1e10 63)
    (test-OK 1e10 257)
    (test-OK 42 42)
))
