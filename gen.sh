#!/bin/sh

PAGES="index start license screenshot bugs requirements downloads buy doc hard faq links press contact dev donate 404"
LANGS="en fr"

for l in $LANGS; do
  mkdir -p $l
  for p in $PAGES; do
    xsltproc --stringparam filename $p.html --stringparam lang $l xml/geexbox.xsl xml/$p.xml > $l/$p.html
  done
done
