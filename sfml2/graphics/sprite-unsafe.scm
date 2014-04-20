;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/sprite-unsafe.scm
;;; 
;;; Module that exports the <sf-sprite> record and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics sprite-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics blend-mode-unsafe)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-sprite>
	    sf-sprite?
	    wrap-sf-sprite
	    unwrap-sf-sprite
	    %sf-sprite-create
	    %sf-sprite-copy
	    %sf-sprite-destroy
	    %sf-sprite-set-position
	    %sf-sprite-set-rotation
	    %sf-sprite-set-scale
	    %sf-sprite-set-origin
	    %sf-sprite-get-position
	    %sf-sprite-get-rotation
	    %sf-sprite-get-scale
	    %sf-sprite-get-origin
	    %sf-sprite-move
	    %sf-sprite-rotate
	    %sf-sprite-scale
	    %sf-sprite-get-transform
	    %sf-sprite-get-inverse-transform
	    %sf-sprite-set-texture
	    %sf-sprite-set-texture-rect
	    %sf-sprite-set-color
	    %sf-sprite-get-texture
	    %sf-sprite-get-texture-rect
	    %sf-sprite-get-color
	    %sf-sprite-get-local-bounds
	    %sf-sprite-get-global-bounds)
  #:re-export (sf-sprite-*))

;;; record for the sfSprite opaque structure
(define-wrapped-pointer-type <sf-sprite>
  sf-sprite?
  wrap-sf-sprite unwrap-sf-sprite
  (lambda (s port)
    (display "<sf-sprite>" port)))

;;; binding functions
(define-ff %sf-sprite-create
  sf-sprite-* sfSprite_create (list))

(define-ff %sf-sprite-copy
  sf-sprite-* sfSprite_copy (list sf-sprite-*))

(define-ff %sf-sprite-destroy
  void sfSprite_destroy (list sf-sprite-*))

(define-ff %sf-sprite-set-position
  void sfSprite_setPosition (list sf-sprite-* sf-vector2f))

(define-ff %sf-sprite-set-rotation
  void sfSprite_setRotation (list sf-sprite-* float))

(define-ff %sf-sprite-set-scale
  void sfSprite_setScale (list sf-sprite-* sf-vector2f))

(define-ff %sf-sprite-set-origin
  void sfSprite_setOrigin (list sf-sprite-* sf-vector2f))

(define-ff %sf-sprite-get-position
  sf-vector2f sfSprite_getPosition (list sf-sprite-*))

(define-ff %sf-sprite-get-rotation
  float sfSprite_getRotation (list sf-sprite-*))

(define-ff %sf-sprite-get-scale
  sf-vector2f sfSprite_getScale (list sf-sprite-*))

(define-ff %sf-sprite-get-origin
  sf-vector2f sfSprite_getOrigin (list sf-sprite-*))

(define-ff %sf-sprite-move
  void sfSprite_move (list sf-sprite-* sf-vector2f))

(define-ff %sf-sprite-rotate
  void sfSprite_rotate (list sf-sprite-* float))

(define-ff %sf-sprite-scale
  void sfSprite_scale (list sf-sprite-* sf-vector2f))

(define-ff %sf-sprite-get-transform
  sf-transform sfSprite_getTransform (list sf-sprite-*))

(define-ff %sf-sprite-get-inverse-transform
  sf-transform sfSprite_getInverseTransform (list sf-sprite-*))

(define-ff %sf-sprite-set-texture
  void sfSprite_setTexture (list sf-sprite-* sf-texture-* sf-bool))

(define-ff %sf-sprite-set-texture-rect
  void sfSprite_setTextureRect (list sf-sprite-* sf-int-rect))

(define-ff %sf-sprite-set-color
  void sfSprite_setColor (list sf-sprite-* sf-color))

(define-ff %sf-sprite-get-texture
  sf-texture-* sfSprite_getTexture (list sf-sprite-*))

(define-ff %sf-sprite-get-texture-rect
  sf-int-rect sfSprite_getTextureRect (list sf-sprite-*))

(define-ff %sf-sprite-get-color
  sf-color sfSprite_getColor (list sf-sprite-*))

(define-ff %sf-sprite-get-local-bounds
  sf-float-rect sfSprite_getLocalBounds (list sf-sprite-*))

(define-ff %sf-sprite-get-global-bounds
  sf-float-rect sfSprite_getGlobalBounds (list sf-sprite-*))
