
(asdf:defsystem #:pi-bcm-host-test
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:pi-bcm-host #:fiveam)
    :components
    ((:module "test"
      :components ((:file "package")
                   (:file "bcm-host" :depends-on ("package"))))))
