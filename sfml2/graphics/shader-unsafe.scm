(define-module (sfml2 graphics shader-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics transform-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system input-stream-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:use-module (sfml2 system vector3-unsafe)
  #:export (<sf-shader>
	    sf-shader?
	    wrap-sf-shader
	    unwrap-sf-shader
	    %sf-shader-create-from-file
	    %sf-shader-create-from-memory
	    %sf-shader-create-from-stream
	    %sf-shader-destroy
	    %sf-shader-set-float-parameter
	    %sf-shader-set-float-2-parameter
	    %sf-shader-set-float-3-parameter
	    %sf-shader-set-float-4-parameter
	    %sf-shader-set-vector2-parameter
	    %sf-shader-set-vector3-parameter
	    %sf-shader-set-color-parameter
	    %sf-shader-set-transform-parameter
	    %sf-shader-set-texture-parameter
	    %sf-shader-set-current-texture-parameter
	    %sf-shader-bind
	    %sf-shader-is-available)
  #:re-export (sf-shader-*))

(define-wrapped-pointer-type <sf-shader>
  sf-shader?
  wrap-sf-shader unwrap-sf-shader
  (lambda (s port)
    (display "<sf-shader>" port)))

(define-ff %sf-shader-create-from-file
  sf-shader-* sfShader_createFromFile (list char-* char-*))

(define-ff %sf-shader-create-from-memory
  sf-shader-* sfShader_createFromMemory (list char-* char-*))

(define-ff %sf-shader-create-from-stream
  sf-shader-* sfShader_createFromStream (list sf-input-stream-* sf-input-stream-*))

(define-ff %sf-shader-destroy
  void sfShader_destroy (list sf-shader-*))

(define-ff %sf-shader-set-float-parameter
  void sfShader_setFloatParameter (list sf-shader-* char-* float))

(define-ff %sf-shader-set-float-2-parameter
  void sfShader_setFloat2Parameter (list sf-shader-* char-* float float))

(define-ff %sf-shader-set-float-3-parameter
  void sfShader_setFloat3Parameter (list sf-shader-* char-* float float float))

(define-ff %sf-shader-set-float-4-parameter
  void sfShader_setFloat4Parameter (list sf-shader-* char-* float float float float))

(define-ff %sf-shader-set-vector2-parameter
  void sfShader_setVector2Parameter (list sf-shader-* char-* sf-vector2f))

(define-ff %sf-shader-set-vector3-parameter
  void sfShader_setVector3Parameter (list sf-shader-* char-* sf-vector3f))

(define-ff %sf-shader-set-color-parameter
  void sfShader_setColorParameter (list sf-shader-* char-* sf-color))

(define-ff %sf-shader-set-transform-parameter
  void sfShader_setTransformParameter (list sf-shader-* char-* sf-transform))

(define-ff %sf-shader-set-texture-parameter
  void sfShader_setTextureParameter (list sf-shader-* char-* sf-texture-*))

(define-ff %sf-shader-set-current-texture-parameter
  void sfShader_setCurrentTextureParameter (list sf-shader-* char-*))

(define-ff %sf-shader-bind
  void sfShader_bind (list sf-shader-*))

(define-ff %sf-shader-is-available
  sf-bool sfShader_isAvailable (list))
