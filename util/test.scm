(define (test)
  (let ((OK (tests-OK?)))
    (println (if OK "   All tests passed" "!! Test failed"))
    (exit (if OK 0 1))))

(test)
