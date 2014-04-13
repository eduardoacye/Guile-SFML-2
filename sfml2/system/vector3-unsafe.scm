;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/system/vector3-unsafe.scm
;;; 
;;; Module that exports the sf-vector3f struct type definition and the
;;; associated procedures
;;;

(define-module (sfml2 system vector3-unsafe)
  #:use-module (system foreign)
  #:export (sf-vector3f
	    sf-vector3f-*
	    pointer->sf-vector3f
	    sf-vector3f->pointer))

;;; structure binding for the sfVector3f simple structure
(define sf-vector3f (list float float float))

(define (pointer->sf-vector3f c-struct)
  (parse-c-struct c-struct sf-vector3f))

(define (sf-vector3f->pointer lst-struct)
  (make-c-struct sf-vector3f lst-struct))

;;; Alias for sfVector3f*
(define sf-vector3f-* '*)
