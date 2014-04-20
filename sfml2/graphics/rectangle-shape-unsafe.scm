(define-module (sfml2 graphics rectangle-shape-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-rectangle-shape>
	    sf-rectangle-shape?
	    wrap-sf-rectangle-shape
	    unwrap-sf-rectangle-shape
	    %sf-rectangle-shape-create
	    %sf-rectangle-shape-copy
	    %sf-rectangle-shape-destroy
	    %sf-rectangle-shape-set-position
	    %sf-rectangle-shape-set-rotation
	    %sf-rectangle-shape-set-scale
	    %sf-rectangle-shape-set-origin
	    %sf-rectangle-shape-get-position
	    %sf-rectangle-shape-get-rotation
	    %sf-rectangle-shape-get-scale
	    %sf-rectangle-shape-get-origin
	    %sf-rectangle-shape-move
	    %sf-rectangle-shape-rotate
	    %sf-rectangle-shape-scale
	    %sf-rectangle-shape-get-transform
	    %sf-rectangle-shape-get-inverse-transform
	    %sf-rectangle-shape-set-texture
	    %sf-rectangle-shape-set-texture-rect
	    %sf-rectangle-shape-set-fill-color
	    %sf-rectangle-shape-set-outline-color
	    %sf-rectangle-shape-set-outline-thickness
	    %sf-rectangle-shape-get-texture
	    %sf-rectangle-shape-get-texture-rect
	    %sf-rectangle-shape-get-fill-color
	    %sf-rectangle-shape-get-outline-color
	    %sf-rectangle-shape-get-outline-thickness
	    %sf-rectangle-shape-get-point-count
	    %sf-rectangle-shape-get-point
	    %sf-rectangle-shape-set-size
	    %sf-rectangle-shape-get-size
	    %sf-rectangle-shape-get-local-bounds
	    %sf-rectangle-shape-get-global-bounds)
  #:re-export (sf-rectangle-shape-*))

(define-wrapped-pointer-type <sf-rectangle-shape>
  sf-rectangle-shape?
  wrap-sf-rectangle-shape unwrap-sf-rectangle-shape
  (lambda (cs port)
    (display "<sf-rectangle-shape>" port)))

(define-ff %sf-rectangle-shape-create
  sf-rectangle-shape-* sfRectangleShape_create (list))

(define-ff %sf-rectangle-shape-copy
  sf-rectangle-shape-* sfRectangleShape_copy (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-destroy
  void sfRectangleShape_destroy (list sf-rectangle-shape-*))
(define-ff %sf-rectangle-shape-set-position
  void sfRectangleShape_setPosition (list sf-rectangle-shape-* sf-vector2f))

(define-ff %sf-rectangle-shape-set-rotation
  void sfRectangleShape_setRotation (list sf-rectangle-shape-* float))

(define-ff %sf-rectangle-shape-set-scale
  void sfRectangleShape_setScale (list sf-rectangle-shape-* sf-vector2f))

(define-ff %sf-rectangle-shape-set-origin
  void sfRectangleShape_setOrigin (list sf-rectangle-shape-* sf-vector2f))

(define-ff %sf-rectangle-shape-get-position
  sf-vector2f sfRectangleShape_getPosition (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-rotation
  float sfRectangleShape_getRotation (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-scale
  sf-vector2f sfRectangleShape_getScale (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-origin
  sf-vector2f sfRectangleShape_getOrigin (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-move
  void sfRectangleShape_move (list sf-rectangle-shape-* sf-vector2f))

(define-ff %sf-rectangle-shape-rotate
  void sfRectangleShape_rotate (list sf-rectangle-shape-* float))

(define-ff %sf-rectangle-shape-scale
  void sfRectangleShape_scale (list sf-rectangle-shape-* sf-vector2f))

(define-ff %sf-rectangle-shape-get-transform
  sf-transform sfRectangleShape_getTransform (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-inverse-transform
  sf-transform sfRectangleShape_getInverseTransform (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-set-texture
  void sfRectangleShape_setTexture (list sf-rectangle-shape-* sf-texture-* sf-bool))

(define-ff %sf-rectangle-shape-set-texture-rect
  void sfRectangleShape_setTextureRect (list sf-rectangle-shape-* sf-int-rect))

(define-ff %sf-rectangle-shape-set-fill-color
  void sfRectangleShape_setFillColor (list sf-rectangle-shape-* sf-color))

(define-ff %sf-rectangle-shape-set-outline-color
  void sfRectangleShape_setOutlineColor (list sf-rectangle-shape-* sf-color))

(define-ff %sf-rectangle-shape-set-outline-thickness
  void sfRectangleShape_setOutlineThickness (list sf-rectangle-shape-* float))

(define-ff %sf-rectangle-shape-get-texture
  sf-texture-* sfRectangleShape_getTexture (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-texture-rect
  sf-int-rect sfRectangleShape_getTextureRect (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-fill-color
  sf-color sfRectangleShape_getFillColor (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-outline-color
  sf-color sfRectangleShape_getOutlineColor (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-outline-thickness
  float sfRectangleShape_getOutlineThickness (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-point-count
  unsigned-int sfRectangleShape_getPointCount (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-point
  sf-vector2f sfRectangleShape_getPoint (list sf-rectangle-shape-* unsigned-int))

(define-ff %sf-rectangle-shape-set-size
  void sfRectangleShape_setSize (list sf-rectangle-shape-* sf-vector2f))

(define-ff %sf-rectangle-shape-get-size
  sf-vector2f sfRectangleShape_getSize (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-local-bounds
  sf-float-rect sfRectangleShape_getLocalBounds (list sf-rectangle-shape-*))

(define-ff %sf-rectangle-shape-get-global-bounds
  sf-float-rect sfRectangleShape_getGlobalBounds (list sf-rectangle-shape-*))
