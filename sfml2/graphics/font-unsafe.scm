(define-module (sfml2 graphics font-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics glyph-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system input-stream-unsafe)
  #:export (<sf-font>
	    sf-font?
	    wrap-sf-font
	    unwrap-sf-font
	    %sf-font-create-from-file
	    %sf-font-create-from-memory
	    %sf-font-create-from-stream
	    %sf-font-copy
	    %sf-font-destroy
	    %sf-font-get-glyph
	    %sf-font-get-kerning
	    %sf-font-get-line-spacing)
  #:re-export (sf-font-*))

(define-wrapped-pointer-type <sf-font>
  sf-font?
  wrap-sf-font unwrap-sf-font
  (lambda (f port)
    (display "<sf-font>" port)))


(define-ff %sf-font-create-from-file
  sf-font-* sfFont_createFromFile (list char-*))

(define-ff %sf-font-create-from-memory
  sf-font-* sfFont_createFromMemory (list '* size_t))

(define-ff %sf-font-create-from-stream
  sf-font-* sfFont_createFromStream (list sf-input-stream-*))

(define-ff %sf-font-copy
  sf-font-* sfFont_copy (list sf-font-*))

(define-ff %sf-font-destroy
  void sfFont_destroy (list sf-font-*))

(define-ff %sf-font-get-glyph
  sf-glyph sfFont_getGlyph (list sf-font-* uint32 unsigned-int sf-bool))

(define-ff %sf-font-get-kerning
  int sfFont_getKerning (list sf-font-* uint32 uint32 unsigned-int))

(define-ff %sf-font-get-line-spacing
  int sfFont_getLineSpacing (list sf-font-* unsigned-int))
