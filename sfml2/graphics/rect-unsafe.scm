;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/rect-unsafe.scm
;;; 
;;; Module that exports the sf-rect structure and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics rect-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:export (sf-float-rect
	    sf-float-rect-*
	    pointer->sf-float-rect
	    sf-float-rect->pointer
	    sf-int-rect
	    sf-int-rect-*
	    pointer->sf-int-rect
	    sf-int-rect->pointer
	    %sf-float-rect-contains
	    %sf-int-rect-contains
	    %sf-float-rect-intersects
	    %sf-int-rect-intersects))

;;; structure binding for the sfFloatRect simple structure
(define sf-float-rect (list float float float float))

;;; alias for sfFloatRect*
(define sf-float-rect-* '*)

(define (pointer->sf-float-rect c-struct)
  (parse-c-struct c-struct sf-float-rect))
(define (sf-float-rect->pointer lst-struct)
  (make-c-struct sf-float-rect lst-struct))

;;; structure binding for the sfIntRect simple structure
(define sf-int-rect (list int int int int))

;;; alias for sfIntRect*
(define sf-int-rect-* '*)

(define (pointer->sf-int-rect c-struct)
  (parse-c-struct c-struct sf-int-rect))
(define (sf-int-rect->pointer lst-struct)
  (make-c-struct sf-int-rect lst-struct))

;;; binding function
(define-ff %sf-float-rect-contains
  sf-bool sfFloatRect_contains (list sf-float-rect-* float float))
(define-ff %sf-int-rect-contains
  sf-bool sfIntRect_contains (list sf-int-rect-* int int))

(define-ff %sf-float-rect-intersects
  sf-bool sfFloatRect_intersects (list sf-float-rect-*
				       sf-float-rect-*
				       sf-float-rect-*))
(define-ff %sf-int-rect-intersects
  sf-bool sfIntRect_intersects (list sf-int-rect-*
				     sf-int-rect-*
				     sf-int-rect-*))
