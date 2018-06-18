#!/bin/sh
# Energized Blu - Readme Creator
# make time stamp update
echo "[+] Energized Blu - Readme Creator"
echo "- Started..."
TIMESTAMP=`date +'%b %d, %Y'`
VERSION=`date +'%y.%m.%j'`
echo "- Adding Date"
echo "- Adding Version"
# domain entries
DOMAINS=$(egrep 'Total Domains:' energized/blu)
GDOMAINS=$(egrep 'Total Domains:' energized/blu_go)
# add size
BSIZE=$(ls -lah energized/blu | awk '{print $5}')
GSIZE=$(ls -lah energized/blu_go | awk '{print $5}')
BZIPSIZE=$(ls -lah energized/blu.zip | awk '{print $5}')
GZIPSIZE=$(ls -lah energized/blu_go.zip | awk '{print $5}')
BANDROIDSIZE=$(ls -lah energized/blu_android.zip | awk '{print $5}')
GANDROIDSIZE=$(ls -lah energized/blu_go_android.zip | awk '{print $5}')
BMAGISKSIZE=$(ls -lah energized/blu_magisk.zip | awk '{print $5}')
GMAGISKSIZE=$(ls -lah energized/blu_go_magisk.zip | awk '{print $5}')
BWINSIZE=$(ls -lah energized/blu_windows.zip | awk '{print $5}')
BCONFSIZE=$(ls -lah energized/blu.conf | awk '{print $5}')
BCIPSIZE=$(ls -lah energized/blu-ipv6.conf | awk '{print $5}')
BUBSIZE=$(ls -lah energized/blu-unbound.conf | awk '{print $5}')
BDSIZE=$(ls -lah energized/blu-domains.txt | awk '{print $5}')
sed -e "s/_timestamp_/$TIMESTAMP/g" -e "s/_version_/$VERSION/g" -e "s/_domains_/$DOMAINS/g" -e "s/_gdomains_/$GDOMAINS/g" -e "s/_bsize_/$BSIZE/g" -e "s/_bzipsize_/$BZIPSIZE/g" -e "s/_bandroidsize_/$BANDROIDSIZE/g" -e "s/_bmagisksize_/$BMAGISKSIZE/g" -e "s/_bwinsize_/$BWINSIZE/g" -e "s/_gsize_/$GSIZE/g" -e "s/_gzipsize_/$GZIPSIZE/g" -e "s/_gandroidsize_/$GANDROIDSIZE/g" -e "s/_gmagisksize_/$GMAGISKSIZE/g" -e "s/_bconfsize_/$BCONFSIZE/g" -e "s/_bcipsize_/$BCIPSIZE/g" -e "s/_bubsize_/$BUBSIZE/g" -e "s/_bdsize_/$BDSIZE/g" README.template > ./README.tmp
echo >> ./README.tmp
# add to file
cat ./README.tmp  > ./README.md
echo "- Adding Total Entries"

# remove tmp file
rm -rf ./*.tmp

# remove extra text
sed -i -e 's/# Total Domains: //g' ./README.md

echo "[+] Done !"

