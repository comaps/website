#!/bin/bash

set -euo pipefail

if [ ! -d "content" ]; then
	echo "error: run me in the root directory please!"
	exit 1
fi

NOW=$(date -u '+%Y-%m-%dT%H:%M:%S-00:00')
CONTENT_DIR="content/news/${NOW:0:10}"

write_template() {
	cat > "$1" << EOF
---
title: "A post title"
description: "A post description"
date: $NOW
slug: "a-post-title"
taxonomies:
    category: ["Blog"]
authors: ["Somebody"]
extra:
    authors_codeberg:
         "Somebody": "comaps"
    keywords: ["abcd"]
---

Fill out the frontmatter above! Everything in extra is optional.

Some useful shortcodes:

{{ image(src="javi-and-rebecca-bikepackers.webp", alt="Javi and Rebecca", caption="Javi and Rebecca", classes="max-w-40") }}

{% quote(author="Brandon" work="Tuta Blog" url="https://tuta.com/blog/google-maps-alternatives-foss" date="2026-01-07") %}
CoMaps can be used offline with or without network connection, comes with no annoying ads, and it doesn’t drain your mobile’s battery (unlike Google Maps). It’s available on Google Play, F-droid, IzzyOnDroid, Obtainium or APK download for Android, and on the App store for iOS.
{% end %}
EOF
}

write_index() {
	cat > "$1" << EOF
---
sort_by: date
transparent: true
---
EOF
}

if [ ! -d "$CONTENT_DIR" ]; then
	mkdir -p "$CONTENT_DIR/1"
	write_index "$CONTENT_DIR/_index.md"
	write_template "$CONTENT_DIR/1/index.md"

	echo "wrote new sample post at $CONTENT_DIR/1/index.md"
else
	NUM=1
	while [ -d "$CONTENT_DIR/$NUM" ]; do
		((NUM++))
	done

	mkdir "$CONTENT_DIR/$NUM"
	write_template "$CONTENT_DIR/$NUM/index.md"
	echo "wrote new sample post at $CONTENT_DIR/$NUM/index.md"
fi



