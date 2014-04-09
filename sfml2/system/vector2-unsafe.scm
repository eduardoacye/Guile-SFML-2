(define-module (sfml2 system vector2-unsafe)
  #:use-module (system foreign)
  #:export (sf-vector2i
	    sf-vector2u
	    sf-vector2f
	    pointer->sf-vector2i
	    pointer->sf-vector2u
	    pointer->sf-vector2f
	    sf-vector2i->pointer
	    sf-vector2u->pointer
	    sf-vector2f->pointer))


;;; sf-vector2i structure binding
(define sf-vector2i (list int int))

(define (pointer->sf-vector2i c-struct)
  (parse-c-struct c-struct sf-vector2i))

(define (sf-vector2i->pointer lst-struct)
  (make-c-struct sf-vector2i lst-struct))


;;; sf-vector2u structure binding
(define sf-vector2u (list unsigned-int unsigned-int))

(define (pointer->sf-vector2u c-struct)
  (parse-c-struct c-struct sf-vector2u))

(define (sf-vector2u->pointer lst-struct)
  (make-c-struct sf-vector2u lst-struct))


;;; sf-vector2f structure binding
(define sf-vector2f (list float float))

(define (pointer->sf-vector2f c-struct)
  (parse-c-struct c-struct sf-vector2f))

(define (sf-vector2f->pointer lst-struct)
  (make-c-struct sf-vector2f lst-struct))
