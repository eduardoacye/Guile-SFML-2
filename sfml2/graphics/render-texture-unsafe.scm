(define-module (sfml2 graphics render-texture-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 graphics primitive-type-unsafe)
  #:use-module (sfml2 graphics render-states-unsafe)
  #:use-module (sfml2 graphics vertex-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-render-texture>
	    sf-render-texture?
	    wrap-sf-render-texture
	    unwrap-sf-render-texture
	    %sf-render-texture-create
	    %sf-render-texture-destroy
	    %sf-render-texture-get-size
	    %sf-render-texture-set-active
	    %sf-render-texture-display
	    %sf-render-texture-clear
	    %sf-render-texture-set-view
	    %sf-render-texture-get-view
	    %sf-render-texture-get-default-view
	    %sf-render-texture-get-viewport
	    %sf-render-texture-map-pixel-to-coords
	    %sf-render-texture-map-coords-to-pixel
	    %sf-render-texture-draw-sprite
	    %sf-render-texture-draw-text
	    %sf-render-texture-draw-shape
	    %sf-render-texture-draw-circle-shape
	    %sf-render-texture-draw-convex-shape
	    %sf-render-texture-draw-rectangle-shape
	    %sf-render-texture-draw-vertex-array
	    %sf-render-texture-draw-primitives
	    %sf-render-texture-push-gl-states
	    %sf-render-texture-pop-gl-states
	    %sf-render-texture-reset-gl-states
	    %sf-render-texture-get-texture
	    %sf-render-texture-set-smooth
	    %sf-render-texture-is-smooth
	    %sf-render-texture-set-repeated
	    %sf-render-texture-is-repeated)
  #:re-export (sf-render-texture-*))


(define-wrapped-pointer-type <sf-render-texture>
  sf-render-texture?
  wrap-sf-render-texture unwrap-sf-render-texture
  (lambda (rt port)
    (display "<sf-render-texture>" port)))


(define-ff %sf-render-texture-create
  sf-render-texture-* sfRenderTexture_create (list unsigned-int unsigned-int sf-bool))

(define-ff %sf-render-texture-destroy
  void sfRenderTexture_destroy (list sf-render-texture-*))

(define-ff %sf-render-texture-get-size
  sf-vector2u sfRenderTexture_getSize (list sf-render-texture-*))

(define-ff %sf-render-texture-set-active
  sf-bool sfRenderTexture_setActive (list sf-render-texture-* sf-bool))

(define-ff %sf-render-texture-display
  void sfRenderTexture_display (list sf-render-texture-*))

(define-ff %sf-render-texture-clear
  void sfRenderTexture_clear (list sf-render-texture-* sf-color))

(define-ff %sf-render-texture-set-view
  void sfRenderTexture_setView (list sf-render-texture-* sf-view-*))

(define-ff %sf-render-texture-get-view
  sf-view-* sfRenderTexture_getView (list sf-render-texture-*))

(define-ff %sf-render-texture-get-default-view
  sf-view-* sfRenderTexture_getDefaultView (list sf-render-texture-*))

(define-ff %sf-render-texture-get-viewport
  sf-int-rect sfRenderTexture_getViewport (list sf-render-texture-* sf-view-*))

(define-ff %sf-render-texture-map-pixel-to-coords
  sf-vector2f sfRenderTexture_mapPixelToCoords (list sf-render-texture-* sf-vector2i sf-view-*))

(define-ff %sf-render-texture-map-coords-to-pixel
  sf-vector2i sfRenderTexture_mapCoordsToPixel (list sf-render-texture-* sf-vector2f sf-view-*))

(define-ff %sf-render-texture-draw-sprite
  void sfRenderTexture_drawSprite (list sf-render-texture-* sf-sprite-* sf-render-states-*))

(define-ff %sf-render-texture-draw-text
  void sfRenderTexture_drawText (list sf-render-texture-* sf-text-* sf-render-states-*))

(define-ff %sf-render-texture-draw-shape
  void sfRenderTexture_drawShape (list sf-render-texture-* sf-shape-* sf-render-states-*))

(define-ff %sf-render-texture-draw-circle-shape
  void sfRenderTexture_drawCircleShape (list sf-render-texture-* sf-circle-shape-* sf-render-states-*))

(define-ff %sf-render-texture-draw-convex-shape
  void sfRenderTexture_drawConvexShape (list sf-render-texture-* sf-convex-shape-* sf-render-states-*))

(define-ff %sf-render-texture-draw-rectangle-shape
  void sfRenderTexture_drawRectangleShape (list sf-render-texture-* sf-rectangle-shape-* sf-render-states-*))

(define-ff %sf-render-texture-draw-vertex-array
  void sfRenderTexture_drawVertexArray (list sf-render-texture-* sf-vertex-array-* sf-render-states-*))

(define-ff %sf-render-texture-draw-primitives
  void sfRenderTexture_drawPrimitives (list sf-render-texture-* sf-vertex-* unsigned-int sf-primitive-type sf-render-states-*))

(define-ff %sf-render-texture-push-gl-states
  void sfRenderTexture_pushGLStates (list sf-render-texture-*))

(define-ff %sf-render-texture-pop-gl-states
  void sfRenderTexture_popGLStates (list sf-render-texture-*))

(define-ff %sf-render-texture-reset-gl-states
  void sfRenderTexture_resetGLStates (list sf-render-texture-*))

(define-ff %sf-render-texture-get-texture
  sf-texture-* sfRenderTexture_getTexture (list sf-render-texture-*))

(define-ff %sf-render-texture-set-smooth
  void sfRenderTexture_setSmooth (list sf-render-texture-* sf-bool))

(define-ff %sf-render-texture-is-smooth
  sf-bool sfRenderTexture_isSmooth (list sf-render-texture-*))

(define-ff %sf-render-texture-set-repeated
  void sfRenderTexture_setRepeated (list sf-render-texture-* sf-bool))

(define-ff %sf-render-texture-is-repeated
  sf-bool sfRenderTexture_isRepeated (list sf-render-texture-*))
