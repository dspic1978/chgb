#!/bin/bash
apt-get update && apt-get install libnss3-tools
certfile="/home/user/SertRoot/russian_trust_root_ca.cer"
certname="Russian Trusted Root CA"
for certDB in $(find /home -name "cert9.db")
do
    certdir=$(dirname ${certDB});
    certutil -A -n "${certname}" -t "TCu,Cu,Tu" -i ${certfile} -d sql:${certdir}
done
