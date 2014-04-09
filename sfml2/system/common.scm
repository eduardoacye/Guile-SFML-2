(define-module (sfml2 system common)
  #:use-module (system foreign)
  #:export (define-foreign-function
	    define-ff))


;;; Dynamic link with the CSFML/System library
(define lib-sfml-system (dynamic-link "libcsfml-system"))

;;; Macro for binding a SFML/System function
(define-syntax define-ff
  (syntax-rules ()
    ((define-ff name ret c-name args)
     (define name (pointer->procedure ret
				      (dynamic-func (symbol->string 'c-name) lib-sfml-system)
				      args)))))

