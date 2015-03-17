#!/bin/bash

set -o nounset
set -o errexit

echo "the xslt workbench"

usage () {
		echo "Usage: $0 xml-file xsl-file [out-file]"
}
if [[ $# -ne 3 ]] && [[ $# -ne 2 ]]
then
		usage
		exit 1
fi
if [[ $# -eq 2 ]]
then
		OUTPUT=""
else
		OUTPUT="-o:$3"
fi
# change the classpath to point to saxon.jar that you may have
java -classpath `cygpath -wp /cygdrive/c/Users/kmhaswade/.m2/repository/saxon/saxon/9/saxon-9.jar` net.sf.saxon.Transform -s:$1 -xsl:$2 ${OUTPUT}
