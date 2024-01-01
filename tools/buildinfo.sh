#!/bin/bash

echo "# begin build properties"
echo "# autogenerated by buildinfo.sh"

# The ro.build.id will be set dynamically by init, by appending the unique vbmeta digest.
if [ "$BOARD_USE_VBMETA_DIGTEST_IN_FINGERPRINT" = "true" ] ; then
  echo "ro.build.legacy.id=$BUILD_ID"
else
  echo "ro.build.id=$BUILD_ID"
fi
echo "ro.build.display.id=52.1.A.3.137"
echo "ro.build.version.incremental=052001A003013702006556692"
echo "ro.build.version.sdk=$PLATFORM_SDK_VERSION"
echo "ro.build.version.preview_sdk=$PLATFORM_PREVIEW_SDK_VERSION"
echo "ro.build.version.preview_sdk_fingerprint=$PLATFORM_PREVIEW_SDK_FINGERPRINT"
echo "ro.build.version.codename=$PLATFORM_VERSION_CODENAME"
echo "ro.build.version.all_codenames=$PLATFORM_VERSION_ALL_CODENAMES"
echo "ro.build.version.known_codenames=$PLATFORM_VERSION_KNOWN_CODENAMES"
echo "ro.build.version.release=$PLATFORM_VERSION_LAST_STABLE"
echo "ro.build.version.release_or_codename=$PLATFORM_VERSION"
echo "ro.build.version.release_or_preview_display=$PLATFORM_DISPLAY_VERSION"
echo "ro.build.version.security_patch=$PLATFORM_SECURITY_PATCH"
echo "ro.build.version.base_os=$PLATFORM_BASE_OS"
echo "ro.build.version.min_supported_target_sdk=$PLATFORM_MIN_SUPPORTED_TARGET_SDK_VERSION"
echo "ro.build.date=Fri Feb 19 02:20:51 JST 2021"
echo "ro.build.date.utc=1613668851"
echo "ro.build.type=user"
echo "ro.build.user=BuildUser"
echo "ro.build.host=BuildHost"
echo "ro.build.tags=release-keys"
echo "ro.build.flavor=aurora_dsds-user"
if [ -n "$BOARD_BUILD_SYSTEM_ROOT_IMAGE" ] ; then
  echo "ro.build.system_root_image=$BOARD_BUILD_SYSTEM_ROOT_IMAGE"
fi

# These values are deprecated, use "ro.product.cpu.abilist"
# instead (see below).
echo "# ro.product.cpu.abi and ro.product.cpu.abi2 are obsolete,"
echo "# use ro.product.cpu.abilist instead."
echo "ro.product.cpu.abi=$TARGET_CPU_ABI"
if [ -n "$TARGET_CPU_ABI2" ] ; then
  echo "ro.product.cpu.abi2=$TARGET_CPU_ABI2"
fi

if [ -n "$PRODUCT_DEFAULT_LOCALE" ] ; then
  echo "ro.product.locale=$PRODUCT_DEFAULT_LOCALE"
fi
echo "ro.wifi.channels=$PRODUCT_DEFAULT_WIFI_CHANNELS"

echo "# ro.build.product is obsolete; use ro.product.device"
echo "ro.build.product=$TARGET_DEVICE"

echo "# Do not try to parse description or thumbprint"
echo "ro.build.description=$PRIVATE_BUILD_DESC"
if [ -n "$BUILD_THUMBPRINT" ] ; then
  echo "ro.build.thumbprint=$BUILD_THUMBPRINT"
fi

echo "ro.lineage.device=$LINEAGE_DEVICE"

echo "# end build properties"
