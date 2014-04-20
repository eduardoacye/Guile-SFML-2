(define-module (sfml2 graphics texture-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 window window-unsafe)
  #:use-module (sfml2 system input-stream-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-texture>
	    sf-texture?
	    wrap-sf-texture
	    unwrap-sf-texture
	    %sf-texture-create
	    %sf-texture-create-from-file
	    %sf-texture-create-from-memory
	    %sf-texture-create-from-stream
	    %sf-texture-create-from-image
	    %sf-texture-copy
	    %sf-texture-destroy
	    %sf-texture-get-size
	    %sf-texture-copy-to-image
	    %sf-texture-update-from-pixels
	    %sf-texture-update-from-image
	    %sf-texture-update-from-window
	    %sf-texture-update-from-render-window
	    %sf-texture-set-smooth
	    %sf-texture-is-smooth
	    %sf-texture-set-repeated
	    %sf-texture-is-repeated
	    %sf-texture-bind
	    %sf-texture-get-maximum-size)
  #:re-export (sf-texture-*))

(define-wrapped-pointer-type <sf-texture>
  sf-texture?
  wrap-sf-texture unwrap-sf-texture
  (lambda (t port)
    (display "<sf-texture>" port)))


(define-ff %sf-texture-create
  sf-texture-* sfTexture_create (list unsigned-int unsigned-int))

(define-ff %sf-texture-create-from-file
  sf-texture-* sfTexture_createFromFile (list char-* sf-int-rect-*))

(define-ff %sf-texture-create-from-memory
  sf-texture-* sfTexture_createFromMemory (list '* size_t sf-int-rect-*))

(define-ff %sf-texture-create-from-stream
  sf-texture-* sfTexture_createFromStream (list sf-input-stream-* sf-int-rect-*))

(define-ff %sf-texture-create-from-image
  sf-texture-* sfTexture_createFromImage (list sf-image-* sf-int-rect-*))

(define-ff %sf-texture-copy
  sf-texture-* sfTexture_copy (list sf-texture-*))

(define-ff %sf-texture-destroy
  void sfTexture_destroy (list sf-texture-*))

(define-ff %sf-texture-get-size
  sf-vector2u sfTexture_getSize (list sf-texture-*))

(define-ff %sf-texture-copy-to-image
  sf-image-* sfTexture_copyToImage (list sf-texture-*))

(define-ff %sf-texture-update-from-pixels
  void sfTexture_updateFromPixels (list sf-texture-* uint8-* unsigned-int unsigned-int unsigned-int unsigned-int))

(define-ff %sf-texture-update-from-image
  void sfTexture_updateFromImage (list sf-texture-* sf-image-* unsigned-int unsigned-int))

(define-ff %sf-texture-update-from-window
  void sfTexture_updateFromWindow (list sf-texture-* sf-window-* unsigned-int unsigned-int))

(define-ff %sf-texture-update-from-render-window
  void sfTexture_updateFromRenderWindow (list sf-texture-* sf-render-window-* unsigned-int unsigned-int))

(define-ff %sf-texture-set-smooth
  void sfTexture_setSmooth (list sf-texture-* sf-bool))

(define-ff %sf-texture-is-smooth
  sf-bool sfTexture_isSmooth (list sf-texture-*))

(define-ff %sf-texture-set-repeated
  void sfTexture_setRepeated (list sf-texture-* sf-bool))

(define-ff %sf-texture-is-repeated
  sf-bool sfTexture_isRepeated (list sf-texture-*))

(define-ff %sf-texture-bind
  void sfTexture_bind (list sf-texture-*))

(define-ff %sf-texture-get-maximum-size
  unsigned-int sfTexture_getMaximumSize (list))


