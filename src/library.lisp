(in-package :pi-bcm-host)

(cffi:define-foreign-library libbcm-host
    (:linux (:or "libbcm_host.so"
                 "/opt/vc/libbcm_host.so")))

(cffi:use-foreign-library libbcm-host)

