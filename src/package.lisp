
(defpackage :pi-bcm-host
  (:use :cl)
  (:export :bcm-host-init
           :bcm-host-deinit
           :graphics-get-display-size
           :bcm-host-get-peripheral-address
           :bcm-host-get-peripheral-size
           :bcm-host-get-sdram-address))