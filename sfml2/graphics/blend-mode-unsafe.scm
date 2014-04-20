(define-module (sfml2 graphics blend-mode-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:export (sf-blend-mode
	    sf-blend-alpha
	    sf-blend-add
	    sf-blend-multiply
	    sf-blend-none))

(define sf-blend-mode int)

(define sf-blend-alpha    0)
(define sf-blend-add      1)
(define sf-blend-multiply 2) 
(define sf-blend-none     3)
