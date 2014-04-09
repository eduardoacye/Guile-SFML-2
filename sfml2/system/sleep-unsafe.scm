;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/system/sleep-unsafe.scm
;;; 
;;; Module that exports the %sf-sleep procedure
;;;

(define-module (sfml2 system sleep-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:use-module (sfml2 system time-unsafe)
  #:export (%sf-sleep))

;;; binding functions
(define-ff %sf-sleep
           void sfSleep sf-time)
