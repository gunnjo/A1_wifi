#!/bin/bash

  MYDIR=`pwd`

  DHD_KO_DIR=$MYDIR/wifi

  LINUXDIR=/home/gunnjo/android_dev/A1_ICS/kernel/kernel-3.0.8

  DHD_DIR=$MYDIR/bcm4329_fxn_248/src/dhd/linux

  export MYDIR=$MYDIR
  export prod_name=$prod_name
  export CROSS_COMPILE=arm-linux-gnueabi-
  export ARCH=arm
  export HOSTENV=linux
  export HOSTOS=unix
  export TARGETARCH=arm_le
  export TARGETENV=linuxarm_le
  export TARGETOS=unix
  export LINUXDIR=$LINUXDIR
  export LINUXVER=2.6.35
  export DHD_KO_DIR=$DHD_KO_DIR

  echo "=== build wifi driver ==="

  echo LINUXDIR: $LINUXDIR
  echo DHD_DIR: $DHD_DIR

  cd $DHD_DIR
  #make dhd-cdc-sdmmc-gpl-debug
  make dhd-cdc-oob-gpl-debug

