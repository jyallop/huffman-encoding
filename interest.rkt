#lang racket

(define (range start stop)
  (if (= start stop) (list stop) (append (list start) (range (+ start 1) stop))))


(define (Vr P start stop r)
  (let* ((values (map r (range (+ 1 start) stop)))
         (multiplicands (map (lambda (x) (+ x 1)) values)))
    (foldl * P multiplicands)))

(define (VR P start stop R) 
  (let ((values (map R (range start stop))))
  (foldl * P values)))

(define (fun x)
  (/ (* 1 x) 20))