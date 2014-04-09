(define-module (sfml2 system clock)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:use-module (sfml2 system time)
  #:export (<sf-clock>
	    sf-clock?
	    wrap-sf-clock
	    unwrap-sf-clock
	    %sf-clock-create
	    %sf-clock-copy
	    %sf-clock-destroy
	    %sf-clock-get-elapsed-time
	    %sf-clock-restart))

;;; sf-clock pointer structure binding
(define-wrapped-pointer-type <sf-clock>
  sf-clock?
  wrap-sf-clock unwrap-sf-clock
  (lambda (c port)
    (display "<sf-clock>" port)))

;;; binding functions
(define-ff %sf-clock-create
           '* sfClock_create (list ))

(define-ff %sf-clock-copy
           '* sfClock_copy (list '*))

(define-ff %sf-clock-destroy
           void sfClock_destroy (list '*))

(define-ff %sf-clock-get-elapsed-time
           sf-time sfClock_getElapsedTime (list '*))

(define-ff %sf-clock-restart
           sf-time sfClock_restart (list '*))
