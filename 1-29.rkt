#lang racket
(define (cube x) (* x x x))

(define (even? x)
  (= (remainder x 2) 0))

(define (simpson f a b n)
  (define (h a b) (/ (- b a) n))
  
  (define (next x) (+ x (h a b)))
  
  (define (factor n)
    (cond ((= n 0) 1)
          ((even? (- n 1)) 4)
          (else 2)))
           
  (define (simp-sum term a next counter n)
    (if (< n counter)
        0
        (+ (* (term a) (factor counter)) (simp-sum term (next a) next (+ counter 1) n))))
  
  (* (/ (h a b) 3) (simp-sum f a next 0 n)))
  