#!/bin/bash
 
certfile="russian_trust_root_ca.cer"
certname="Russian Trusted Root CA"
 
for certDB in $(find ~/ -name "cert9.db")
do
    certdir=$(dirname ${certDB});
    certutil -A -n "${certname}" -t "TCu,Cu,Tu" -i ${certfile} -d sql:${certdir}
done
