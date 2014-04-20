;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/types-unsafe.scm
;;; 
;;; Module that exports several aliases for opaque pointers
;;;

(define-module (sfml2 graphics types-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:export (sf-circle-shape-*
	    sf-convex-shape-*
	    sf-font-*
	    sf-image-*
	    sf-shader-*
	    sf-rectangle-shape-*
	    sf-render-texture-*
	    sf-render-window-*
	    sf-shape-*
	    sf-sprite-*
	    sf-text-*
	    sf-texture-*
	    sf-transformable-*
	    sf-vertex-array-*
	    sf-view-*))

;;; aliases
(define sf-circle-shape-* '*)
(define sf-convex-shape-* '*)
(define sf-font-* '*)
(define sf-image-* '*)
(define sf-shader-* '*)
(define sf-rectangle-shape-* '*)
(define sf-render-texture-* '*)
(define sf-render-window-* '*)
(define sf-shape-* '*)
(define sf-sprite-* '*)
(define sf-text-* '*)
(define sf-texture-* '*)
(define sf-transformable-* '*)
(define sf-vertex-array-* '*)
(define sf-view-* '*)
