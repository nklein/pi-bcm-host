
(in-package :pi-bcm-host-test)

(fiveam:def-suite bcm-host-exports
    :description "Test that the pi-bcm-host package exports the
                  expected symbols.")

(fiveam:in-suite bcm-host-exports)

(defun pi-bcm-host-symbol (symbol)
  (find-symbol (symbol-name symbol) :pi-bcm-host))

(defun pi-bcm-host-symbol-externalp (symbol)
  (eq (nth-value 1 (pi-bcm-host-symbol symbol)) :external))

(defun pi-bcm-host-symbol-functionp (symbol)
  (functionp (symbol-function (pi-bcm-host-symbol symbol))))

(fiveam:test bcm-init-host-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-init-host))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-init-host)))

(fiveam:test bcm-deinit-host-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-deinit-host))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-init-host)))
