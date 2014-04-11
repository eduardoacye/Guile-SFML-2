;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/joystick-unsafe.scm
;;; 
;;; Module that exports the joystick related enums and procedures
;;;

(define-module (sfml2 window joystick-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window common)
  #:export (;; global joystick enum
	    sf-joystick-count
	    sf-joystick-button-count
	    sf-joystick-axis-count
	    ;; sfJoystickAxis
	    sf-joystick-axis
	    sf-joystick-x
	    sf-joystick-y
	    sf-joystick-z
	    sf-joystick-r
	    sf-joystick-u
	    sf-joystick-v
	    sf-joystick-pov-x
	    sf-joystick-pov-y
	    ;; joystick procedures
	    %sf-joystick-is-connected
	    %sf-joystick-get-button-count
	    %sf-joystick-has-axis
	    %sf-joystick-is-button-pressed
	    %sf-joystick-get-axis-position
	    %sf-joystick-update))

;;; enum binding for the global joystick capabilities
(define sf-joystick-count 8)
(define sf-joystick-button-count 32)
(define sf-joystick-axis-count 8)

;;; enum binding for sfJoystickAxis
(define sf-joystick-axis int)

(define sf-joystick-x     0)
(define sf-joystick-y     1)
(define sf-joystick-z     2)
(define sf-joystick-r     3)
(define sf-joystick-u     4)
(define sf-joystick-v     5)
(define sf-joystick-pov-x 6)
(define sf-joystick-pov-y 7)

;;; binding functions
(define-ff %sf-joystick-is-connected
           sf-bool sfJoystick_isConnected (list unsigned-int))

(define-ff %sf-joystick-get-button-count
           unsigned-int sfJoystick_getButtonCount (list unsigned-int))

(define-ff %sf-joystick-has-axis
           sf-bool sfJoystick_hasAxis (list unsigned-int int))

(define-ff %sf-joystick-is-button-pressed
           sf-bool sfJoystick_isButtonPressed (list unsigned-int unsigned-int))

(define-ff %sf-joystick-get-axis-position
           float sfJoystick_getAxisPosition (list unsigned-int int))

(define-ff %sf-joystick-update
           void sfJoystick_update (list))
