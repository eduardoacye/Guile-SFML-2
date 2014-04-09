(define-module (sfml2 system vector3)
  #:use-module (system foreign)
  #:export (sf-vector3f
	    pointer->sf-vector3f
	    sf-vector3f->pointer))

;;; sf-vector3f structure binding
(define sf-vector3f (list float float float))

(define (pointer->sf-vector3f c-struct)
  (parse-c-struct c-struct sf-vector3f))

(define (sf-vector3f->pointer lst-struct)
  (make-c-struct sf-vector3f lst-struct))
