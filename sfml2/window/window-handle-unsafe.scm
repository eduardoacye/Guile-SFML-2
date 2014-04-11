;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/window-hangle-unsafe.scm
;;; 
;;; Module that exports the sf-window-handle type
;;; 
;;; WARNING! This type is platform dependent
;;;

(define-module (sfml2 window window-handle-unsafe)
  #:use-module (system foreign)
  #:export (sf-window-handle))

;;; sf-window-handle type on Unix - X11
(define sf-window-handle unsigned-long)
