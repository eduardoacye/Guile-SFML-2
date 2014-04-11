;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/window-unsafe.scm
;;; 
;;; Module that exports the <sf-window> record and the associated procedures
;;; and enumerations
;;;

(define-module (sfml2 window window-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window common)
  #:use-module (sfml2 window event-unsafe)
  #:use-module (sfml2 window video-mode-unsafe)
  #:use-module (sfml2 window window-handle-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (sf-window-style
	    sf-none
	    sf-titlebar
	    sf-close
	    sf-fullscreen
	    sf-default-style
	    <sf-window>
	    sf-window?
	    wrap-sf-window
	    unwrap-sf-window
	    sf-context-settings
	    pointer->sf-context-settings
	    sf-context-settings->pointer
	    %sf-window-create
	    %sf-window-create-unicode
	    %sf-window-create-from-handle
	    %sf-window-destroy
	    %sf-window-is-open
	    %sf-window-get-settings
	    %sf-window-poll-event
	    %sf-window-wait-event
	    %sf-window-get-position
	    %sf-window-set-position
	    %sf-window-get-size
	    %sf-window-set-title
	    %sf-window-set-unicode-title
	    %sf-window-set-icon
	    %sf-window-set-visible
	    %sf-window-set-mouse-cursor-visible
	    %sf-window-set-vertical-sync-enabled
	    %sf-window-set-key-repeat-enabled
	    %sf-window-set-active
	    %sf-window-display
	    %sf-window-set-framerate-limit
	    %sf-window-set-joystick-threshold
	    %sf-window-get-system-handle))

;;; enum binding for window creation styles
(define sf-window-style uint32)
(define sf-none          0)
(define sf-titlebar      1)
(define sf-resize        2)
(define sf-close         4)
(define sf-fullscreen    8)
(define sf-default-style 7)

;;; record for the sfWindow opaque structure
(define-wrapped-pointer-type <sf-window>
  sf-window?
  wrap-sf-window unwrap-sf-window
  (lambda (w port)
    (display "<sf-window>" port)))

;;; structure binding for the sfContextSettings simple structure
(define sf-context-settings (list unsigned-int
				  unsigned-int
				  unsigned-int
				  unsigned-int
				  unsigned-int))

(define (pointer->sf-context-settings c-struct)
  (parse-c-struct c-struct sf-context-settings))

(define (sf-context-settings->pointer lst-struct)
  (make-c-struct sf-context-settings lst-struct))

;;; binding functions
(define-ff %sf-window-create
           '* sfWindow_create (list sf-video-mode
				    '*	; const char *
				    sf-window-style
				    sf-context-settings))

;;; sf-context-settings should be passed as a pointer
(define-ff %sf-window-create-unicode
           '* sfWindow_createUnicode (list sf-video-mode
					   '* ; uint32 pointer
					   sf-window-style
					   sf-context-settings))

;;; sf-context-settings should be passed as a pointer
(define-ff %sf-window-create-from-handle
           '* sfWindow_createFromHandle (list sf-window-handle
					      sf-context-settings))

(define-ff %sf-window-destroy
           void sfWindow_destroy (list '*))

(define-ff %sf-window-close
           void sfWindow_close (list '*))

(define-ff %sf-window-is-open
           sf-bool sfWindow_isOpen (list '*))

(define-ff %sf-window-get-settings
           sf-context-settings sfWindow_getSettings (list '*))

;;; sf-event should be passed as a pointer
(define-ff %sf-window-poll-event
           sf-bool sfWindow_pollEvent (list '* sf-event))

(define-ff %sf-window-wait-event
           sf-bool sfWindow_waitEvent (list '* sf-event))

(define-ff %sf-window-get-position
           sf-vector2i sfWindow_getPosition (list '*))

(define-ff %sf-window-set-position
           void sfWindow_setPosition (list '* sf-vector2i))

(define-ff %sf-window-get-size
           sf-vector2u sfWindow_getSize (list '*))

(define-ff %sf-window-set-title
           void sfWindow_setTitle (list '*
					'*)) ; const char *

(define-ff %sf-window-set-unicode-title
           void sfWindow_setUnicodeTitle (list '*
					       '*)) ; const uint32 *

(define-ff %sf-window-set-icon
           void sfWindow_setIcon (list '*
				       unsigned-int
				       unsigned-int
				       '*)) ; const uint8 *

(define-ff %sf-window-set-visible
           void sfWindow_setVisible (list '* sf-bool))

(define-ff %sf-window-set-mouse-cursor-visible
           void sfWindow_setMouseCursorVisible (list '* sf-bool))

(define-ff %sf-window-set-vertical-sync-enabled
           void sfWindow_setVerticalSyncEnabled (list '*
						      sf-bool))

(define-ff %sf-window-set-key-repeat-enabled
           void sfWindow_setKeyRepeatEnabled (list '* sf-bool))

(define-ff %sf-window-set-active
           sf-bool sfWindow_setKeyRepeatEnabled (list '* sf-bool))

(define-ff %sf-window-display
           void sfWindow_display (list '*))

(define-ff %sf-window-set-framerate-limit
           void sfWindow_setFramerateLimit (list '* unsigned-int))

(define-ff %sf-window-set-joystick-threshold
           void sfWindow_setJoystickThreshold (list '* float))

(define-ff %sf-window-get-system-handle
           sf-window-handle sfWindow_getSystemHandle (list '*))
