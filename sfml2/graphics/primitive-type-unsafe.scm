;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/primitive-type-unsafe.scm
;;; 
;;; Module that exports the sf-primitive-type enumeration.
;;;

(define-module (sfml2 graphics primitive-type-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:export (sf-primitive-type
	    sf-points
	    sf-lines
	    sf-lines-strip
	    sf-triangles
	    sf-triangles-strip
	    sf-triangles-fan
	    sf-quads))

;;; enum binding for sfPrimitiveType
(define sf-primitive-type int)

(define sf-points          0)
(define sf-lines           1)
(define sf-lines-strip     2)
(define sf-triangles       3)
(define sf-triangles-strip 4)
(define sf-triangles-fan   5)
(define sf-quads           6)
