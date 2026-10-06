---
title: "Reviews are missing"
description: "Frequently asked questions for CoMaps application"
taxonomies:
  supportcategory: ["Reviews"]
extra:
  tags: ["Android"]
  order: 30
---

There are two expected reasons why reviews might be missing:

Firstly, as the reviews are stored offline in the map files, check if the review you expect to see is old enough that it would be included in your currently used maps.
We update our maps roughly once a week, so reviews newer than the map generation date are expected to not yet be included.

Secondly, CoMaps uses the [`mangrove-osm-coder`](https://codeberg.org/mmakowski/mangrove-osm-coder) library to connect reviews with locations on the map.

Not all objects from OpenStreetMap are considered 'reviewable' by it. You can find the [current list here](https://codeberg.org/mmakowski/mangrove-osm-coder/src/commit/8b8502aad0927dc53ce0abf9b091825a32383ebd/run/osm2pgsql-flex-config.lua#L188). 
Objects not on that list will not show up in CoMaps.

If the review you are missing is sufficiently old and belongs to one of the listed items, [please get in touch](/community).
