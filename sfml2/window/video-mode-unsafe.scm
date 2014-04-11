;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/video-mode-unsafe.scm
;;; 
;;; Module that exports the sf-video-mode struct type definition and the
;;; associated procedures
;;;

(define-module (sfml2 window video-mode-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window common)
  #:export (sf-video-mode
	    pointer->sf-video-mode
	    sf-video-mode->pointer
	    %sf-video-mode-get-desktop-mode
	    %sf-video-mode-get-fullscreen-modes
	    %sf-video-mode-is-valid))

;;; structure binding for the sfVideoMode simple structure
(define sf-video-mode (list unsigned-int unsigned-int unsigned-int))

(define (pointer->sf-video-mode c-struct)
  (parse-c-struct c-struct sf-video-mode))

(define (sf-video-mode->pointer lst-struct)
  (make-c-struct sf-video-mode lst-struct))

;;; binding functions
(define-ff %sf-video-mode-get-desktop-mode
           sf-video-mode sfVideoMode_getDesktopMode (list))

(define-ff %sf-video-mode-get-fullscreen-modes
           '* sfVideoMode_getFullscreenModes (list '*))

(define-ff %sf-video-mode-is-valid
           sf-bool sfVideoMode_isValid (list sf-video-mode))
