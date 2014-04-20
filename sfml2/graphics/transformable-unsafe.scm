(define-module (sfml2 graphics transformable-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-transformable>
	    sf-transformable?
	    wrap-sf-transformable
	    unwrap-sf-transformable
	    %sf-transformable-create
	    %sf-transformable-copy
	    %sf-transformable-destroy
	    %sf-transformable-set-position
	    %sf-transformable-set-rotation
	    %sf-transformable-set-scale
	    %sf-transformable-set-origin
	    %sf-transformable-get-position
	    %sf-transformable-get-rotation
	    %sf-transformable-get-scale
	    %sf-transformable-get-origin
	    %sf-transformable-move
	    %sf-transformable-rotate
	    %sf-transformable-scale
	    %sf-transformable-get-transform
	    %sf-transformable-get-inverse-transform)
  #:re-export (sf-transformable-*))

(define-wrapped-pointer-type <sf-transformable>
  sf-transformable?
  wrap-sf-transformable unwrap-sf-transformable
  (lambda (t port)
    (display "<sf-transformable>" port)))

(define-ff %sf-transformable-create
  sf-transformable-* sfTransformable_create (list))
(define-ff %sf-transformable-copy
  sf-transformable-* sfTransformable_copy (list sf-transformable-*))
(define-ff %sf-transformable-destroy
  void sfTransformable_destroy (list sf-transformable-*))
(define-ff %sf-transformable-set-position
  void sfTransformable_setPosition (list sf-transformable-* sf-vector2f))
(define-ff %sf-transformable-set-rotation
  void sfTransformable_setRotation (list sf-transformable-* float))
(define-ff %sf-transformable-set-scale
  void sfTransformable_setScale (list sf-transformable-* sf-vector2f))
(define-ff %sf-transformable-set-origin
  void sfTransformable_setOrigin (list sf-transformable-* sf-vector2f))
(define-ff %sf-transformable-get-position
  sf-vector2f sfTransformable_getPosition (list sf-transformable-*))
(define-ff %sf-transformable-get-rotation
  float sfTransformable_getRotation (list sf-transformable-*))
(define-ff %sf-transformable-get-scale
  sf-vector2f sfTransformable_getScale (list sf-transformable-*))
(define-ff %sf-transformable-get-origin
  sf-vector2f sfTransformable_getOrigin (list sf-transformable-*))
(define-ff %sf-transformable-move
  void sfTransformable_move (list sf-transformable-* sf-vector2f))
(define-ff %sf-transformable-rotate
  void sfTransformable_rotate (list sf-transformable-* float))
(define-ff %sf-transformable-scale
  void sfTransformable_scale (list sf-transformable-* sf-vector2f))
(define-ff %sf-transformable-get-transform
  sf-transform sfTransformable_getTransform (list sf-transformable-*))
(define-ff %sf-transformable-get-inverse-transform
  sf-transform sfTransformable_getInverseTransform (list sf-transformable-*))
