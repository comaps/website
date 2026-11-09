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



{#
Here are some useful components:

 IMAGES

{{ <image src="javi-and-rebecca-bikepackers.webp" alt="Javi and Rebecca" classes="max-w-40" /> }}
{{ <image_fig src="javi-and-rebecca-bikepackers.webp" caption="Javi and Rebecca" alt="Javi and Rebecca" /> }}
{{ <image_fig src="javi-and-rebecca-bikepackers.webp" caption="Javi and Rebecca" alt="Javi and Rebecca" float={true} /> }}
{{ <image_fig src="javi-and-rebecca-bikepackers.webp" caption="Javi and Rebecca" alt="Javi and Rebecca" size="small" /> }}


 VIDEOS

{{ <video src="anroid-auto-demo.webm" alt="A demonstration of Android Auto" classes="max-w-40" /> }}
{{ <video_fig src="anroid-auto-demo.webm" alt="A demonstration of Android Auto" caption="A naviagtion session using Android Auto" /> }}
{{ <video_fig src="anroid-auto-demo.webm" alt="A demonstration of Android Auto" caption="A naviagtion session using Android Auto" float={true} /> }}
{{ <video_fig src="anroid-auto-demo.webm" alt="A demonstration of Android Auto" caption="A naviagtion session using Android Auto" size="small" /> }}


 QUOTES

{% <quote author="Javi" work="Tuta Blog" url="https://tuta.com/blog/google-maps-alternatives-foss" date="2026-01-07"> %}
I have two main passions. The first one is outdoor sports like climbing, mountaineering, trail running, backcountry skiing, hiking, biking... just anything that gives me a feel of freedom and a connection to nature. I believe maintaining a physical and mental balance is crucial to enjoying a full and healthy life. The second one is the Free and Open Source technology, especially anything related to embedded systems and low-level programming.
{% </quote> %}

#}
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



