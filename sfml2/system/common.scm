(define-module (sfml2 system common)
  #:use-module (system foreign)
  #:export (foreign-function
	    number->boolean
	    boolean->number))


;;; Dynamic link with the CSFML/System library
(define lib-sfml-system (dynamic-link "libcsfml-system"))

;;; Macro for binding a SFML/System function
(define-syntax foreign-function
  (syntax-rules (:)
    ((foreign-function name : ret string-name args)
     (define name (pointer->procedure ret
				      (dynamic-func string-name lib-sfml-system)
				      args)))))

;;; Convert a number to a boolean truth value
(define (number->boolean n)
  (not (zero? n)))

;;; Convert a boolean truth value to a number
(define (boolean->number b)
  (if b 1 0))
