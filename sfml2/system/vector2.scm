(define-module (sfml2 system vector2)
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

(define (pointer->sf-vector2i pointer)
  (parse-c-struct pointer sf-vector2i))

(define (sf-vector2i->pointer x y)
  (make-c-struct sf-vector2i (list x y)))


;;; sf-vector2u structure binding
(define sf-vector2u (list unsigned-int unsigned-int))

(define (pointer->sf-vector2u pointer)
  (parse-c-struct pointer sf-vector2u))

(define (sf-vector2u->pointer x y)
  (make-c-struct sf-vector2u (list x y)))


;;; sf-vector2f structure binding
(define sf-vector2f (list float float))

(define (pointer->sf-vector2f pointer)
  (parse-c-struct pointer sf-vector2f))

(define (sf-vector2f->pointer x y)
  (make-c-struct sf-vector2f (list x y)))
