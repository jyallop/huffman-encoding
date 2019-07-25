#lang racket

(require web-server/servlet)
(require web-server/servlet-env)
(require web-server/http/request-structs)
(require huffman/basic)

(define (read-list #:number n)
  (if (= n 0) '() (cons (read) (read-list #:number (- n 1)))))

(define output (open-output-file "resources/ouput.txt" #:exists 'replace))

(define reversed-list (reverse-list "Hello, World!"))


(define (start req)
  (write req output) 
  (response/xexpr
    `(html (head (title "Hello, World!"))
          (body (p "Hello, person!")
								(p reversed-list)))))

(serve/servlet start)
(close-output-port output)
