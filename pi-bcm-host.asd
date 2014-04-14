
(asdf:defsystem #:pi-bcm-host
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:cffi)
    :components
    ((:module "src"
      :components ((:file "package")
                   (:file "bcm-host" :depends-on ("package"))))))

(defmethod asdf:perform ((op asdf:test-op)
                         (system (eql (asdf:find-system :pi-bcm-host))))
  (let ((test-package :pi-bcm-host-test))
    (asdf:load-system test-package)
    (funcall (symbol-function (find-symbol (symbol-name :run-all-tests)
                                           test-package)))))

(asdf:defsystem #:pi-bcm-host-test
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:pi-bcm-host #:fiveam)
    :components
    ((:module "test"
      :components ((:file "package")
                   (:file "bcm-host" :depends-on ("package"))))))
