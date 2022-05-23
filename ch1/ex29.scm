; Exercise 1.29
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2)) add-dx b)
     dx))

; h/3 * (
; y_0 + y_n
; + 4 * (y_1 + y_3 + ... + y_{n - 1})
; + 2 * (y_2 + y_4 + ... + y_{n - 2})
; )
(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (y_ k) (f (+ a (* k h))))
  (define (inc-by-2 x) (+ x 2))
  (/ (* h (+ (y_ 0)
             (y_ n)
             (* 4 (sum y_ 1 inc-by-2 (- n 1)))
             (* 2 (sum y_ 2 inc-by-2 (- n 2))))) 3))
