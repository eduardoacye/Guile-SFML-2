(define-module (sfml2 utils)
  #:use-module (system foreign)
  #:export (number->boolean
	    boolean->number
	    define-foreign
	    lib-sfml-system))

;;; Dynamic link with the csfml-system library
(define lib-sfml-system (dynamic-link "libcsfml-system"))

;;; Macro for function bindings
;;; This is going to do the raw low level function association with
;;; a corresponding function in the specified library
(define-syntax-rule (define-foreign lib name ret string-name args)
  (define name (pointer->procedure ret
				   (dynamic-func string-name lib)
				   args)))

;;; Convert a number to a boolean truth value
(define (number->boolean n)
  (not (zero? n)))

;;; Convert a boolean truth value to a number
(define (boolean->number b)
  (if b 1 0))
