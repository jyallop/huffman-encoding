#lang racket

(define (create-frequency-map input)
	(foldl add-to-map (make-hash) input))

(define (add-to-map m value) '())
