#!/bin/sh
# Energized - DNSMasq
# Energized Blu DNSMasq & IPV6 DNSMasq
#
HOSTS_RAW=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/energized/blu
TMP_LOCATION=assets/DNSMasq

wget $HOSTS_RAW -P $TMP_LOCATION 

# DNSMasq
awk '$1 == "0.0.0.0"  { print "address=/"$2"/0.0.0.0/"}' $TMP_LOCATION/blu  > energized/blu.conf

# DNSMasq IPV6
awk '$1 == "0.0.0.0"  { print "address=/"$2"/::1/"}' $TMP_LOCATION/blu > energized/blu-ipv6.conf

# Unbound
awk '$1 == "0.0.0.0"  { print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\""}' $TMP_LOCATION/blu > energized/blu-unbound.conf

# Domains List
awk '$1 == "0.0.0.0"  { print ""$2" "}' $TMP_LOCATION/blu > energized/blu-domains.txt
# clean up!
rm $TMP_LOCATION/blu