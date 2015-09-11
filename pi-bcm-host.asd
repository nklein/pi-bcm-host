
(asdf:defsystem #:pi-bcm-host
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:cffi)
    :in-order-to ((asdf:test-op (asdf:load-op :pi-bcm-host-test)))
    :perform (asdf:test-op (o c)
               (uiop:symbol-call :pi-bcm-host-test :run-all-tests))
    :components
    ((:module "src"
      :components ((:file "package")
                   (:file "bcm-host" :depends-on ("package"))
                   (:file "library" :depends-on ("package"))))))

