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

(define (timed-prime-test n)
  (define (start-prime-test start-time)
    (if (prime? n)
      (report-prime (- (real-time-clock) start-time))))
  (define (report-prime elapsed-time)
    (newline)
    (display n)
    (display " *** ")
    (display elapsed-time))
  (start-prime-test (real-time-clock)))

(define (search-for-primes from to)
  (define (iter n)
    (timed-prime-test n)
    (if (< n to) (iter (+ n 2)) #t))
  (iter (if (even? from) (+ from 1) from)))

; (newline)
; (display "Three smallest primes >1e3?")
; (search-for-primes 1000 1019)
; (newline)
; (display "Three smallest primes >1e4?")
; (search-for-primes 10000 10037)
; (newline)
; (display "Three smallest primes >1e5?")
; (search-for-primes 100000 100043)
; (newline)
; (display "Three smallest primes >1e6?")
; (search-for-primes 1000000 1000037)

(newline)
(display "Smallest primes 1e11..1e11+100?")
(search-for-primes (expt 10 11) (+ 100 (expt 10 11)))

(newline)
(display "Smallest primes 1e12..1e12+100?")
(search-for-primes (expt 10 12) (+ 100 (expt 10 12)))
