(define-module (sfml2 graphics text-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-text>
	    sf-text?
	    wrap-sf-text
	    unwrap-sf-text
	    %sf-text-create
	    %sf-text-copy
	    %sf-text-destroy
	    %sf-text-set-position
	    %sf-text-set-rotation
	    %sf-text-set-scale
	    %sf-text-set-origin
	    %sf-text-get-position
	    %sf-text-get-rotation
	    %sf-text-get-scale
	    %sf-text-get-origin
	    %sf-text-move
	    %sf-text-rotate
	    %sf-text-scale
	    %sf-text-get-transform
	    %sf-text-get-inverse-transform
	    %sf-text-set-string
	    %sf-text-set-unicode-string
	    %sf-text-set-font
	    %sf-text-set-character-size
	    %sf-text-set-style
	    %sf-text-set-color
	    %sf-text-get-string
	    %sf-text-get-unicode-string
	    %sf-text-get-font
	    %sf-text-get-character-size
	    %sf-text-get-style
	    %sf-text-get-color
	    %sf-text-find-character-pos
	    %sf-text-get-local-bounds
	    %sf-text-get-global-bounds)
  #:re-export (sf-text-*))

(define-wrapped-pointer-type <sf-text>
  sf-text?
  wrap-sf-text unwrap-sf-text
  (lambda (t port)
    (display "<sf-text>" port)))

(define sf-text-style int)

(define sf-text-regular    0)
(define sf-text-bold       1)
(define sf-text-italic     2)
(define sf-text-underlined 3)

(define-ff %sf-text-create
  sf-text-* sfText_create (list))

(define-ff %sf-text-copy
  sf-text-* sfText_copy (list sf-text-*))

(define-ff %sf-text-destroy
  void sfText_destroy (list sf-text-*))

(define-ff %sf-text-set-position
  void sfText_setPosition (list sf-text-* sf-vector2f))

(define-ff %sf-text-set-rotation
  void sfText_setRotation (list sf-text-* float))

(define-ff %sf-text-set-scale
  void sfText_setScale (list sf-text-* sf-vector2f))

(define-ff %sf-text-set-origin
  void sfText_setOrigin (list sf-text-* sf-vector2f))

(define-ff %sf-text-get-position
  sf-vector2f sfText_getPosition (list sf-text-*))

(define-ff %sf-text-get-rotation
  float sfText_getRotation (list sf-text-*))

(define-ff %sf-text-get-scale
  sf-vector2f sfText_getScale (list sf-text-*))

(define-ff %sf-text-get-origin
  sf-vector2f sfText_getOrigin (list sf-text-*))

(define-ff %sf-text-move
  void sfText_move (list sf-text-* sf-vector2f))

(define-ff %sf-text-rotate
  void sfText_rotate (list sf-text-* float))

(define-ff %sf-text-scale
  void sfText_scale (list sf-text-* sf-vector2f))

(define-ff %sf-text-get-transform
  sf-transform sfText_getTransform (list sf-text-*))

(define-ff %sf-text-get-inverse-transform
  sf-transform sfText_getInverseTransform (list sf-text-*))

(define-ff %sf-text-set-string
  void sfText_setString (list sf-text-* char-*))

(define-ff %sf-text-set-unicode-string
  void sfText_setUnicodeString (list sf-text-* uint32-*))

(define-ff %sf-text-set-font
  void sfText_setFont (list sf-text-* sf-font-*))

(define-ff %sf-text-set-character-size
  void sfText_setCharacterSize (list sf-text-* unsigned-int))

(define-ff %sf-text-set-style
  void sfText_setStyle (list sf-text-* sf-text-style))

(define-ff %sf-text-set-color
  void sfText_setColor (list sf-text-* sf-color))

(define-ff %sf-text-get-string
  char-* sfText_getString (list sf-text-*))

(define-ff %sf-text-get-unicode-string
  uint32-* sfText_getUnicodeString (list sf-text-*))

(define-ff %sf-text-get-font
  sf-font-* sfText_getFont (list sf-text-*))

(define-ff %sf-text-get-character-size
  unsigned-int sfText_getCharacterSize (list sf-text-*))

(define-ff %sf-text-get-style
  sf-text-style sfText_getStyle (list sf-text-*))

(define-ff %sf-text-get-color
  sf-color sfText_getColor (list sf-text-*))

(define-ff %sf-text-find-character-pos
  sf-vector2f sfText_findCharacterPos (list sf-text-* size_t))

(define-ff %sf-text-get-local-bounds
  sf-float-rect sfText_getLocalBounds (list sf-text-*))

(define-ff %sf-text-get-global-bounds
  sf-float-rect sfText_getGlobalBounds (list sf-text-*))
