#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
URL=$1
JAVA=$(which java)
IMAGE_DOWNLOADER=$DIR/target/ImageDownloader-0.1.jar
if [ ${URL: -97:1} == "#" ]; then
    TMP=$(mktemp)
    echo $TMP
	$JAVA -jar $IMAGE_DOWNLOADER $URL >$TMP
    xdg-open $TMP
else
   xdg-open $URL
fi
