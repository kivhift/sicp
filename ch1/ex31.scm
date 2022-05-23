; Exercise 1.31
; linear-recursive version of product
(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

; iterative version
(define (product term a next b)
  (define (iter x result)
    (if (> x b)
      result
      (iter (next x) (* result (term x)))))
  (iter a 1))

(define (inc x) (+ x 1))
(define (ident x) x)

(define (factorial n)
  (product ident 1 inc n))

(define (wallis-term x)
  (* (/ (* 2 x) (- (* 2 x) 1)) (/ (* 2 x) (+ (* 2 x) 1))))
  ; (/ (* 4.0 (square x)) (- (* 4 (square x)) 1)))
(define (wallis-pi n)
  (* 2.0 (product wallis-term 1 inc n)))
