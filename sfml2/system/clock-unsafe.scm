;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/system/clock-unsafe.scm
;;; 
;;; Module that exports the <sf-clock> record and the associated
;;; procedures
;;;

(define-module (sfml2 system clock-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:use-module (sfml2 system time-unsafe)
  #:export (<sf-clock>
	    sf-clock?
	    wrap-sf-clock
	    unwrap-sf-clock
	    %sf-clock-create
	    %sf-clock-copy
	    %sf-clock-destroy
	    %sf-clock-get-elapsed-time
	    %sf-clock-restart))

;;; record for the sfClock opaque structure
(define-wrapped-pointer-type <sf-clock>
  sf-clock?
  wrap-sf-clock unwrap-sf-clock
  (lambda (c port)
    (display "<sf-clock>" port)))

;;; binding functions
(define-ff %sf-clock-create
           '* sfClock_create (list))

(define-ff %sf-clock-copy
           '* sfClock_copy (list '*))

(define-ff %sf-clock-destroy
           void sfClock_destroy (list '*))

(define-ff %sf-clock-get-elapsed-time
           sf-time sfClock_getElapsedTime (list '*))

(define-ff %sf-clock-restart
           sf-time sfClock_restart (list '*))
