#lang racket
(define (fast-exp b n)
  (fast-exp-iter b n 1))
(define (fast-exp-iter b n a)
  (if (= n 0)
      a
      (if (even? n)
          (fast-exp-iter (* b b) (/ n 2) a)
          (fast-exp-iter b (- n 1) (* a b)))))
(define (even? n)
  (= (remainder n 2) 0))


                  