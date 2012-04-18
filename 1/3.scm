
(define (min . args)
  (let loop ((smallest #f)
             (accum args))
    (cond
      ((null? accum) smallest)
      ((or (not smallest) (> (car accum) smallest))
       (loop (car (accum) (cdr accum))))
      (else (loop smallest (cdr accum))))))

(define (sumsq a b c)
  (let ((n (min a b c)))
    (cond ((= a n) (+ (* b b) (* c c)))
          ((= b n) (+ (* a a) (* c c)))
          ((= c n) (+ (* a a) (* b b))))))

