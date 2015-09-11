
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

(fiveam:test bcm-host-init-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-host-init))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-host-init)))

(fiveam:test bcm-host-deinit-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-host-deinit))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-host-deinit)))

(fiveam:test graphics-get-display-size-test
  (fiveam:is (pi-bcm-host-symbol-externalp :graphics-get-display-size))
  (fiveam:is (pi-bcm-host-symbol-functionp :graphics-get-display-size)))

(fiveam:test bcm-host-get-peripheral-address-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-host-get-peripheral-address))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-host-get-peripheral-address)))

(fiveam:test bcm-host-get-peripheral-size-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-host-get-peripheral-size))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-host-get-peripheral-size)))

(fiveam:test bcm-host-get-sdram-address-test
  (fiveam:is (pi-bcm-host-symbol-externalp :bcm-host-get-sdram-address))
  (fiveam:is (pi-bcm-host-symbol-functionp :bcm-host-get-sdram-address)))
