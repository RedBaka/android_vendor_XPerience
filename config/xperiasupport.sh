#!/bin/sh

./vendor/xperience/tools/colors

# Print something to build output
echo ${bldppl}"Moving XPeria support files..."${txtrst}
cp -a -R vendor/xperience/prebuilt/XPeriaSupport/etc/permissions/. out/target/product/"$DEVICE"/system/etc/permissions/
cp -a -R vendor/xperience/prebuilt/XPeriaSupport/framework/. out/target/product/"$DEVICE"/system/framework/
