;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/color-unsafe.scm
;;; 
;;; Module that exports the sf-color structure and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics color-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:export (sf-color
	    sf-color-*
	    pointer->sf-color
	    sf-color->pointer
	    %sf-color-from-rgb
	    %sf-color-from-rgba
	    %sf-color-add
	    %sf-color-modulate))

;;; structure binding for the sfColor simple structure
(define sf-color (list uint8 uint8 uint8 uint8))

;;; Alias for the sfColor*
(define sf-color-* '*)

(define (pointer->sf-color c-struct)
  (parse-c-struct c-struct sf-color))
(define (sf-color->pointer lst-struct)
  (make-c-struct sf-color lst-struct))

;;; binding functions
(define-ff %sf-color-from-rgb
  sf-color sfColor_fromRGB (list uint8 uint8 uint8))

(define-ff %sf-color-from-rgba
  sf-color sfColor_fromRGBA (list uint8 uint8 uint8 uint8))

(define-ff %sf-color-add
  sf-color sfColor_add (list sf-color sf-color))

(define-ff %sf-color-modulate
  sf-color sfColor_modulate (list sf-color sf-color))
