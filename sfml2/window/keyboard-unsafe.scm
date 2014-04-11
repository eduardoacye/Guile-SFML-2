;;; 2014 EAY eduardo.acye@gmail.com

;;;
;;; file: sfml2/window/keyboard-unsafe.scm
;;; 
;;; Module that exports the keyboard related enums and procedures
;;;

(define-module (sfml2 window keyboard-unsafe)
  #:use-module (system foreign)
  #:use-module (sfml2 utils)
  #:use-module (sfml2 window common)
  #:export (;; sfKeyCode
	    sf-key-code
	    sf-key-unknown
	    sf-key-a
	    sf-key-b
	    sf-key-c
	    sf-key-d
	    sf-key-e
	    sf-key-f
	    sf-key-g
	    sf-key-h
	    sf-key-i
	    sf-key-j
	    sf-key-k
	    sf-key-l
	    sf-key-m
	    sf-key-n
	    sf-key-o
	    sf-key-p
	    sf-key-q
	    sf-key-r
	    sf-key-s
	    sf-key-t
	    sf-key-u
	    sf-key-v
	    sf-key-w
	    sf-key-x
	    sf-key-y
	    sf-key-z
	    sf-key-num-0
	    sf-key-num-1
	    sf-key-num-2
	    sf-key-num-3
	    sf-key-num-4
	    sf-key-num-5
	    sf-key-num-6
	    sf-key-num-7
	    sf-key-num-8
	    sf-key-num-9
	    sf-key-escape
	    sf-key-l-control
	    sf-key-l-shift
	    sf-key-l-alt  
	    sf-key-l-system    
	    sf-key-r-control   
	    sf-key-r-shift     
	    sf-key-r-alt       
	    sf-key-r-system    
	    sf-key-menu        
	    sf-key-l-bracket   
	    sf-key-r-bracket   
	    sf-key-semi-colon  
	    sf-key-comma       
	    sf-key-period      
	    sf-key-quote       
	    sf-key-slash       
	    sf-key-back-slash  
	    sf-key-tilde       
	    sf-key-equal       
	    sf-key-dash        
	    sf-key-space       
	    sf-key-return      
	    sf-key-back        
	    sf-key-tab         
	    sf-key-page-up     
	    sf-key-page-down   
	    sf-key-end         
	    sf-key-home        
	    sf-key-insert      
	    sf-key-delete      
	    sf-key-add         
	    sf-key-subtract    
	    sf-key-multiply    
	    sf-key-divide      
	    sf-key-left        
	    sf-key-right       
	    sf-key-up          
	    sf-key-down        
	    sf-key-numpad-0    
	    sf-key-numpad-1    
	    sf-key-numpad-2    
	    sf-key-numpad-3    
	    sf-key-numpad-4    
	    sf-key-numpad-5    
	    sf-key-numpad-6    
	    sf-key-numpad-7    
	    sf-key-numpad-8    
	    sf-key-numpad-9    
	    sf-key-f1          
	    sf-key-f2          
	    sf-key-f3          
	    sf-key-f4          
	    sf-key-f5          
	    sf-key-f6          
	    sf-key-f7          
	    sf-key-f8          
	    sf-key-f9          
	    sf-key-f10         
	    sf-key-f11         
	    sf-key-f12         
	    sf-key-f13         
	    sf-key-f14         
	    sf-key-f15         
	    sf-key-pause       
	    sf-key-count       
	    ;; keyboard procedures
	    %sf-keyboard-is-key-pressed))

;;; enum binding for sfKeyCode
(define sf-key-code int)

(define sf-key-unknown    -1)
(define sf-key-a           0)
(define sf-key-b           1)
(define sf-key-c           2)
(define sf-key-d           3)
(define sf-key-e           4)
(define sf-key-f           5)
(define sf-key-g           6)
(define sf-key-h           7)
(define sf-key-i           8)
(define sf-key-j           9)
(define sf-key-k           10)
(define sf-key-l           11)
(define sf-key-m           12)
(define sf-key-n           13)
(define sf-key-o           14)
(define sf-key-p           15)
(define sf-key-q           16)
(define sf-key-r           17)
(define sf-key-s           18)
(define sf-key-t           19)
(define sf-key-u           20)
(define sf-key-v           21)
(define sf-key-w           22)
(define sf-key-x           23)
(define sf-key-y           24)
(define sf-key-z           25)
(define sf-key-num-0       26)
(define sf-key-num-1       27)
(define sf-key-num-2       28)
(define sf-key-num-3       29)
(define sf-key-num-4       30)
(define sf-key-num-5       31)
(define sf-key-num-6       32)
(define sf-key-num-7       33)
(define sf-key-num-8       34)
(define sf-key-num-9       35)
(define sf-key-escape      36)
(define sf-key-l-control   37)
(define sf-key-l-shift     38)
(define sf-key-l-alt       39)
(define sf-key-l-system    40)
(define sf-key-r-control   41)
(define sf-key-r-shift     42)
(define sf-key-r-alt       43)
(define sf-key-r-system    44)
(define sf-key-menu        45)
(define sf-key-l-bracket   46)
(define sf-key-r-bracket   47)
(define sf-key-semi-colon  48)
(define sf-key-comma       49)
(define sf-key-period      50)
(define sf-key-quote       51)
(define sf-key-slash       52)
(define sf-key-back-slash  53)
(define sf-key-tilde       54)
(define sf-key-equal       55)
(define sf-key-dash        56)
(define sf-key-space       57)
(define sf-key-return      58)
(define sf-key-back        59)
(define sf-key-tab         60)
(define sf-key-page-up     61)
(define sf-key-page-down   62)
(define sf-key-end         63)
(define sf-key-home        64)
(define sf-key-insert      65)
(define sf-key-delete      66)
(define sf-key-add         67)
(define sf-key-subtract    68)
(define sf-key-multiply    69)
(define sf-key-divide      70)
(define sf-key-left        71)
(define sf-key-right       72)
(define sf-key-up          73)
(define sf-key-down        74)
(define sf-key-numpad-0    75)
(define sf-key-numpad-1    76)
(define sf-key-numpad-2    77)
(define sf-key-numpad-3    78)
(define sf-key-numpad-4    79)
(define sf-key-numpad-5    80)
(define sf-key-numpad-6    81)
(define sf-key-numpad-7    82)
(define sf-key-numpad-8    83)
(define sf-key-numpad-9    84)
(define sf-key-f1          85)
(define sf-key-f2          86)
(define sf-key-f3          87)
(define sf-key-f4          88)
(define sf-key-f5          89)
(define sf-key-f6          90)
(define sf-key-f7          91)
(define sf-key-f8          92)
(define sf-key-f9          93)
(define sf-key-f10         94)
(define sf-key-f11         95)
(define sf-key-f12         96)
(define sf-key-f13         97)
(define sf-key-f14         98)
(define sf-key-f15         99)
(define sf-key-pause       100)
(define sf-key-count       101)

;;; binding functions
(define-ff %sf-keyboard-is-key-pressed
           sf-bool sfKeyboard_isKeyPressed (list int))
