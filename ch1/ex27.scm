(define (expmod base e m)
  (cond
    ((zero? e) 1)
    ((even? e) (remainder (square (expmod base (/ e 2) m)) m))
    (else (remainder (* base (expmod base (- e 1) m)) m))))

(define (carmichael-number? n)
  (define (iter i)
    (cond
      ((= i 1) #t)
      ((= i (expmod i n n)) (iter (- i 1)))
      (else #f)))
    (iter (- n 1)))
