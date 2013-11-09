#!/usr/bin/env bash

PICTURE_DIR="$HOME/Pictures/bing-wallpapers"
mkdir -p $PICTURE_DIR
urls=( $(curl http://feeds.feedburner.com/bingimages | grep "enclosure url" | sed 's/<enclosure url="\([^"]*\).*/\1/' ))

echo "--------- $(date +"%m-%d-%Y %T") --------  "	
for p in ${urls[@]}; do 
	filename=$(echo $p | sed -e 's/.*2f\([^_]*\).*/\1/').jpg
    if [ ! -f $PICTURE_DIR/$filename ]; then
        curl -Lo  "$PICTURE_DIR/$filename" $p
	echo "Downloaded: $filename"
    fi
done
echo "---------------------------------------- "
