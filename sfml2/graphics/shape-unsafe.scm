(define-module (sfml2 graphics shape-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-shape>
	    sf-shape?
	    wrap-sf-shape
	    unwrap-sf-shape
	    %sf-shape-create
	    %sf-shape-destroy
	    %sf-shape-set-position
	    %sf-shape-set-rotation
	    %sf-shape-set-scale
	    %sf-shape-set-origin
	    %sf-shape-get-position
	    %sf-shape-get-rotation
	    %sf-shape-get-scale
	    %sf-shape-get-origin
	    %sf-shape-move
	    %sf-shape-rotate
	    %sf-shape-scale
	    %sf-shape-get-transform
	    %sf-shape-get-inverse-transform
	    %sf-shape-get-texture
	    %sf-shape-get-texture-rect
	    %sf-shape-get-fill-color
	    %sf-shape-get-outline-color
	    %sf-shape-get-outline-thickness
	    %sf-shape-get-point-count
	    %sf-shape-get-point
	    %sf-shape-get-local-bounds
	    %sf-shape-get-global-bounds
	    %sf-shape-update)
  #:re-export (sf-shape-*))

(define-wrapped-pointer-type <sf-shape>
  sf-shape?
  wrap-sf-shape unwrap-sf-shape
  (lambda (s port)
    (display "<sf-shape>" port)))

(define-ff %sf-shape-create
  sf-shape-* sfShape_create (list '* '* '*))

(define-ff %sf-shape-destroy
  void sfShape_destroy (list sf-shape-*))

(define-ff %sf-shape-set-position
  void sfShape_setPosition (list sf-shape-* sf-vector2f))

(define-ff %sf-shape-set-rotation
  void sfShape_setRotation (list sf-shape-* float))

(define-ff %sf-shape-set-scale
  void sfShape_setScale (list sf-shape-* sf-vector2f))

(define-ff %sf-shape-set-origin
  void sfShape_setOrigin (list sf-shape-* sf-vector2f))

(define-ff %sf-shape-get-position
  sf-vector2f sfShape_getPosition (list sf-shape-*))

(define-ff %sf-shape-get-rotation
  float sfShape_getRotation (list sf-shape-*))

(define-ff %sf-shape-get-scale
  sf-vector2f sfShape_getScale (list sf-shape-*))

(define-ff %sf-shape-get-origin
  sf-vector2f sfShape_getOrigin (list sf-shape-*))

(define-ff %sf-shape-move
  void sfShape_move (list sf-shape-* sf-vector2f))

(define-ff %sf-shape-rotate
  void sfShape_rotate (list sf-shape-* float))

(define-ff %sf-shape-scale
  void sfShape_scale (list sf-shape-* sf-vector2f))

(define-ff %sf-shape-get-transform
  sf-transform sfShape_getTransform (list sf-shape-*))

(define-ff %sf-shape-get-inverse-transform
  sf-transform sfShape_getInverseTransform (list sf-shape-*))

(define-ff %sf-shape-set-texture
  void sfShape_setTexture (list sf-shape-* sf-texture-* sf-bool))

(define-ff %sf-shape-set-texture-rect
  void sfShape_setTextureRect (list sf-shape-* sf-int-rect))

(define-ff %sf-shape-set-fill-color
  void sfShape_setFillColor (list sf-shape-* sf-color))

(define-ff %sf-shape-set-outline-color
  void sfShape_setOutlineColor (list sf-shape-* sf-color))

(define-ff %sf-shape-set-outline-thickness
  void sfShape_setOutlineThickness (list sf-shape-* float))

(define-ff %sf-shape-get-point-count
  unsigned-int sfShape_getPointCount (list sf-shape-*))

(define-ff %sf-shape-get-point
  sf-vector2f sfShape_getPoint (list sf-shape-* unsigned-int))

(define-ff %sf-shape-get-local-bounds
  sf-float-rect sfShape_getLocalBounds (list sf-shape-*))

(define-ff %sf-shape-get-global-bounds
  sf-float-rect sfShape_getGlobalBounds (list sf-shape-*))

(define-ff %sf-shape-update
  void sfShape_update (list sf-shape-*))
