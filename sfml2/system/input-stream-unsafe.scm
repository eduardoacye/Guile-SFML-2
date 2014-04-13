;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/system/input-stream-unsafe.scm
;;;
;;; Module that exports the <sf-input-stream> record.
;;;

(define-module (sfml2 system input-stream-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 system common)
  #:export (<sf-input-stream>
	    sf-input-stream?
	    wrap-sf-input-stream
	    unwrap-sf-input-stream
	    sf-input-stream-*))

;;; record for the sfInputStream opaque structure
(define-wrapped-pointer-type <sf-input-stream>
  sf-input-stream?
  wrap-sf-input-stream unwrap-sf-input-stream
  (lambda (is port)
    (display "<sf-input-stream>" port)))

;;; Alias for sfInputStream*
(define sf-input-stream-* '*)
