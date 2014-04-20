;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/transform-unsafe.scm
;;; 
;;; Module that exports the sf-transform structure and associated
;;; procedures.
;;;

(define-module (sfml2 graphics transform-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (sf-transform
	    sf-transform-*
	    sf-transform->pointer
	    pointer->sf-transform
	    %sf-transform-from-matrix
	    %sf-transform-get-matrix
	    %sf-transform-get-inverse
	    %sf-transform-transform-point
	    %sf-transform-transform-rect
	    %sf-transform-combine
	    %sf-transform-translate
	    %sf-transform-rotate
	    %sf-transform-rotate-with-center
	    %sf-transform-scale
	    %sf-transform-scale-with-center))

;;; structure binding for the sfTransform simple structure
(define sf-transform (list float float float
			   float float float
			   float float float))

;;; alias for sfTransform*
(define sf-transform-* '*)

(define (sf-transform->pointer lst-struct)
  (make-c-struct sf-transform lst-struct))

(define (pointer->sf-transform c-struct)
  (parse-c-struct c-struct sf-transform))

;;; binding functions
(define-ff %sf-transform-from-matrix
  sf-transform sfTransform_fromMatrix (list float float float float float float float float float))

(define-ff %sf-transform-get-matrix
  void sfTransform_getMatrix (list sf-transform-* float-*))

(define-ff %sf-transform-get-inverse
  sf-transform sfTransform_getInverse (list sf-transform-*))

(define-ff %sf-transform-transform-point
  sf-vector2f sfTransform_transformPoint (list sf-transform-* sf-vector2f))

(define-ff %sf-transform-transform-rect
  sf-float-rect sfTransform_transformRect (list sf-transform-* sf-float-rect))

(define-ff %sf-transform-combine
  void sfTransform_combine (list sf-transform-* sf-transform-*))

(define-ff %sf-transform-translate
  void sfTransform_translate (list sf-transform-* float float))

(define-ff %sf-transform-rotate
  void sfTransform_rotate (list sf-transform-* float))

(define-ff %sf-transform-rotate-with-center
  void sfTransform_rotateWithCenter (list sf-transform-* float float float))

(define-ff %sf-transform-scale
  void sfTransform_scale (list sf-transform-* float float))

(define-ff %sf-transform-scale-with-center
  void sfTransform_scaleWithCenter (list sf-transform-* float float float float))
