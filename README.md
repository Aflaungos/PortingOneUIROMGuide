# Porting OneUI ROM Guide
A complete OneUI ROM Porting Guide Noob Friendly

# Tutorial
- Extract the stock AP from your device and the ported device (AP has the patition `super` which has `system`, `product`, `odm` and `vendor` inside).
  - ⚠️ Skip extracting `vendor_boot` from yours and ported devices.
- Replace all the files indicated in the replaced-apps.txt: [replaced-apps.txt](https://github.com/Aflaungos/PortingOneUIROMGuide/blob/main/replaced-apps.txt) in the ported device system folder (should be under CRB Folder/Projects/<PROJECTNAME>/ROM)
- [OPTIONAL] Open [removed-apps.txt](https://github.com/Aflaungos/PortingOneUIROMGuide/blob/main/removed-apps.txt) and delete all the apps in the list from the ported device's `system` partition.
  - ⚠️ Delete files of `odm`, `product` and `vendor` from your device project and of `system` from ported device project
- Some files are missing in your `vendor` partition because they don't come with non-flagship phones. They are unessential, but if you want full compatibility and working features, you should compare your `vendor` parition with the ported device's `vendor` partition.
## Inside the `system_ext` partition of the ported device:
  - Check if any 'FM radio' libs are missing and port them from your device to it.
  - Replace the build.prop file with your device's file inside the `etc` folder.
  - Inside the `etc/selinux` folder, remove all lines containing "fabriccrypto" from inside /system/system_ext/etc/selinux/mapping/3X.0.cil files.
    - ⚠️ Note the X means there are more files, like 31, 32, 33...
  - `system_dlkm/etc` folder: Replace the build.prop file from with your device's file.
## Inside the `system` partition of the ported device:
  - Replace the `build.prop` and `default.prop` files from ported device `system` partition with your device's files.
  - Inside the `priv-app` folder, copy over from the repo Applock, wallpaper-res (optional) and SSecure.
  - Replace HybridRadio with your device's if you care about radio.
  - Inside the `lib` and `lib64` folders, copy over FM radio files from your device's.
  - Copy over the FM radio and Applock permissions from your device to ported device's `system` partition.
  - Copy over the `default-permissions` folder from your device to ported device's `system` partition.
  - Inside the `app` folder, copy over all Gallery related folders from the repo to your system. Copy over FunModeSDK from your device to ported device's `system/app` folder.
  - Inside the `etc/selinux` folder, compare it with your device's. If you notice differences in this folder it may cause bootloops and if that's the case, replace the ported device files with your device's files.
## Packaging
- After completing all the changes you want, re-pack `odm`, `product` and `vendor` from your device's project.
- Re-pack `system` from ported device's project, and copy over the newly generated `system.img` file to your device's project Build folder.
- Repack `super.img` as a `raw` image inside device's project and compress the new `super.img` into an `xz` file using 7-zip
## Installing
- Extract super.img from xz file and flash using TWRP or any other custom recovery as image file in `Super` Partition
## Done
- Congratulations! You have finished this guide, and should probably have a working OneUI port.
## [If having SELinux issues] Inside of your device 'vendor' folder
- Replace the selinux folder with the ported device's selinux folder.

# Special Thanks
- Huge thanks to @ShaDisNX255 for his guide.
- @furbanoramos24 for explaining me some stuff about SELinux
