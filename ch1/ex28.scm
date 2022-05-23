; Exercise 1.28
;
; What's stated in the exercise isn't the Miller-Rabin test.  In the interest
; of correctness, that's what's implemented here.
(define (expmod base e m)
  (cond ((zero? e) 1)
        ((even? e) (remainder (square (expmod base (/ e 2) m)) m))
        (else (remainder (* base (expmod base (- e 1) m)) m))))

(define (miller-rabin-test n)
;  (newline)(display "n=")(display n)(display " ")
  (define (is-witness b)
;    (display "b=")(display b)(display " ")
    (define n-1 (- n 1))
    (define (find-t x)
      (if (even? x) (find-t (/ x 2)) x))
    (define (square-mod-n x)
      (remainder (square x) n))
    (define t (find-t n-1))
    (define 2^s (/ n-1 t))
    (define (check-squares 2^i x)
      (define x^2 (square-mod-n x))
;      (display "/")(display 2^i)(display ",")(display x)(display ",")(display x^2)
      (cond ((= 2^i 2^s) #t)
            ((= x^2 n-1) #f)
            (else (check-squares (* 2 2^i) x^2))))
    (define b^t (expmod b t n))
;    (display "b^t=")(display b^t)(display " ")
    (if (or (= b^t 1) (= b^t n-1)) #f
      (check-squares 2 b^t)))
  (if (even? n) #f (not (is-witness (+ 2 (random (- n 2)))))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((miller-rabin-test n) (fast-prime? n (- times 1)))
        (else #f)))
