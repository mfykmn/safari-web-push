#!/bin/sh

cd `dirname $0`

outdir="pushpackage/icon.iconset"
mkdir -p $outdir

BASE_FILE="icon_512x512.png"

sips -Z 16 ${BASE_FILE} --out ${outdir}/icon_16x16.png
sips -Z 32 ${BASE_FILE} --out ${outdir}/icon_16x16@2x.png

sips -Z 32 ${BASE_FILE} --out ${outdir}/icon_32x32.png
sips -Z 64 ${BASE_FILE} --out ${outdir}/icon_32x32@2x.png

sips -Z 128 ${BASE_FILE} --out ${outdir}/icon_128x128.png
sips -Z 256 ${BASE_FILE} --out ${outdir}/icon_128x128@2x.png


iconutil -c icns ${outdir}

exit 0