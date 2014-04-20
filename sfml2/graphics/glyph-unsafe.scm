;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/glyph-unsafe.scm
;;; 
;;; Module that exports the sf-glyph structure.
;;;

(define-module (sfml2 graphics glyph-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics rect-unsafe)
  #:export (sf-glyph
	    sf-glyph-*
	    pointer->sf-glyph
	    sf-glyph->pointer))

;;; structure binding for the sfGlyph simple structure
(define sf-glyph (list int sf-int-rect sf-int-rect))

;;; alias for sfGlyph*
(define sf-glyph-* '*)

(define (pointer->sf-glyph c-struct)
  (parse-c-struct c-struct sf-glyph))
(define (sf-glyph->pointer lst-struct)
  (make-c-struct sf-glyph lst-struct))
