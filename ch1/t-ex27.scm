(define (tests-OK?)
  (and
    (carmichael-number? 561)
    (carmichael-number? 1105)
    (carmichael-number? 1729)
    (carmichael-number? 2465)
    (carmichael-number? 2821)
    (carmichael-number? 6601)
))
