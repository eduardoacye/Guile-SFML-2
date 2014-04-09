(define-module (sfml2 system sleep-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:use-module (sfml2 system time-unsafe)
  #:export (%sf-sleep))

;;; binding functions
(define-ff %sf-sleep
           void sfSleep sf-time)
