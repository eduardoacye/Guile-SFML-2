;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/utils.scm
;;; 
;;; Module exporting procedures accessible to the SFML sub-libraries.
;;; 

(define-module (sfml2 utils)
  #:use-module (system foreign)
  #:use-module (rnrs bytevectors)
  #:export (sf-bool
	    char
	    char-*
	    uint32-*
	    uint8-*
	    float-*
	    number->boolean
	    boolean->number
	    make-c-union
	    parse-c-union))


;;; sfBool type
(define sf-bool int)

;;; C char type
(define char int8)

;;; Misc pointer types
(define char-* '*)
(define uint32-* '*)
(define uint8-* '*)
(define float-* '*)

;;; number->boolean : number -> boolean
;;; usage : returns #t if n is not 0
(define (number->boolean n)
  (not (zero? n)))

;;; boolean->number : boolean -> number
;;; usage : returns 1 if b is #t, returns 0 otherwise
(define (boolean->number b)
  (if b 1 0))

;;; make-c-union
;;; all-types is a list wich elements are types or list of types (structs)
;;; type has to be an element of all-types
;;; vals are the values corresponding to the types of type
(define (make-c-union all-types type vals)
  (define bv (make-bytevector (apply max (map sizeof all-types)) 0))
  (define ptr (make-c-struct (if (pair? type) type (list type))
			     (if (pair? vals) vals (list vals))))
  (define bv2 (pointer->bytevector ptr (sizeof type)))
  (unless (member type all-types)
    (error "type not in union" type all-types))
  (bytevector-copy! bv2 0 bv 0 (bytevector-length bv2))
  (bytevector->pointer bv))

;;; parse-c-union
(define (parse-c-union all-types union type)
  (unless (member type all-types)
    (error "type not in union" type all-types))
  (parse-c-struct union (if (pair? type) type (list type))))
