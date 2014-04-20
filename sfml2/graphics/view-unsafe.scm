;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/view-unsafe.scm
;;; 
;;; Module that exports the <sf-view> record and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics view-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-view>
	    sf-view?
	    wrap-sf-view
	    unwrap-sf-view
	    %sf-view-create
	    %sf-view-create-from-rect
	    %f-view-copy
	    %sf-view-destroy
	    %sf-view-set-center
	    %sf-view-set-size
	    %sf-view-set-rotation
	    %sf-view-set-viewport
	    %sf-view-reset
	    %sf-view-get-center
	    %sf-view-get-size
	    %sf-view-get-rotation
	    %sf-view-get-viewport
	    %sf-view-move
	    %sf-view-rotate
	    %sf-view-zoom)
  #:re-export (sf-view-*))

;;; record for the sfView opaque structure
(define-wrapped-pointer-type <sf-view>
  sf-view?
  wrap-sf-view unwrap-sf-view
  (lambda (v port)
    (display "<sf-view>" port)))

;;; binding functions
(define-ff %sf-view-create
  sf-view-* sfView_create (list))

(define-ff %sf-view-create-from-rect
  sf-view-* sfView_createFromRect (list sf-float-rect))

(define-ff %f-view-copy
  sf-view-* sfView_copy (list sf-view-*))

(define-ff %sf-view-destroy
  void sfView_destroy (list sf-view-*))

(define-ff %sf-view-set-center
  void sfView_setCenter (list sf-view-* sf-vector2f))

(define-ff %sf-view-set-size
  void sfView_setSize (list sf-view-* sf-vector2f))

(define-ff %sf-view-set-rotation
  void sfView_setRotation (list sf-view-* float))

(define-ff %sf-view-set-viewport
  void sfView_setViewport (list sf-view-* sf-float-rect))

(define-ff %sf-view-reset
  void sfView_reset (list sf-view-* sf-float-rect))

(define-ff %sf-view-get-center
  sf-vector2f sfView_getCenter (list sf-view-*))

(define-ff %sf-view-get-size
  sf-vector2f sfView_getSize (list sf-view-*))

(define-ff %sf-view-get-rotation
  float sfView_getRotation (list sf-view-*))

(define-ff %sf-view-get-viewport
  sf-float-rect sfView_getViewport (list sf-view-*))

(define-ff %sf-view-move
  void sfView_move (list sf-view-* sf-vector2f))

(define-ff %sf-view-rotate
  void sfView_rotate (list sf-view-* float))

(define-ff %sf-view-zoom
  void sfView_zoom (list sf-view-* float))
