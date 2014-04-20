;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/circle-shape-unsafe.scm
;;; 
;;; Module that exports the <sf-circle-shape> record and the associated
;;; procedures and enumerations
;;;

(define-module (sfml2 graphics circle-shape-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-circle-shape>
	    sf-circle-shape?
	    wrap-sf-circle-shape
	    unwrap-sf-circle-shape
	    %sf-circle-shape-create
	    %sf-circle-shape-copy
	    %sf-circle-shape-destroy
	    %sf-circle-shape-set-position
	    %sf-circle-shape-set-rotation
	    %sf-circle-shape-set-scale
	    %sf-circle-shape-set-origin
	    %sf-circle-shape-get-position
	    %sf-circle-shape-get-rotation
	    %sf-circle-shape-get-scale
	    %sf-circle-shape-get-origin
	    %sf-circle-shape-move
	    %sf-circle-shape-rotate
	    %sf-circle-shape-scale
	    %sf-circle-shape-get-transform
	    %sf-circle-shape-get-inverse-transform
	    %sf-circle-shape-set-texture
	    %sf-circle-shape-set-texture-rect
	    %sf-circle-shape-set-fill-color
	    %sf-circle-shape-set-outline-color
	    %sf-circle-shape-set-outline-thickness
	    %sf-circle-shape-get-texture
	    %sf-circle-shape-get-texture-rect
	    %sf-circle-shape-get-fill-color
	    %sf-circle-shape-get-outline-color
	    %sf-circle-shape-get-outline-thickness
	    %sf-circle-shape-get-point-count
	    %sf-circle-shape-get-point
	    %sf-circle-shape-set-radius
	    %sf-circle-shape-get-radius
	    %sf-circle-shape-set-point-count
	    %sf-circle-shape-get-local-bounds
	    %sf-circle-shape-get-global-bounds)
  #:re-export (sf-circle-shape-*))

;;; record for the sfCircleShape opaque structure
(define-wrapped-pointer-type <sf-circle-shape>
  sf-circle-shape?
  wrap-sf-circle-shape unwrap-sf-circle-shape
  (lambda (cs port)
    (display "<sf-circle-shape>" port)))

;;; binding functions
(define-ff %sf-circle-shape-create
  sf-circle-shape-* sfCircleShape_create (list))

(define-ff %sf-circle-shape-copy
  sf-circle-shape-* sfCircleShape_copy (list sf-circle-shape-*))

(define-ff %sf-circle-shape-destroy
  void sfCircleShape_destroy (list sf-circle-shape-*))
(define-ff %sf-circle-shape-set-position
  void sfCircleShape_setPosition (list sf-circle-shape-* sf-vector2f))

(define-ff %sf-circle-shape-set-rotation
  void sfCircleShape_setRotation (list sf-circle-shape-* float))

(define-ff %sf-circle-shape-set-scale
  void sfCircleShape_setScale (list sf-circle-shape-* sf-vector2f))

(define-ff %sf-circle-shape-set-origin
  void sfCircleShape_setOrigin (list sf-circle-shape-* sf-vector2f))

(define-ff %sf-circle-shape-get-position
  sf-vector2f sfCircleShape_getPosition (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-rotation
  float sfCircleShape_getRotation (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-scale
  sf-vector2f sfCircleShape_getScale (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-origin
  sf-vector2f sfCircleShape_getOrigin (list sf-circle-shape-*))

(define-ff %sf-circle-shape-move
  void sfCircleShape_move (list sf-circle-shape-* sf-vector2f))

(define-ff %sf-circle-shape-rotate
  void sfCircleShape_rotate (list sf-circle-shape-* float))

(define-ff %sf-circle-shape-scale
  void sfCircleShape_scale (list sf-circle-shape-* sf-vector2f))

(define-ff %sf-circle-shape-get-transform
  sf-transform sfCircleShape_getTransform (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-inverse-transform
  sf-transform sfCircleShape_getInverseTransform (list sf-circle-shape-*))

(define-ff %sf-circle-shape-set-texture
  void sfCircleShape_setTexture (list sf-circle-shape-* sf-texture-* sf-bool))

(define-ff %sf-circle-shape-set-texture-rect
  void sfCircleShape_setTextureRect (list sf-circle-shape-* sf-int-rect))

(define-ff %sf-circle-shape-set-fill-color
  void sfCircleShape_setFillColor (list sf-circle-shape-* sf-color))

(define-ff %sf-circle-shape-set-outline-color
  void sfCircleShape_setOutlineColor (list sf-circle-shape-* sf-color))

(define-ff %sf-circle-shape-set-outline-thickness
  void sfCircleShape_setOutlineThickness (list sf-circle-shape-* float))

(define-ff %sf-circle-shape-get-texture
  sf-texture-* sfCircleShape_getTexture (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-texture-rect
  sf-int-rect sfCircleShape_getTextureRect (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-fill-color
  sf-color sfCircleShape_getFillColor (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-outline-color
  sf-color sfCircleShape_getOutlineColor (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-outline-thickness
  float sfCircleShape_getOutlineThickness (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-point-count
  unsigned-int sfCircleShape_getPointCount (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-point
  sf-vector2f sfCircleShape_getPoint (list sf-circle-shape-* unsigned-int))

(define-ff %sf-circle-shape-set-radius
  void sfCircleShape_setRadius (list sf-circle-shape-* float))

(define-ff %sf-circle-shape-get-radius
  float sfCircleShape_getRadius (list sf-circle-shape-*))

(define-ff %sf-circle-shape-set-point-count
  void sfCircleShape_setPointCount (list sf-circle-shape-* unsigned-int))

(define-ff %sf-circle-shape-get-local-bounds
  sf-float-rect sfCircleShape_getLocalBounds (list sf-circle-shape-*))

(define-ff %sf-circle-shape-get-global-bounds
  sf-float-rect sfCircleShape_getGlobalBounds (list sf-circle-shape-*))
