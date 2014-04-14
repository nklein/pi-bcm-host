
(defpackage :pi-bcm-host-test
  (:use :cl)
  (:export :run-all-tests))

(in-package :pi-bcm-host-test)

(defun run-all-tests (&key (debug-on-error fiveam:*debug-on-error*)
                           (debug-on-failure fiveam:*debug-on-failure*))
  (let ((fiveam:*debug-on-error* debug-on-error)
        (fiveam:*debug-on-failure* debug-on-failure))
    (fiveam:run!)))
