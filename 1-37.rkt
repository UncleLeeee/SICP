#lang racket
(define (cont-frac n d k)
  (define (calc-recursive counter)
    (if (= counter k)
        (/ (n k) (d k))
        (/ (n k) (+ (d k) (calc-recursive (+ counter 1))))))
  (define (calc-iterative counter res)
    (if (= counter 0)
        res
        (let ((next-res (/ (n counter) (+ (d counter) res))))
          (calc-iterative (- counter 1) next-res))))
        
  (calc-iterative k 0))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           1000)