(define-module (sfml2 system time)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:export (sf-time
	    pointer->sf-time
	    sf-time->pointer
	    %sf-time-as-seconds
	    %sf-time-as-milliseconds
	    %sf-time-as-microseconds
	    %sf-seconds
	    %sf-milliseconds
	    %sf-microseconds))

;;; sf-time structure
(define sf-time (list int64))

(define (pointer->sf-time pointer)
  (parse-c-struct pointer sf-time))

(define (sf-time->pointer microseconds)
  (make-c-struct sf-time (list microseconds)))

;;; bindings
(define-foreign lib-sfml-system
  %sf-time-as-seconds			; function name in guile
  float					; return type
  "sfTime_asSeconds"			; function name in C
  sf-time)				; function arguments

(define-foreign lib-sfml-system
  %sf-time-as-milliseconds		; function name in guile
  int32					; return type
  "sfTime_asMilliseconds"		; function name in C
  sf-time)				; function arguments

(define-foreign lib-sfml-system
  %sf-time-as-microseconds		; function name in guile
  int64					; return type
  "sfTime_asMicroseconds"		; function name in C
  sf-time)				; function arguments

(define-foreign lib-sfml-system
  %sf-seconds				; function name in guile
  sf-time 				; return type
  "sfSeconds"				; function name in C
  (list float))				; function arguments

(define-foreign lib-sfml-system
  %sf-milliseconds			; function name in guile
  sf-time				; return type
  "sfMilliseconds"			; function name in C
  (list int32))				; function arguments

(define-foreign lib-sfml-system
  %sf-microseconds			; function name in guile
  sf-time				; return type
  "sfMicroseconds"			; function name in C
  (list int64))				; function arguments
