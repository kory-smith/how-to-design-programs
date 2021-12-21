;#!/usr/bin/racket
#lang htdp/bsl

; 2.1: FUNCTIONS

(define (plusOne nummy)
  (+ nummy 1))

(plusOne 2)

(define (distanceFromOrigin x y)
  (sqrt (+ (sqr x) (sqr y))))

(distanceFromOrigin 3 4) ; => 5

(define (cvolume length)
  (expt length 3))

(define (string-first inputString) ; EX 13
  (if (not (= (string-length inputString) 0))
      (string-ref inputString 0)
      (error "Must provide a string with length > 0")))

(string-first "Sydney")

(define (string-last inputString) ; EX 14
  (if (not (= (string-length inputString) 0))
      (string-ref inputString (- (string-length inputString) 1))
      (error "Must provide a string with length > 0")))

(string-last "Sydney")

(define (==> sunny friday) ; EX 15
  (if (or (equal? sunny false) (equal? friday true)) true false))

(==> false false) ; => #true

(define (image-area supplied-image) ; EX 16
  (* (image-width supplied-image) (image-height supplied-image)))

(define (image-classify supplied-image) ; EX 17
  (cond
    [(> (image-height supplied-image) (image-width supplied-image)) "tall"]
    [(< (image-height supplied-image) (image-width supplied-image)) "wide"]
    [(= (image-height supplied-image) (image-width supplied-image)) "square"]))

(define (string-join first-string second-string) ; EX 18
  (string-append first-string "_" second-string))

(string-join "hello" "world") ; => "hello_world"

(define (string-insert string index) ; EX 19
  (if (equal? (string-length string) 0)
      "_"
      (string-append (substring string 0 index) "_" (substring string index (string-length string)))))

(string-insert "Sydney" 5) ; => "Sydne_y"
(string-insert "" 5) ; => "_"

(define (string-delete string index) ; EX 20
  (if (equal? (string-length string) 0)
      ""
      (string-append (substring string 0 (- index 1))
                     (substring string index (string-length string)))))

(string-delete "Sydney" 5) ; => "Sydny"
(string-delete "" 5) ; => ""
