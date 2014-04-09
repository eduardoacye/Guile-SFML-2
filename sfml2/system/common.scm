;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/system/common.scm
;;; 
;;; Module that exports the macros and procedures that the system sub-
;;; library uses
;;; 

(define-module (sfml2 system common)
  #:use-module (system foreign)
  #:export (define-foreign-function
	    define-ff))


;;; Define a scheme object of the linked library libcsfml-system
(define lib-sfml-system (dynamic-link "libcsfml-system"))


;;; define-ff : name : name of the scheme procedure being defined
;;;             ret : return type of the C function
;;;             c-name : name of the C function
;;;             args : list with the C function argument types
;;; Macro for binding a SFML/System function
(define-syntax define-ff
  (syntax-rules ()
    ((define-ff name ret c-name args)
     (define name (pointer->procedure ret
				      (dynamic-func (symbol->string 'c-name) lib-sfml-system)
				      args)))))

