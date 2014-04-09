(define-module (sfml2 system time-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:export (sf-time
	    pointer->sf-time
	    sf-time->pointer
	    %sf-time-as-seconds
	    %sf-time-as-milliseconds
	    %sf-time-as-microseconds
	    %sf-seconds
	    %sf-milliseconds
	    %sf-microseconds))

;;; sf-time structure binding
(define sf-time (list int64))

(define (pointer->sf-time c-struct)
  (parse-c-struct c-struct sf-time))

(define (sf-time->pointer lst-struct)
  (make-c-struct sf-time lst-struct))

;;; binding functions
(define-ff %sf-time-as-seconds
           float sfTime_asSeconds sf-time)

(define-ff %sf-time-as-milliseconds
           int32 sfTime_asMilliseconds sf-time)

(define-ff %sf-time-as-microseconds
           int64 sfTime_asMicroseconds sf-time)

(define-ff %sf-seconds
           sf-time sfSeconds (list float))

(define-ff %sf-milliseconds
           sf-time sfMilliseconds (list int32))

(define-ff %sf-microseconds
           sf-time sfMicroseconds (list int64))
