(in-package :pi-bcm-host)

(cffi:defcfun ("bcm_host_init" bcm-host-init) :void)
(cffi:defcfun ("bcm_host_deinit" bcm-host-deinit) :void)

(cffi:defcfun ("graphics_get_display_size" graphics-get-display-size) :int
  (display_number :unsigned-short)
  (width :pointer)
  (height :pointer))

(cffi:defcfun ("bcm_host_get_peripheral_address"
               bcm-host-get-peripheral-address) :unsigned-int)
(cffi:defcfun ("bcm_host_get_peripheral_size"
               bcm-host-get-peripheral-size) :unsigned-int)

(cffi:defcfun ("bcm_host_get_sdram_address"
               bcm-host-get-sdram-address) :unsigned-int)


