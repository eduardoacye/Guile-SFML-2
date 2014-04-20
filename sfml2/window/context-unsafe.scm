;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/context-unsafe.scm
;;; 
;;; Module that exports the <sf-context> record and the associated
;;; procedures
;;;

(define-module (sfml2 window context-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window common)
  #:export (<sf-context>
	    sf-context?
	    wrap-sf-context
	    unwrap-sf-context
	    sf-context-*
	    %sf-context-create
	    %sf-context-destroy
	    %sf-context-set-active))

;;; record for the sfContext opaque structure
(define-wrapped-pointer-type <sf-context>
  sf-context?
  wrap-sf-context unwrap-sf-context
  (lambda (c port)
    (display "<sf-context>" port)))

;;; Alias for sfContext*
(define sf-context-* '*)

;;; binding functions
(define-ff %sf-context-create
           sf-context-* sfContext_create (list))

(define-ff %sf-context-destroy
           void sfContext_destroy (list sf-context-*))

(define-ff %sf-context-set-active
           void sfContext_setActive (list sf-context-* sf-bool))
