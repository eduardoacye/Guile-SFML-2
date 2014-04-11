;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/common.scm
;;; 
;;; Module that exports the macros and procedures that the window sub-
;;; library uses
;;; 

(define-module (sfml2 window common)
  #:use-module (system foreign)
  #:export (define-ff))

;;; Define a scheme object of the linked library libcsfml-window
(define lib-sfml-window (dynamic-link "libcsfml-window"))


;;; define-ff : name : name of the scheme procedure being defined
;;;             ret : return type of the C function
;;;             c-name : name of the C function
;;;             args : list with the C function argument types
;;; Macro for binding a SFML/Window function
(define-syntax define-ff
  (syntax-rules ()
    ((define-ff name ret c-name args)
     (define name (pointer->procedure ret
				      (dynamic-func (symbol->string 'c-name) lib-sfml-window)
				      args)))))
