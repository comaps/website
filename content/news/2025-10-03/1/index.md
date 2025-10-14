---
title: "Improving routing data by correcting 1% of errors"
description: "How navigation apps take penalties into account"
date: 2025-10-03T15:10:00-03:00
slug: "improving-routing-data-osm-errors"
taxonomies:
    category: ["Blog"]
extra:
    author: "jeanbaptisteC"
    author_username: "jeanbaptisteC"
---

*The [original French version of this was published as an OSM diary entry](https://www.openstreetmap.org/user/jbcharron/diary/407536)*.

## How navigation apps take penalties into account

Most navigation apps based on OpenStreetMap data use road signs and road markings (stop signs, traffic lights, speed bumps, pedestrian crossings, traffic islands, etc.) to improve the reliability of route calculations and estimate travel times more accurately. Calculators often take these into account using a penalty system that impacts the route by assigning a default penalty for a given type of object.

CoMaps groups [the different objects](https://codeberg.org/comaps/comaps/src/branch/main/generator/road_penalty_generator.cpp) into [seven different types](https://codeberg.org/comaps/comaps/src/commit/eb264889e307389d7b72e13db7ea3a579cb49ee4/libs/routing/road_penalty.hpp#L87), and OSMAnd applies a penalty for [each type of object/possible value](https://github.com/spaetz/Osmand/blob/333ca98519eb212f7131528c1dc865e20ea53406/DataExtractionOSM/src/net/osmand/router/routing.xml#L106), which allows for greater precision.

To make this approach work, it is necessary to add and update the OpenStreetMap database using ID/JOSM or StreetComplete editors to keep the data up-to-date and accurate.

## How to contribute

I wanted to contribute to this topic, particularly regarding the keys `crossing=*` and `traffic_calming=*`, following the inclusion of penalties in CoMaps, [using the Taginfo tool](https://taginfo.openstreetmap.org/).

Taginfo is a superb tool for discovering the richness of OSM (i.e. creation of new keys/values by the community) as well as cleaning and updating rarely used keys/values, as it allows you to view the usage of both the most used values and the least used values.

The contributions consisted of correcting the least used values (used less than 10 times) that appeared to be errors.

The errors found in the OSM database are:

* Spelling errors in keys/values (truncated values or values with an extra character) → `traffic_calming=bum`
* Plural values → `traffic_calming=tables`
* Incorrect copy-paste → `crossing=uncontrolledDon’t tag for the renderer For more details on this topic, see Tagging for the renderer`, …
* Key value in a value → `traffic_calming=bicycle=yes`
* Values separated by a semicolon with extra spaces or separated by another character → `traffic_calming=chicane;␣choker`
* Translations of the value in the editor instead of the value → `crossing=Only Road Markings`
* Value in a language other than English → `crossing=лежачий_полицейский`
* Value containing an `*` instead of `yes` → `traffic_calming=*`

On this point, editing tools bear some responsibility because the checks performed are insufficient. In some cases, a warning could be displayed to alert the user, and autocomplete should avoid suggesting an incorrect value just because we have already entered it. The number of errors of this type remains very low, but they can remain in the database for several years without being corrected.

Improvements are certainly possible in data validators such as *Osmose*, but this remains more complex because validators are designed to handle large numbers of the same type of error (e.g., a deprecated key used several thousand times) and performing checks based on wiki values would be too restrictive and would limit the development of new keys/values.

This type of contribution applies to all types of objects in OSM, whether related to routing, rendering, etc., for example with the key [`traffic_signals=*`](https://taginfo.openstreetmap.org/keys/traffic_signals#values).

These contributions are fairly easy and quick to make; I was able to correct a hundred errors in a very short time.

Get typing and let's improve OSM together!
