;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/vertex-unsafe.scm
;;; 
;;; Module that exports the sf-vertex structure
;;;

(define-module (sfml2 graphics vertex-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (sf-vertex
	    sf-vertex-*
	    sf-vertex->pointer
	    pointer->sf-vertex))

;;; structure binding for the sfVertex simple structure
(define sf-vertex (list sf-vector2f sf-color sf-vector2f))

;;; alias for sfVertex*
(define sf-vertex-* '*)

(define (sf-vertex->pointer lst-struct)
  (make-c-struct sf-vertex lst-struct))

(define (pointer->sf-vertex c-struct)
  (parse-c-struct c-struct sf-vertex))
