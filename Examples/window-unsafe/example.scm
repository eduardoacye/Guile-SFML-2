(use-modules (system foreign)
	     (sfml2 window-unsafe))

(define (is-true? n)
  (if (zero? n) #f #t))

(define (main)
  (define win
    (%sf-window-create (sf-video-mode->pointer (list 800 600 32))
		       (string->pointer "my window")
		       sf-default-style
		       (sf-context-settings->pointer (list 0 0 0 2 1))))
  (define event (sf-event->pointer sf-event-type -1))
  (while (is-true? (%sf-window-is-open win))
    (while (is-true? (%sf-window-poll-event win event))
      (when (equal? sf-evt-closed (car (pointer->sf-event event
							  sf-event-type)))
	(%sf-window-close win)))))
