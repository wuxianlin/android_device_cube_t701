#!/sbin/sh

insmod /vendor/lib/modules/bstclass.ko
#insmod /vendor/lib/modules/bma2x2.ko
#insmod /vendor/lib/modules/ltr_558als.ko
#insmod /vendor/lib/modules/akm09911.ko
    
#added by cheguosheng
insmod /vendor/lib/modules/stk8baxx.ko
insmod /vendor/lib/modules/mc34xx.ko
insmod /vendor/lib/modules/mir3da.ko
insmod /vendor/lib/modules/stk3x1x.ko

insmod /vendor/lib/modules/sprd_vibrator.ko

sleep 2s

insmod /vendor/lib/modules/gslx680.ko

chown system system /sys/class/sprd_sensorhub_tp/device/psensor_enable
chown system system /sys/class/sprd_sensorhub_tp/device/psensor_flush
chmod 660 /sys/class/sprd_sensorhub_tp/device/psensor_enable
chmod 660 /sys/class/sprd_sensorhub_tp/device/psensor_flush
chown system system /sys/class/gslx680_tp_rotate/device/tp_rotate_enable
chmod 660 /sys/class/gslx680_tp_rotate/device/tp_rotate_enable
chown system system sys/devices/virtual/gslx680_tp_rotate/device/tp_rotate_enable
chmod 660 sys/devices/virtual/gslx680_tp_rotate/device/tp_rotate_enable

