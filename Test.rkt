#lang racket

(define add
  (lambda (x #:second [y 0] . rest)
    (+ x y (foldl + 0 rest))))

(define add-tag
  (lambda (x tag)
    (string-append "<" tag ">" x "</" tag ">")))