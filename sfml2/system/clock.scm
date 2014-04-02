(define-module (sfml2 system clock)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:use-module (sfml2 system time)
  #:export (sf-clock-create
	    sf-clock-copy
	    sf-clock-destroy
	    sf-clock-get-elapsed-time
	    sf-clock-restart))

;;; sf-clock pointer structure binding
(define-wrapped-pointer-type <sf-clock>
  sf-clock?
  wrap-sf-clock unwrap-sf-clock
  (lambda (c port)
    (display "<sf-clock>" port)))

;;; binding functions
(foreign-function %sf-clock-create : '* "sfClock_create" (list ))

(foreign-function %sf-clock-copy : '* "sfClock_copy" (list '*))

(foreign-function %sf-clock-destroy : void "sfClock_destroy" (list '*))

(foreign-function %sf-clock-get-elapsed-time : sf-time "sfClock_getElapsedTime" (list '*))

(foreign-function %sf-clock-restart : sf-time "sfClock_restart" (list '*))

;;; wrapper functions
(define (sf-clock-create)
  (wrap-sf-clock (%sf-clock-create)))

(define (sf-clock-copy clock)
  (wrap-sf-clock (%sf-clock-copy (unwrap-sf-clock clock))))

(define (sf-clock-destroy clock)
  (%sf-clock-destroy (unwrap-sf-clock clock)))

(define (sf-clock-get-elapsed-time clock)
  (%sf-clock-get-elapsed-time (unwrap-sf-clock clock)))

(define (sf-clock-restart clock)
  (%sf-clock-restart (unwrap-sf-clock clock)))
