;;; generator-test-test.asd

(in-package :asdf-user)

(defsystem #:generator-test-test
  :author "Sebastian Christ"
  :mailto "rudolfo.christ@gmail.com"
  :description "Test system of generator-test"
  :license "BSD"
  :depends-on (:fiveam
               :generator-test)
  :components ((:module "t"
                :components ((:file "generator-test"))))
  :perform (test-op (op c)
                    (asdf:clear-system c)
                    (uiop:symbol-call :generator-test-test :run)))
