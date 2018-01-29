#!/bin/sh
# *********** TEST **********


echo "********** start sequencec for generating DOC - set JAVA and generating doc **********"
echo
echo "********** set javaJAVA Home **********"
echo "********** $JAVA_HOME" = "/usr/java/j2sdk1.4.2_12" ] && export JAVA_HOME="/usr/lib/jvm/jre-1.6.0-openjdk.x86_64 **********"
echo "**************************************************************************************************************************"
echo "**************************************************************************************************************************"
[ "$JAVA_HOME" = "/usr/java/j2sdk1.4.2_12" ] && export JAVA_HOME="/usr/lib/jvm/jre-1.6.0-openjdk.x86_64"
echo "***********finish set java **********"
echo 
echo "********** generating RN file **********"
./doc-generator changes.xml rn-template-probe-sims.doc TEST-rn-v1.doc
echo "********** finish RN gen **********"
echo "********** generating mail **********"
./doc-generator changes.xml mail-template-probe-sims.doc TEST-mail-v1.doc
echo "********** finish mail gen **********"
echo "********** generating STR **********"
./doc-generator changes.xml STR-testovaci-template.doc TEST-str-v1.doc

echo "********** finish generating STR and all documentation **********"
echo "==================================================================="
