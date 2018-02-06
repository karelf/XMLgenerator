#!/bin/bash



CHANGES_FILE="./changes/changes.xml"
DOC_GENERATOR_FILE="./resources/masterclaw-release-2.4/bin/doc-generator"

OLD="@project.version@"
sed -i "s/$OLD/$OUTVERSION/g" $CHANGES_FILE


NOW="$(date +'%d.%m.%Y')"
OLD="@timestamp@"
sed -i "s/$OLD/$NOW/g" $CHANGES_FILE

chmod +x $DOC_GENERATOR_FILE
[ "$JAVA_HOME" = "/usr/java/j2sdk1.4.2_12" ] && export JAVA_HOME="/usr/lib/jvm/jre-1.6.0-openjdk.x86_64"
$DOC_GENERATOR_FILE $CHANGES_FILE ./changes/mail-template-qmpa5.doc mail.doc
$DOC_GENERATOR_FILE $CHANGES_FILE ./changes/rn-template-qmpa5.doc RN.doc
$DOC_GENERATOR_FILE $CHANGES_FILE ./changes/str-template.doc STR.doc



