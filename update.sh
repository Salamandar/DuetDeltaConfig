#!/bin/bash

slic3r_dir="${HOME}/.Slic3rPE"

duet_dlurl="http://192.168.1.16/rr_download?name=0:/sys/"

duet_files=(
  bed.g
  cancel.g
  config.g
  filaments.csv
  homedelta.g
  iap4e.bin
  pause.g
  resume.g
  resurrect.g
  sleep.g
  stop.g
  tfree0.g
  tpost0.g
  tpre0.g
)

rm -r "Slic3rPE"
cp -R "${slic3r_dir}" "Slic3rPE"


mkdir "Duet3dFiles" -p
pushd "Duet3dFiles" >/dev/null
for file in "${duet_files[@]}"; do
  wget "${duet_dlurl}${file}" -nv -O "${file}"
done
popd >/dev/null
