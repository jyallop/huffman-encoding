#lang racket

(define add
  (lambda (x #:second [y 0] . rest)
    (+ x y (foldl + 0 rest))))

(define add-tag
  (lambda (x tag)
    (string-append "<" tag ">" x "</" tag ">")))

(define reverse 
  (lambda ([input '()])
    (foldl cons '() input)))

(define reverse-list
  (lambda ([input ""])
    (let* ([char-list (string->list input)]
           [reversed-list (reverse char-list)])
     (list->string reversed-list))))
