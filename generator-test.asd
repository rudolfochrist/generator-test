;;; generator-test.asd

(in-package :asdf-user)

(defsystem #:generator-test
  :version "0.1.0"
  :author "Sebastian Christ"
  :mailto "rudolfo.christ@gmail.com"
  :license "BSD"
  :source-control (:git "git@github.com:rudolfochrist/generator-test.git")
  :bug-tracker "https://github.com/rudolfochrist/generator-test/issues"
  :depends-on ()
  :components ((:module "src"
                :components ((:file "package")
                             (:file "generator-test"))))
  :description "Project generator test"
  :in-order-to ((test-op (test-op :generator-test-test))))
