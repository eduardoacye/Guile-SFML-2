;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/event-unsafe.scm
;;; 
;;; Module that exports the sf-event union and associated strucures
;;;

(define-module (sfml2 window event-unsafe)
  #:use-module (system foreign)
  #:use-module (rnrs bytevectors)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window joystick-unsafe)
  #:use-module (sfml2 window keyboard-unsafe)
  #:use-module (sfml2 window mouse-unsafe)
  #:export (sf-event-type
	    sf-evt-closed
	    sf-evt-resized
	    sf-evt-lost-focus
	    sf-evt-gained-focus
	    sf-evt-text-entered 
	    sf-evt-key-pressed 
	    sf-evt-key-released 
	    sf-evt-mouse-wheel-moved 
	    sf-evt-mouse-button-pressed 
	    sf-evt-mouse-button-released 
	    sf-evt-mouse-moved 
	    sf-evt-mouse-entered 
	    sf-evt-mouse-left 
	    sf-evt-joystick-button-pressed 
	    sf-evt-joystick-button-released 
	    sf-evt-joystick-moved 
	    sf-evt-joystick-connected 
	    sf-evt-joystick-disconnected

	    sf-key-event
	    pointer->sf-key-event
	    sf-key-event->pointer

	    sf-text-event
	    pointer->sf-text-event
	    sf-text-event->pointer

	    sf-mouse-move-event
	    pointer->sf-mouse-move-event
	    sf-mouse-move-event->pointer

	    sf-mouse-button-event
	    pointer->sf-mouse-button-event
	    sf-mouse-button-event->pointer

	    sf-mouse-wheel-event
	    pointer->sf-mouse-wheel-event
	    sf-mouse-wheel-event->pointer

	    sf-joystick-move-event
	    pointer->sf-joystick-move-event
	    sf-joystick-move-event->pointer

	    sf-joystick-button-event
	    pointer->sf-joystick-button-event
	    sf-joystick-button-event->pointer

	    sf-joystick-connect-event
	    pointer->sf-joystick-connect-event
	    sf-joystick-connect-event->pointer

	    sf-size-event
	    pointer->sf-size-event
	    sf-size-event->pointer

	    sf-event
	    pointer->sf-event
	    sf-event->pointer))

;;; enum binding for sfEventType
(define sf-event-type int)

(define sf-evt-closed 0)
(define sf-evt-resized 1)
(define sf-evt-lost-focus 2)
(define sf-evt-gained-focus 3)
(define sf-evt-text-entered 4)
(define sf-evt-key-pressed 5)
(define sf-evt-key-released 6)
(define sf-evt-mouse-wheel-moved 7)
(define sf-evt-mouse-button-pressed 8)
(define sf-evt-mouse-button-released 9)
(define sf-evt-mouse-moved 10)
(define sf-evt-mouse-entered 11)
(define sf-evt-mouse-left 12)
(define sf-evt-joystick-button-pressed 13)
(define sf-evt-joystick-button-released 14)
(define sf-evt-joystick-moved 15)
(define sf-evt-joystick-connected 16)
(define sf-evt-joystick-disconnected 17)

;;; structure binding for the sf-key-event simple structure
(define sf-key-event (list sf-event-type
			   sf-key-code
			   sf-bool
			   sf-bool
			   sf-bool
			   sf-bool))

(define (pointer->sf-key-event c-struct)
  (parse-c-struct c-struct sf-key-event))

(define (sf-key-event->pointer lst-struct)
  (make-c-struct sf-key-event lst-struct))

;;; structure binding for the sf-text-event simple structure
(define sf-text-event (list sf-event-type uint32))

(define (pointer->sf-text-event c-struct)
  (parse-c-struct c-struct sf-text-event))

(define (sf-text-event->pointer lst-struct)
  (make-c-struct sf-text-event lst-struct))

;;; structure binding for the sf-mouse-move-event simple structure
(define sf-mouse-move-event (list sf-event-type int int))

(define (pointer->sf-mouse-move-event c-struct)
  (parse-c-struct c-struct sf-mouse-move-event))

(define (sf-mouse-move-event->pointer lst-struct)
  (make-c-struct sf-mouse-move-event lst-struct))

;;; structure binding for the sf-mouse-buton-event simple structure
(define sf-mouse-button-event (list sf-event-type sf-mouse-button int int))

(define (pointer->sf-mouse-button-event c-struct)
  (parse-c-struct c-struct sf-mouse-button-event))

(define (sf-mouse-button-event->pointer lst-struct)
  (make-c-struct sf-mouse-button-event lst-struct))

;;; structure binding for the sf-mouse-wheel-event simple structure
(define sf-mouse-wheel-event (list sf-event-type int int int))

(define (pointer->sf-mouse-wheel-event c-struct)
  (parse-c-struct c-struct sf-mouse-wheel-event))

(define (sf-mouse-wheel-event->pointer lst-struct)
  (make-c-struct sf-mouse-wheel-event lst-struct))

;;; structure binding for the sf-joystick-move-event simple structure
(define sf-joystick-move-event (list sf-event-type
				     unsigned-int
				     sf-joystick-axis
				     float))

(define (pointer->sf-joystick-move-event c-struct)
  (parse-c-struct c-struct sf-joystick-move-event))

(define (sf-joystick-move-event->pointer lst-struct)
  (make-c-struct sf-joystick-move-event lst-struct))

;;; structure binding for the sf-joystick-button-event simple structure
(define sf-joystick-button-event (list sf-event-type
				       unsigned-int
				       unsigned-int))

(define (pointer->sf-joystick-button-event c-struct)
  (parse-c-struct c-struct sf-joystick-button-event))

(define (sf-joystick-button-event->pointer lst-struct)
  (make-c-struct sf-joystick-button-event lst-struct))

;;; structure binding for the sf-joystick-connect-event simple structure
(define sf-joystick-connect-event (list sf-event-type
					unsigned-int))

(define (pointer->sf-joystick-connect-event c-struct)
  (parse-c-struct c-struct sf-joystick-connect-event))

(define (sf-joystick-connect-event->pointer lst-struct)
  (make-c-struct sf-joystick-connect-event lst-struct))

;;; structure binding for the sf-size-event simple structure
(define sf-size-event (list sf-event-type
			    unsigned-int
			    unsigned-int))

(define (pointer->sf-size-event c-struct)
  (parse-c-struct c-struct sf-size-event))

(define (sf-size-event->pointer lst-struct)
  (make-c-struct sf-size-event lst-struct))

;;; union binding for the sf-event union of structures
(define sf-event (list sf-event-type
		       sf-size-event
		       sf-key-event
		       sf-text-event
		       sf-mouse-move-event
		       sf-mouse-button-event
		       sf-mouse-wheel-event
		       sf-joystick-move-event
		       sf-joystick-button-event
		       sf-joystick-connect-event))

(define (pointer->sf-event c-union type)
  (parse-c-union sf-event c-union type))

(define (sf-event->pointer type lst-union)
  (make-c-union sf-event type lst-union))
