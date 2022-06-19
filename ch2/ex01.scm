; Exercise 2.1
;
; Code from book
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define numer car)
(define denom cdr)

(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline))

; Solution
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cond
      ((zero? n) (cons 0 1))
      ((zero? d) (error "Can't have 0 for denominator"))
      ((< (* n d) 0) (cons (* -1 (/ (abs n) g)) (/ (abs d) g)))
      (else (cons (/ (abs n) g) (/ (abs d) g))))))
