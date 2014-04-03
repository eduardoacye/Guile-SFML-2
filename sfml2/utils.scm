(define-module (sfml2 utils)
  #:export (number->boolean
	    boolean->number))

;;; Convert a number to a boolean truth value
(define (number->boolean n)
  (not (zero? n)))

;;; Convert a boolean truth value to a number
(define (boolean->number b)
  (if b 1 0))
