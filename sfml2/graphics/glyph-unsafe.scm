(define-module (sfml2 graphics glyph-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics rect-unsafe)
  #:export (sf-glyph
	    sf-glyph-*
	    pointer->sf-glyph
	    sf-glyph->pointer))

(define sf-glyph (list int sf-int-rect sf-int-rect))
(define sf-glyph-* '*)

(define (pointer->sf-glyph c-struct)
  (parse-c-struct c-struct sf-glyph))
(define (sf-glyph->pointer lst-struct)
  (make-c-struct sf-glyph lst-struct))
