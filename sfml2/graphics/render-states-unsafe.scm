;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/render-states-unsafe.scm
;;; 
;;; Module that exports the sf-render-states structure.
;;;

(define-module (sfml2 graphics render-states-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics blend-mode-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:export (sf-render-states
	    sf-render-states-*
	    sf-render-states->pointer
	    pointer->sf-render-states))

;;; structure binding for the sfRenderStates simple structure
(define sf-render-states (list sf-blend-mode sf-transform sf-texture-* sf-shader-*))

;;; alias for sfRenderStates*
(define sf-render-states-* '*)

(define (sf-render-states->pointer lst-struct)
  (make-c-struct sf-render-states lst-struct))

(define (pointer->sf-render-states c-struct)
  (parse-c-struct c-struct sf-render-states))
