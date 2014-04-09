;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/utils.scm
;;; 
;;; Module exporting procedures accessible to the SFML sub-libraries.
;;; 

(define-module (sfml2 utils)
  #:export (number->boolean
	    boolean->number))

;;; number->boolean : number -> boolean
;;; usage : returns #t if n is not 0
(define (number->boolean n)
  (not (zero? n)))

;;; boolean->number : boolean -> number
;;; usage : returns 1 if b is #t, returns 0 otherwise
(define (boolean->number b)
  (if b 1 0))
