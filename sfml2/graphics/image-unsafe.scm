;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/image-unsafe.scm
;;; 
;;; Module that exports the <sf-image> record and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics image-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system input-stream-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-image>
	    sf-image?
	    wrap-sf-image
	    unwrap-sf-image
	    %sf-image-create
	    %sf-image-create-from-color
	    %sf-image-create-from-pixels
	    %sf-image-create-from-file
	    %sf-image-create-from-memory
	    %sf-image-create-from-stream
	    %sf-image-copy
	    %sf-image-destroy
	    %sf-image-save-to-file
	    %sf-image-get-size
	    %sf-image-create-mask-from-color
	    %sf-image-copy-image
	    %sf-image-set-pixel
	    %sf-image-get-pixel
	    %sf-image-get-pixels-ptr
	    %sf-image-flip-horizontally
	    %sf-image-flip-vertically)
  #:re-export (sf-image-*))

;;; record for the sfImage opaque structure
(define-wrapped-pointer-type <sf-image>
  sf-image?
  wrap-sf-image unwrap-sf-image
  (lambda (i port)
    (display "<sf-image>" port)))

;;; binding functions
(define-ff %sf-image-create
  sf-image-* sfImage_create (list unsigned-int unsigned-int))

(define-ff %sf-image-create-from-color
  sf-image-* sfImage_createFromColor (list unsigned-int unsigned-int sf-color))

(define-ff %sf-image-create-from-pixels
  sf-image-* sfImage_createFromPixels (list unsigned-int unsigned-int uint8-*))

(define-ff %sf-image-create-from-file
  sf-image-* sfImage_createFromFile (list char-*))

(define-ff %sf-image-create-from-memory
  sf-image-* sfImage_createFromMemory (list '* size_t))

(define-ff %sf-image-create-from-stream
  sf-image-* sfImage_createFromStream (list sf-input-stream-*))

(define-ff %sf-image-copy
  sf-image-* sfImage_copy (list sf-image-*))

(define-ff %sf-image-destroy
  void sfImage_destroy (list sf-image-*))

(define-ff %sf-image-save-to-file
  sf-bool sfImage_saveToFile (list sf-image-* char-*))

(define-ff %sf-image-get-size
  sf-vector2u sfImage_getSize (list sf-image-*))

(define-ff %sf-image-create-mask-from-color
  void sfImage_createMaskFromColor (list sf-image-* sf-color uint8))

(define-ff %sf-image-copy-image
  void sfImage_copyImage (list sf-image-* sf-image-* unsigned-int unsigned-int sf-int-rect sf-bool))

(define-ff %sf-image-set-pixel
  void sfImage_setPixel (list sf-image-* unsigned-int unsigned-int sf-color))

(define-ff %sf-image-get-pixel
  sf-color sfImage_getPixel (list sf-image-* unsigned-int unsigned-int))

(define-ff %sf-image-get-pixels-ptr
  uint8-* sfImage_getPixelsPtr (list sf-image-*))

(define-ff %sf-image-flip-horizontally
  void sfImage_flipHorizontally (list sf-image-*))

(define-ff %sf-image-flip-vertically
  void sfImage_flipVertically (list sf-image-*))
