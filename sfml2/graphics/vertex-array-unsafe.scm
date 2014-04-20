(define-module (sfml2 graphics vertex-array-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics primitive-type-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 graphics vertex-unsafe)
  #:export (<sf-vertex-array>
	    sf-vertex-array?
	    wrap-sf-vertex-array
	    unwrap-sf-vertex-array
	    %sf-vertex-array-create
	    %sf-vertex-array-copy
	    %sf-vertex-array-destroy
	    %sf-vertex-array-get-vertex-count
	    %sf-vertex-array-get-vertex
	    %sf-vertex-array-clear
	    %sf-vertex-array-resize
	    %sf-vertex-array-append
	    %sf-vertex-array-set-primitive-type
	    %sf-vertex-array-get-primitive-type
	    %sf-vertex-array-get-bounds)
  #:re-export (sf-vertex-array-*))

(define-wrapped-pointer-type <sf-vertex-array>
  sf-vertex-array?
  wrap-sf-vertex-array unwrap-sf-vertex-array
  (lambda (va port)
    (display "<sf-vertex-array>" port)))

(define-ff %sf-vertex-array-create
  sf-vertex-array-* sfVertexArray_create (list))
(define-ff %sf-vertex-array-copy
  sf-vertex-array-* sfVertexArray_copy (list sf-vertex-array-*))
(define-ff %sf-vertex-array-destroy
  void sfVertexArray_destroy (list sf-vertex-array-*))
(define-ff %sf-vertex-array-get-vertex-count
  unsigned-int sfVertexArray_getVertexCount (list sf-vertex-array-*))
(define-ff %sf-vertex-array-get-vertex
  sf-vertex-* sfVertexArray_getVertex (list sf-vertex-array-* unsigned-int))
(define-ff %sf-vertex-array-clear
  void sfVertexArray_clear (list sf-vertex-array-*))
(define-ff %sf-vertex-array-resize
  void sfVertexArray_resize (list sf-vertex-array-* unsigned-int))
(define-ff %sf-vertex-array-append
  void sfVertexArray_append (list sf-vertex-array-* sf-vertex))
(define-ff %sf-vertex-array-set-primitive-type
  void sfVertexArray_setPrimitiveType (list sf-vertex-array-* sf-primitive-type))
(define-ff %sf-vertex-array-get-primitive-type
  sf-primitive-type sfVertexArray_getPrimitiveType (list sf-vertex-array-*))
(define-ff %sf-vertex-array-get-bounds
  sf-float-rect sfVertexArray_getBounds (list sf-vertex-array-*))

