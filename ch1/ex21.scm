(define (divides? a b)
  (zero? (remainder b a)))

(define (smallest-divisor n)
  (define (iter test-divisor)
    (cond
      ((> (square test-divisor) n) n)
      ((divides? test-divisor n) test-divisor)
      (else (iter (+ test-divisor 1)))))
  (iter 2))

(define (psd n)
  (newline)
  (display "The smallest divisor of ") (display n) (display " is ")
  (display (smallest-divisor n)))

(psd 199)
(psd 1999)
(psd 19999)
