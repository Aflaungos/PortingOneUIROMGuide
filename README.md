# Porting OneUI ROM Guide
A complete OneUI ROM Porting Guide Noob Friendly✅
- ⚠️ If you are too lazy to read all of this, give up or wait for a dev to actually port a ROM for you!
# ✨ Special Thanks
**Huge thanks to these people:**
- **@ShaDisNX255** for his guide!
- **@furbanoramos24** for explaining me some stuff about SELinux!
- **@salvogiangri and collaborators** for UN1CA, which gave me the knowledge to learn how to port!
# ⚙️ Tutorial
## 1. Unpacking 🪄
- Extract the stock AP from your device and the ported device (AP has the patition `super` which has `system`, `product`, `odm` and `vendor` inside) with an Android Kitchen like CRB.
  - ⚠️ Skip extracting `vendor_boot` from yours and ported devices.
- Replace all the files indicated in the replaced-apps.txt: [replaced-apps.txt](https://github.com/Aflaungos/PortingOneUIROMGuide/blob/main/replaced-apps.txt) in the ported device system folder (should be under `CRB_Folder/Projects/<YOUR_PROJECT_NAME>/ROM)`
- [OPTIONAL/DEBLOATING] Open [removed-apps.txt](https://github.com/Aflaungos/PortingOneUIROMGuide/blob/main/removed-apps.txt) and delete all the apps in the list from the ported device's `system` partition.
  - ⚠️ Delete files of `odm`, `product` and `vendor` from your device project and of `system` from ported device project
- Some files are missing in your `vendor` partition because they don't come with non-flagship phones. They are unessential, but if you want full compatibility and working features, you should compare your `vendor` parition with the ported device's `vendor` partition.

## 2. Inside the `system_ext` partition of the ported device
  - Check if any 'FM radio' libs are missing and port them from your device to it.
  - Replace the build.prop file with your device's file inside the `etc` folder.
  - Inside `system_ext/etc/selinux`, follow these steps to fix SELinux based on the OneUI version:
    1. Check `plat_sepolicy_vers.txt` for which vndk version you have (ex: 30 = VNDK30, 31 = VNDK31 and so on). Note the number down as `YOURNUMBER`.
    2. Inside `vendor/etc/selinux/plat_pub_versioned.cil`, check with each line in the table below if you have it on this file, **and if not** remove all lines that have this line referenced from this file: `system_ext/etc/selinux/mapping/<YOURNUMBER>.cil`
    3. These are the lines to delete:
      - ⚠️ They stack with higher OneUI version, so if for example you're on UI 7, check from 5 and 6 too!   
    - | OneUI 5/5.1              | OneUI 6/6.1/6.1.1             | OneUI 7                       |
      |:------------------------:|:-----------------------------:|:-----------------------------:|
      | audiomirroring           | hal_dsms_default              | attiqi_app                    |
      | audiomirroring_exec      | hal_dsms_default_exec         | attiqi_app_data_file          |
      | audiomirroring_service   | proc_compaction_proactiveness | ker_app                       |
      | fabriccrypto             | sbauth                        | kpp_app                       |
      | fabriccrypto_exec        | sbauth_exec                   | kpp_data_file                 |
      | fabriccrypto_data_file   | ----------------------------- | ----------------------------- |
      | hal_dsms_service         | ----------------------------- | ----------------------------- |
      | uwb_regulation_skip_prop | ----------------------------- | ----------------------------- |
      - 1. ⚠️ If you're still having SELinux issues, Inside of your device `vendor/etc` folder: Replace the `selinux` folder with the ported device's `selinux` folder.
      - 2. ⚠️ If you wish to skip this step and build with SELinux disabled (which I strongly do not recommend, edit the line `ro.build.selinux=1` to `ro.build.selinux=0` inside `system/build.prop`)

## 3. `system_ext`: Fixing APEX
  - If comparing inside the folder `system_ext/apex` from port and your device ROM, you notice that you have a different number (which is the VNDK version of your device) you have to replace it with yours.
    - For example, `com.android.vndk.v30.apex` is yours and `com.android.vndk.v31/32/33/34.apex` in the port, replace it!

## 4. Inside `system_dlkm/etc` folder
  - Replace the build.prop file from with your device's file.

## 5. Inside the `system` partition of the ported device:
  - Replace the `build.prop` and `default.prop` files from ported device `system` partition with your device's files.
  - Inside the `priv-app` folder, copy over from the repo Applock, wallpaper-res (optional) and SSecure.
  - Replace HybridRadio with your device's if you care about radio.
  - Inside the `lib` and `lib64` folders, copy over FM radio files from your device's.
  - Copy over the FM radio and Applock permissions from your device to ported device's `system` partition.
  - Copy over the `default-permissions` folder from your device to ported device's `system` partition.
  - Inside the `app` folder, copy over all Gallery related folders from the repo to your system. Copy over FunModeSDK from your device to ported device's `system/app` folder.
  - Inside the `etc/selinux` folder, compare it with your device's. If you notice differences in this folder it may cause bootloops and if that's the case, replace the ported device files with your device's files.

## 6. Packaging 💾📀
- After completing all the changes you want, re-pack `odm`, `product` and `vendor` from your device's project as sparse (new.dat).
- Re-pack `system` (again as sparse (new.dat)) from ported device's project, and copy over the newly generated `system.img` file to your device's project Build folder.
- Repack `super.img` as a `raw` image inside device's project and compress the new `super.img` into an `xz` file using 7-zip

## 7. Troubleshooting packaging
- If you get a out of space error during packaging a partition or super, be sure to debloat it using CRB or inside app/priv-app! I like to use Spacesniffer to see exactly which programs are the biggest in size and if possible remove them. Do not delete any app as some of them are important for the ROM to work, do a research on each app!
- As for SELinux_fs errors, open your `project folder` and inside `config` folder open `system_file_contexts.txt` from port and your ROM. Check the error related line and find it in the txt file of your ROM and copy it to the port txt file. If the line disappears you have done it correctly, continue until no lines appear!
## 8. Installing ⬇️
- Extract super.img from xz file and flash using TWRP or any other custom recovery as image file in `Super` Partition

## 9. Done 🎉
- **Congratulations! You have finished this guide, and should probably have a working OneUI port.**
