;;; t/generator-test.lisp

(in-package :cl-user)
(defpackage #:generator-test-test
  (:use :cl
        :generator-test)
  (:import-from :fiveam
                #:def-suite
                #:in-suite
                #:run!
                #:is
                #:test)
  (:export #:run))

(in-package :generator-test-test)

(def-suite :generator-test-test
  :description "Test suite for generator-test")
(in-suite :generator-test-test)

(defun run ()
  (5am:run! :generator-test-test))

(test say-hi
  (is (equal "Hi Bobby!" (say-hi "Bobby"))))

(test my-add
  (is (= 5 (my-add 2 3))))
