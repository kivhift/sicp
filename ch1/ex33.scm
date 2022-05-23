; Exercise 1.33
(define (filtered-accumulate include? combiner null-value term a next b)
  (define (iter i result)
    (if (> i b)
      result
      (iter (next i) (combiner result (if (include? i) (term i) null-value)))))
  (iter a null-value))

(define (ident x) x)
(define (inc x) (+ x 1))

(define (totient-product n)
  (define (relatively-prime? x)
    (= 1 (gcd x n)))
  (filtered-accumulate relatively-prime? * 1 ident 1 inc n))

(define (totient-sum n)
  (define (relatively-prime? x)
    (= 1 (gcd x n)))
  (filtered-accumulate relatively-prime? + 0 ident 1 inc n))

; Stuff from ex1.23
(define (divides? a b)
  (zero? (remainder b a)))

(define (smallest-divisor n)
  (define (next i)
    (if (= i 2) 3 (+ i 2)))
  (define (iter test-divisor)
    (cond
      ((> (square test-divisor) n) n)
      ((divides? test-divisor n) test-divisor)
      (else (iter (next test-divisor)))))
  (iter 2))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (prime-square-sum a b)
  (filtered-accumulate prime? + 0 square a inc b))
