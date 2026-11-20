### AnyKernel3 Ramdisk Mod Script
## Kernel_Wayne / GSKernel - wayne (Xiaomi Mi 6X / Mi A2)
## kernel.string is injected at build time (@KERNEL_STRING@)

### AnyKernel setup
properties() { '
kernel.string=@KERNEL_STRING@
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=wayne
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# boot shell variables
BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install - keep the stock ramdisk, only swap the kernel
dump_boot;
write_boot;
