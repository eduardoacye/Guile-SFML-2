;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/graphics/render-window-unsafe.scm
;;; 
;;; Module that exports the <sf-render-window> record and the associated
;;; procedures.
;;;

(define-module (sfml2 graphics render-window-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 graphics common)
  #:use-module (sfml2 graphics color-unsafe)
  #:use-module (sfml2 graphics rect-unsafe)
  #:use-module (sfml2 graphics types-unsafe)
  #:use-module (sfml2 graphics primitive-type-unsafe)
  #:use-module (sfml2 graphics render-states-unsafe)
  #:use-module (sfml2 graphics vertex-unsafe)
  #:use-module (sfml2 window event-unsafe)
  #:use-module (sfml2 window video-mode-unsafe)
  #:use-module (sfml2 window window-handle-unsafe)
  #:use-module (sfml2 window window-unsafe)
  #:use-module (sfml2 system vector2-unsafe)
  #:export (<sf-render-window>
	    sf-render-window?
	    wrap-sf-render-window
	    unwrap-sf-render-window
	    %sf-render-window-create
	    %sf-render-window-create-unicode
	    %sf-render-window-create-from-handle
	    %sf-render-window-destroy
	    %sf-render-window-close
	    %sf-render-window-is-open
	    %sf-render-window-get-settings
	    %sf-render-window-poll-event
	    %sf-render-window-wait-event
	    %sf-render-window-get-position
	    %sf-render-window-set-position
	    %sf-render-window-get-size
	    %sf-render-window-set-size
	    %sf-render-window-set-title
	    %sf-render-window-set-unicode-title
	    %sf-render-window-set-icon
	    %sf-render-window-set-visible
	    %sf-render-window-set-mouse-cursor-visible
	    %sf-render-window-set-vertical-sync-enabled
	    %sf-render-window-set-key-repeat-enabled
	    %sf-render-window-set-active
	    %sf-render-window-display
	    %sf-render-window-set-framerate-limit
	    %sf-render-window-set-joystick-threshold
	    %sf-render-window-get-system-handle
	    %sf-render-window-clear
	    %sf-render-window-set-view
	    %sf-render-window-get-view
	    %sf-render-window-get-default-view
	    %sf-render-window-get-viewport
	    %sf-render-window-map-pixel-to-coords
	    %sf-render-window-map-coords-to-pixel
	    %sf-render-window-draw-sprite
	    %sf-render-window-draw-text
	    %sf-render-window-draw-shape
	    %sf-render-window-draw-circle-shape
	    %sf-render-window-draw-convex-shape
	    %sf-render-window-draw-rectangle-shape
	    %sf-render-window-draw-vertex-array
	    %sf-render-window-draw-primitives
	    %sf-render-window-push-gl-states
	    %sf-render-window-pop-gl-states
	    %sf-render-window-reset-gl-states
	    %sf-render-window-capture
	    %sf-mouse-get-position-render-window
	    %sf-mouse-set-position-render-window)
  #:re-export (sf-render-window-*))

;;; record for the sfRenderWindow opaque structure
(define-wrapped-pointer-type <sf-render-window>
  sf-render-window?
  wrap-sf-render-window unwrap-sf-render-window
  (lambda (rw port)
    (display "<sf-render-window>" port)))

;;; binding functions
(define-ff %sf-render-window-create
  sf-render-window-* sfRenderWindow_create (list sf-video-mode char-* sf-window-style sf-context-settings-*))

(define-ff %sf-render-window-create-unicode
  sf-render-window-* sfRenderWindow_createUnicode (list sf-video-mode uint32-* sf-window-style sf-context-settings-*))

(define-ff %sf-render-window-create-from-handle
  sf-render-window-* sfRenderWindow_createFromHandle (list sf-window-handle sf-context-settings-*))

(define-ff %sf-render-window-destroy
  void sfRenderWindow_destroy (list sf-render-window-*))

(define-ff %sf-render-window-close
  void sfRenderWindow_close (list sf-render-window-*))

(define-ff %sf-render-window-is-open
  sf-bool sfRenderWindow_isOpen (list sf-render-window-*))

(define-ff %sf-render-window-get-settings
  sf-context-settings sfRenderWindow_getSettings (list sf-render-window-*))

(define-ff %sf-render-window-poll-event
  sf-bool sfRenderWindow_pollEvent (list sf-render-window-* sf-event-*))

(define-ff %sf-render-window-wait-event
  sf-bool sfRenderWindow_waitEvent (list sf-render-window-* sf-event-*))

(define-ff %sf-render-window-get-position
  sf-vector2i sfRenderWindow_getPosition (list sf-render-window-*))

(define-ff %sf-render-window-set-position
  void sfRenderWindow_setPosition (list sf-render-window-* sf-vector2i))

(define-ff %sf-render-window-get-size
  sf-vector2u sfRenderWindow_getSize (list sf-render-window-*))

(define-ff %sf-render-window-set-size
  void sfRenderWindow_setSize (list sf-render-window-* sf-vector2u))

(define-ff %sf-render-window-set-title
  void sfRenderWindow_setTitle (list sf-render-window-* char-*))

(define-ff %sf-render-window-set-unicode-title
  void sfRenderWindow_setUnicodeTitle (list sf-render-window-* uint32-*))

(define-ff %sf-render-window-set-icon
  void sfRenderWindow_setIcon (list sf-render-window-* unsigned-int unsigned-int uint8-*))

(define-ff %sf-render-window-set-visible
  void sfRenderWindow_setVisible (list sf-render-window-* sf-bool))

(define-ff %sf-render-window-set-mouse-cursor-visible
  void sfRenderWindow_setMouseCursorVisible (list sf-render-window-* sf-bool))

(define-ff %sf-render-window-set-vertical-sync-enabled
  void sfRenderWindow_setVerticalSyncEnabled (list sf-render-window-* sf-bool))

(define-ff %sf-render-window-set-key-repeat-enabled
  void sfRenderWindow_setKeyRepeatEnabled (list sf-render-window-* sf-bool))

(define-ff %sf-render-window-set-active
  sf-bool sfRenderWindow_setActive (list sf-render-window-* sf-bool))

(define-ff %sf-render-window-display
  void sfRenderWindow_display (list sf-render-window-*))

(define-ff %sf-render-window-set-framerate-limit
  void sfRenderWindow_setFramerateLimit (list sf-render-window-* unsigned-int))

(define-ff %sf-render-window-set-joystick-threshold
  void sfRenderWindow_setJoystickThreshold (list sf-render-window-* float))

(define-ff %sf-render-window-get-system-handle
  sf-window-handle sfRenderWindow_getSystemHandle (list sf-render-window-*))

(define-ff %sf-render-window-clear
  void sfRenderWindow_clear (list sf-render-window-* sf-color))

(define-ff %sf-render-window-set-view
  void sfRenderWindow_setView (list sf-render-window-* sf-view-*))

(define-ff %sf-render-window-get-view
  sf-view-* sfRenderWindow_getView (list sf-render-window-*))

(define-ff %sf-render-window-get-default-view
  sf-view-* sfRenderWindow_getDefaultView (list sf-render-window-*))

(define-ff %sf-render-window-get-viewport
  sf-int-rect sfRenderWindow_getViewport (list sf-render-window-* sf-view-*))

(define-ff %sf-render-window-map-pixel-to-coords
  sf-vector2f sfRenderWindow_mapPixelToCoords (list sf-render-window-* sf-vector2i sf-view-*))

(define-ff %sf-render-window-map-coords-to-pixel
  sf-vector2i sfRenderWindow_mapCoordsToPixel (list sf-render-window-* sf-vector2f sf-view-*))

(define-ff %sf-render-window-draw-sprite
  void sfRenderWindow_drawSprite (list sf-render-window-* sf-sprite-* sf-render-states-*))

(define-ff %sf-render-window-draw-text
  void sfRenderWindow_drawText (list sf-render-window-* sf-text-* sf-render-states-*))

(define-ff %sf-render-window-draw-shape
  void sfRenderWindow_drawShape (list sf-render-window-* sf-shape-* sf-render-states-*))

(define-ff %sf-render-window-draw-circle-shape
  void sfRenderWindow_drawCircleShape (list sf-render-window-* sf-circle-shape-* sf-render-states-*))

(define-ff %sf-render-window-draw-convex-shape
  void sfRenderWindow_drawConvexShape (list sf-render-window-* sf-convex-shape-* sf-render-states-*))

(define-ff %sf-render-window-draw-rectangle-shape
  void sfRenderWindow_drawRectangleShape (list sf-render-window-* sf-rectangle-shape-* sf-render-states-*))

(define-ff %sf-render-window-draw-vertex-array
  void sfRenderWindow_drawVertexArray (list sf-render-window-* sf-vertex-array-* sf-render-states-*))

(define-ff %sf-render-window-draw-primitives
  void sfRenderWindow_drawPrimitives (list sf-render-window-* sf-vertex-* unsigned-int sf-primitive-type sf-render-states-*))

(define-ff %sf-render-window-push-gl-states
  void sfRenderWindow_pushGLStates (list sf-render-window-*))

(define-ff %sf-render-window-pop-gl-states
  void sfRenderWindow_popGLStates (list sf-render-window-*))

(define-ff %sf-render-window-reset-gl-states
  void sfRenderWindow_resetGLStates (list sf-render-window-*))

(define-ff %sf-render-window-capture
  sf-image-* sfRenderWindow_capture (list sf-render-window-*))

(define-ff %sf-mouse-get-position-render-window
  sf-vector2i sfMouse_getPositionRenderWindow (list sf-render-window-*))

(define-ff %sf-mouse-set-position-render-window
  void sfMouse_setPositionRenderWindow (list sf-vector2i sf-render-window-*))
