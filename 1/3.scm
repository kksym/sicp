
(define (sumsq a b c)
  (let ((n (min a b c)))
    (cond ((= a n) (+ (* b b) (* c c)))
          ((= b n) (+ (* a a) (* c c)))
          ((= c n) (+ (* a a) (* b b))))))

