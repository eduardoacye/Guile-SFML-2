(define-module (sfml2 system sleep)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:use-module (sfml2 system time)
  #:export (sf-sleep))

;;; binding functions
(foreign-function sf-sleep : void "sfSleep" sf-time)
