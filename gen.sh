#!/bin/sh

PAGES="index start license screenshot bugs requirements downloads buy doc hard faq links sponsors press contact dev donate packages 404"
LANGS="en fr de"

for l in $LANGS; do
  mkdir -p $l
  for p in $PAGES; do
    xsltproc --stringparam filename $p.html --stringparam lang $l xml/geexbox.xsl xml/$p.xml > $l/$p.html
  done
done
