#lang racket
(define (sum term a next b)
  (define (sum-iter a result)
    (if (> a b)
        result
        (sum-iter (next a) (+ (term a) result))))
  (sum-iter a 0))

(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(sum cube 1 inc 10)