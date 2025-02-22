# M23 Ultra for Samsung Galaxy M23/F23 5G
A complete OneUI 6 ROM with added flagship features based on S23 firmware

# Supported devices
- Samsung Galaxy M23 5G
- Samsung Galaxy F23 5G

# OS Features:
- All Flagship features, like:
  - Live Blur
  - AI Feature
  - Samsung DeX

# How to build/make
- Extract the stock AP from your device and the ported device (AP has the patition `super` which has `system`, `product`, `odm` and `vendor` inside).
  - ⚠️ Skip extracting `vendor_boot` from yours and ported devices.
- Replace all the files indicated in the replaced-apps.txt: [replaced-apps.txt](https://github.com/Aflaungos/M23Ultra/blob/Android14/replaced-apps.txt) in the ported device system folder (should be under CRB Folder/Projects/<PROJECTNAME>/ROM)
- Open [removed-apps.txt](https://github.com/Aflaungos/M23Ultra/blob/Android14/removed-apps.txt) and delete all the apps in the list from the ported device's `system` partition.
  - ⚠️ Delete files of `odm`, `product` and `vendor` from your device project and of `system` from ported device project
- Some files are missing in your `vendor` partition because they don't come with non-flagship phones. They are unessential, but if you want full compatibility and working features, you should compare your `vendor` parition with the ported device's `vendor` partition.
- Inside the `system_ext` partition of the ported device:
  - Check if any 'FM radio' libs are missing and port them from your device to it.
  - Replace the build.prop file with your device's file inside the `etc` folder.
  - Inside the `etc/selinux` folder, remove all lines containing "fabriccrypto" from inside /system/system_ext/etc/selinux/mapping/3X.0.cil files.
    - ⚠️ Note the X means there are more files, like 31, 32, 33...
  - `system_dlkm/etc` folder: Replace the build.prop file from with your device's file.
- Inside the `system` partition of the ported device:
  - Inside the `priv-app` folder, copy over from the repo Applock, wallpaper-res (optional) and SSecure.
  - Replace HybridRadio with your device's if you care about radio.
  - Inside the `lib` and `lib64` folders, copy over FM radio files from your device's.
  - Copy over the FM radio and Applock permissions from your device to ported device's `system` partition.
  - Copy over the `default-permissions` folder from your device to ported device's `system` partition.
  - Inside the `app` folder, copy over all Gallery related folders from the repo to your system. Copy over FunModeSDK from your device to ported device's `system/app` folder.
  - Inside the `etc/selinux` folder, compare it with your device's. If you notice differences in this folder it may cause bootloops and if that's the case, replace the ported device files with your device's files.
- Now check through this repo's commit history for stuff you wish to add:
- So, I start from [here](https://github.com/Aflaungos/M23Ultra/commits/Android13?before=b32d24ce9b931940855112b6e3a5db993b77f6b2+105&branch=Android13&qualified_name=refs%2Fheads%2FAndroid13)
- Locate the commit "Adding stock Android 13 files" and look through all the changes and implement them. Here's the ones that will be relevant:
  - [Fix for Samsung Health](https://github.com/Aflaungos/M23Ultra/commit/d97ec1672fe9e1b3f8c241ec96b3c0a9e096bfea)
  - [Disable APK signature checking](https://github.com/Aflaungos/M23Ultra/commit/e9fca1cedf2405c9f84dc2ee4aafa018e59de464)
  - [Disabling DRC in speaker](https://github.com/Aflaungos/M23Ultra/commit/89c3379735ee105fe30a938254972f893253557a)
  - [Disabling Samsung crap and encryption](https://github.com/Aflaungos/M23Ultra/commit/dc8a0872d0362dc7a1a723623558a73336193975) 
  - [Enabling OutDoor mode](https://github.com/Aflaungos/M23Ultra/commit/fa56e82d3d79d10a728a1e9fc0323eb53fb34dcd)
  - [Removing useless options in Settings](https://github.com/Aflaungos/M23Ultra/commit/01b48662a153a3c733fd8f24e4617ea8a0039b6d)
  - [Adding logo in Settings](https://github.com/Aflaungos/M23Ultra/commit/30a30eaded2d6ee247ef926c51f9342eb5b5c36f)
  - [Changing animations to 0.85x](https://github.com/Aflaungos/M23Ultra/commit/8042eb7f01155785e07ebf2da81cd1fd370cb4eb)
  - [Allow screenshots on secure apps](https://github.com/Aflaungos/M23Ultra/commit/c2cc85818df4fe040b4f89ca8f9b78e939b211b4)
  - [Fix Secure Folder](https://github.com/Aflaungos/M23Ultra/commit/8d5d613a133619d1a6dc98354aa9d6ffd1439bef)
  - [Fixing Secure WiFi and Private Share](https://github.com/Aflaungos/M23Ultra/commit/f26002dce2215824be076060c3ba59b84e6757db)
  - [Fix SmartView for rooted device](https://github.com/Aflaungos/M23Ultra/commit/daab0463d26e9411a98a60e63ea1e73026bad0ee)
  - [Disable init script to replace recovery](https://github.com/Aflaungos/M23Ultra/commit/a19c12d7c799fddb641afc0746eec6aeb57d7894) 
  - [Remove SSRM warning](https://github.com/Aflaungos/M23Ultra/commit/20e007bd742f25d4a2cac204deec575f16d3a012)
  - [Advanced Reboot Menu](https://github.com/Aflaungos/M23Ultra/commit/911bf1943c19007e4ed232c57ff08ebe431d94d5)
  - [a52q: Edits to floating_feature.xml](https://github.com/Aflaungos/M23Ultra/commit/78c1819c4d3ab53fa8a0840869fd3afacd65e506) [These are the lines that I add to enable flagship_features]
  - [Fixes to Advanced Reboot Menu](https://github.com/Aflaungos/M23Ultra/commit/afbc1b241b49b267607e245b1c0fb2bf2405a4ca)
  - [a52q: Camera Features](https://github.com/Aflaungos/M23Ultra/commit/dff7dac00ea60b03e6df9c239e215f85eb921620) [These are the camera lines that I add to A52]
  - [Disable this to be able to remove KnoxGuard App](https://github.com/ShaDisNX255/NcX-S21FE/commit/e9e8ada401d4d227163859a73bef575d5bcdb3fc)
  - [Adding Voice Focus feature](https://github.com/Aflaungos/M23Ultra/commit/ccad1a78d661eac8f3afe72cf14caff7b13129a7) 
  - [Add screen resolution options](https://github.com/Aflaungos/M23Ultra/commit/8fb628abbc513bfb5815ab0d859f45450c98d94e)
  - [a52q: Fix Super Steady](https://github.com/Aflaungos/M23Ultra/commit/efa035271ad45a4118f306199e7b7994a3eda233) 
  - [Fix Advanced Reboot](https://github.com/Aflaungos/M23Ultra/commit/23df55abfda68a6929de240daea2aef1adca3fb8)
- After completing all the changes you want, re-pack `odm`, `product` and `vendor` from your device's project.
- Re-pack `system` from ported device's project, and copy over the newly generated `system.img` file to your device's project Build folder.
- Repack `super.img` as a `raw` image inside device's project and compress the new `super.img` into an `xz` file using 7-zip
- Then use [Dynamic Installer](https://forum.xda-developers.com/t/zip-dual-installer-dynamic-installer-stable-4-7-b3-android-10-or-earlier.4279541/) to create an installation zip and make changes any changes to it (you can find my updater-script in the META-INF folder)
  
- Done

# Special Thanks
- Huge thanks to @ShaDisNX255 for his guide.
- @furbanoramos24 for explaining me some stuff about SELinux
