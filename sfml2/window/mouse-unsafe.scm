;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/mouse-unsafe.scm
;;; 
;;; Module that exports the mouse related enums and procedures
;;;

(define-module (sfml2 window mouse-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window common)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (sf-mouse-button
	    sf-mouse-left
	    sf-mouse-right
	    sf-mouse-middle
	    sf-mouse-x-button-1
	    sf-mouse-x-button-2
	    sf-mouse-button-count))

;;; Alias for the sfWindow*
(define sf-window-* '*)

;;; enum binding for sfMouseButton
(define sf-mouse-button int)

(define sf-mouse-left         0)
(define sf-mouse-right        1)
(define sf-mouse-middle       2)
(define sf-mouse-x-button-1   3)
(define sf-mouse-x-button-2   4)
(define sf-mouse-button-count 5)

;;; binding functions
(define-ff %sf-mouse-is-button-pressed
           sf-bool sfMouse_isButtonPressed (list sf-mouse-button))

(define-ff %sf-mouse-get-position
           sf-vector2i sfMouse_getPosition (list sf-window-*))

(define-ff %sf-mouse-set-position
           void sfMouse_setPosition (list sf-vector2i sf-window-*))
