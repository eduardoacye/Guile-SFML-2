;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/convex-shape-unsafe.scm
;;; 
;;; Module that exports the <sf-convex-shape> record and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics convex-shape-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-convex-shape>
	    sf-convex-shape?
	    wrap-sf-convex-shape
	    unwrap-sf-convex-shape
	    %sf-convex-shape-create
	    %sf-convex-shape-copy
	    %sf-convex-shape-destroy
	    %sf-convex-shape-set-position
	    %sf-convex-shape-set-rotation
	    %sf-convex-shape-set-scale
	    %sf-convex-shape-set-origin
	    %sf-convex-shape-get-position
	    %sf-convex-shape-get-rotation
	    %sf-convex-shape-get-scale
	    %sf-convex-shape-get-origin
	    %sf-convex-shape-move
	    %sf-convex-shape-rotate
	    %sf-convex-shape-scale
	    %sf-convex-shape-get-transform
	    %sf-convex-shape-get-inverse-transform
	    %sf-convex-shape-set-texture
	    %sf-convex-shape-set-texture-rect
	    %sf-convex-shape-set-fill-color
	    %sf-convex-shape-set-outline-color
	    %sf-convex-shape-set-outline-thickness
	    %sf-convex-shape-get-texture
	    %sf-convex-shape-get-texture-rect
	    %sf-convex-shape-get-fill-color
	    %sf-convex-shape-get-outline-color
	    %sf-convex-shape-get-outline-thickness
	    %sf-convex-shape-get-point-count
	    %sf-convex-shape-get-point
	    %sf-convex-shape-set-point
	    %sf-convex-shape-set-point-count
	    %sf-convex-shape-get-local-bounds
	    %sf-convex-shape-get-global-bounds)
  #:re-export (sf-convex-shape-*))

;;; record for the sfConvexShape opaque structure
(define-wrapped-pointer-type <sf-convex-shape>
  sf-convex-shape?
  wrap-sf-convex-shape unwrap-sf-convex-shape
  (lambda (cs port)
    (display "<sf-convex-shape>" port)))

;;; binding functions
(define-ff %sf-convex-shape-create
  sf-convex-shape-* sfConvexShape_create (list))

(define-ff %sf-convex-shape-copy
  sf-convex-shape-* sfConvexShape_copy (list sf-convex-shape-*))

(define-ff %sf-convex-shape-destroy
  void sfConvexShape_destroy (list sf-convex-shape-*))
(define-ff %sf-convex-shape-set-position
  void sfConvexShape_setPosition (list sf-convex-shape-* sf-vector2f))

(define-ff %sf-convex-shape-set-rotation
  void sfConvexShape_setRotation (list sf-convex-shape-* float))

(define-ff %sf-convex-shape-set-scale
  void sfConvexShape_setScale (list sf-convex-shape-* sf-vector2f))

(define-ff %sf-convex-shape-set-origin
  void sfConvexShape_setOrigin (list sf-convex-shape-* sf-vector2f))

(define-ff %sf-convex-shape-get-position
  sf-vector2f sfConvexShape_getPosition (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-rotation
  float sfConvexShape_getRotation (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-scale
  sf-vector2f sfConvexShape_getScale (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-origin
  sf-vector2f sfConvexShape_getOrigin (list sf-convex-shape-*))

(define-ff %sf-convex-shape-move
  void sfConvexShape_move (list sf-convex-shape-* sf-vector2f))

(define-ff %sf-convex-shape-rotate
  void sfConvexShape_rotate (list sf-convex-shape-* float))

(define-ff %sf-convex-shape-scale
  void sfConvexShape_scale (list sf-convex-shape-* sf-vector2f))

(define-ff %sf-convex-shape-get-transform
  sf-transform sfConvexShape_getTransform (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-inverse-transform
  sf-transform sfConvexShape_getInverseTransform (list sf-convex-shape-*))

(define-ff %sf-convex-shape-set-texture
  void sfConvexShape_setTexture (list sf-convex-shape-* sf-texture-* sf-bool))

(define-ff %sf-convex-shape-set-texture-rect
  void sfConvexShape_setTextureRect (list sf-convex-shape-* sf-int-rect))

(define-ff %sf-convex-shape-set-fill-color
  void sfConvexShape_setFillColor (list sf-convex-shape-* sf-color))

(define-ff %sf-convex-shape-set-outline-color
  void sfConvexShape_setOutlineColor (list sf-convex-shape-* sf-color))

(define-ff %sf-convex-shape-set-outline-thickness
  void sfConvexShape_setOutlineThickness (list sf-convex-shape-* float))

(define-ff %sf-convex-shape-get-texture
  sf-texture-* sfConvexShape_getTexture (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-texture-rect
  sf-int-rect sfConvexShape_getTextureRect (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-fill-color
  sf-color sfConvexShape_getFillColor (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-outline-color
  sf-color sfConvexShape_getOutlineColor (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-outline-thickness
  float sfConvexShape_getOutlineThickness (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-point-count
  unsigned-int sfConvexShape_getPointCount (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-point
  sf-vector2f sfConvexShape_getPoint (list sf-convex-shape-* unsigned-int))

(define-ff %sf-convex-shape-set-point
  void sfConvexShape_setPoint (list sf-convex-shape-* unsigned-int sf-vector2f))

(define-ff %sf-convex-shape-set-point-count
  void sfConvexShape_setPointCount (list sf-convex-shape-* unsigned-int))

(define-ff %sf-convex-shape-get-local-bounds
  sf-float-rect sfConvexShape_getLocalBounds (list sf-convex-shape-*))

(define-ff %sf-convex-shape-get-global-bounds
  sf-float-rect sfConvexShape_getGlobalBounds (list sf-convex-shape-*))
