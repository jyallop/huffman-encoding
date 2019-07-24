#lang racket

(require web-server/servlet)
(require web-server/servlet-env)
(require web-server/http/request-structs)

(define (read-list #:number n)
  (if (= n 0) '() (cons (read) (read-list #:number (- n 1)))))

(define output (open-output-file "resources/ouput.txt" #:exists 'replace))


(define (start req)
  (write req output) 
  (response/xexpr
    `(html (head (title "Hello, World!"))
          (body (p "Hello, person!")))))

(serve/servlet start)
(close-output-port output)
