
(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.00001))

(define (cbrt-newton x y)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (cbrt-newton x guess) x)))

(define (cbrt x)
  (cbrt-iter 1 x))
 
