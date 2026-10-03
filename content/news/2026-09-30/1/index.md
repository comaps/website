---
title: "This Month in CoMaps: September 2026"
description: "A roundup of all the latest news from this month in CoMaps"
date: 2026-09-30T11:07:40-00:00
slug: "this-month-in-comaps-september-2026"
taxonomies:
    category: ["Blog"]
authors: ["Leonardo Bishop"]
extra:
    authors_codeberg:
         "Leonardo Bishop": "LMBishop"
    keywords: ["This Month in CoMaps"]
---

Welcome to the inaugural edition of *This Month in CoMaps*! This is the first of a series of posts which will do as the title suggests: recap everything that has happened throughout the project over the past month.

At the end of August we released [CoMaps v2026.08.31-14](https://www.comaps.app/news/2026-08-31/Release-2026.08.31-release-notes/), featuring a brand new transportation modes UI for iOS, and the inclusion of reviews from [Mangrove](https://mangrove.reviews/) on Android, amongst many other improvements. Feedback for the modes UI from users has been largely positive, with notable issues relating to the [discoverability of the options and accessibility](https://codeberg.org/comaps/comaps/pulls/5180) fixed for the next release. 

This month has seen substantial progress in formalising our governance structures, and while many contributors have been focusing their time mostly on this, there also has been steady work on new features too.

## Feature progress

Since releasing the Mangrove reviews feature on Android, we've seen an additional ~1,000 reviews be made over the past month, which is 20% of the total number of reviews! [@mmakowski](https://codeberg.org/mmakowski) has been working on further refining the feature by showing reviews in search results, and adding a handy link to MapComplete to submit new ones. We hope this encourages even more users to add Mangrove reviews and help populate the dataset!


{{ <image src="02-mangrove.png" classes="max-w-50" caption="Left: Review summary in search results; right: link to add a review via MapComplete in reviews page"/> }}


[@hackintosh5](https://codeberg.org/hackintosh5) has been making substantial improvements to CoMaps for non-visual use. In case you missed it, it has been possible navigate points of interest on the map on Android using TalkBack since v2026.08.31-14, allowing users with visual impairments to "feel" their way around the map. They have also been working this month on porting this over to iOS, so VoiceOver users can benefit too. All this means CoMaps on Android (and soon, iOS) will be comparable to Apple Maps in terms of accessibility as a fully FLOSS alternative! 

{{ <video src="03-talkback.webm" classes="max-w-50" caption="Demonstration of TalkBack navigation on the map itself"/> }}

Attendees of this year's State of the Map may already be aware that [@zyphlar](https://codeberg.org/zyphlar) has been working hard on *indoor mapping* support in CoMaps. This has involved some major work on our rendering engine, but it means previously hard to read areas like train stations and shopping centres become a whole lot clearer. On a similar vein to Mangrove reviews, we hope that by supporting indoor maps, users are more motivated to map out indoor areas and contribute them back to OpenStreetMap! 

{{ <image src="04-indoor.png" classes="max-w-50" caption="An indoor map of a building at Université Gustave Eiffel"/> }}

## Governance updates

Following the recent [poll on an umbrella host](https://codeberg.org/comaps/Governance/issues/166), the founding members of CoMaps have applied for membership with the Software Freedom Conservancy (SFC) on behalf of the project. We are happy to share that our application has been accepted, and that initial negotiations are underway! There is still a way to go before CoMaps is formally established under the SFC, but we are one step closer to achieving one of the [goals we set out at the start of the year](https://www.comaps.app/news/2026-01-09/comaps-in-2026-planning-for-the-future/).

There has additionally been progress in establishing a formal constitution for CoMaps, with a draft constitution having been deliberated amongst existing contributors and now [submitted in a pull request](https://codeberg.org/comaps/Governance/pulls/175). To summarise it in a sentence, it aims to actualize our [core principles](https://codeberg.org/comaps/Governance#core-principles) of a community-driven project, with key authority being derived from community members, and a legal and financial backstop in the form of the SFC. You can read the full draft text and more about its motivations in the pull request. 


## Community news

In case you happened to miss all the noise about OpenStreetMap's State of the Map, a few contributors represented CoMaps at this year's edition. You can read more about it in Bastian and Diego's post [*CoMaps at State of the Map 2026*](https://www.comaps.app/news/2026-09-14/comaps-at-state-of-the-map-2026/).

{{ <image src="05-comaps-at-sotm.png" classes="max-w-50" caption="CoMaps contributors Bastian and Diego presenting at State of the Map 2026. A recording of this talk is [available online](https://peertube.openstreetmap.fr/w/9DGz6jXc2wG93XohZweE8M)."/> }}

## New contributors

⭐ [@philt3r](https://codeberg.org/philt3r) made their first contribution in [#5149](https://codeberg.org/comaps/comaps/pulls/5149)  
⭐ [@kevintcoughlin](https://codeberg.org/kevintcoughlin) made their first contribution in [#5309](https://codeberg.org/comaps/comaps/pulls/5309)  
⭐ [@erik-mansson](https://codeberg.org/erik-mansson) made their first contribution in [#5307](https://codeberg.org/comaps/comaps/pulls/5307)  


----

Thank you for reading this edition of *This Month in CoMaps*! Consider [subscribing to our RSS feed](https://www.comaps.app/rss.xml) to stay updated with our latest news.

If you enjoy using CoMaps, also consider [donating](https://www.comaps.app/donate/) or [getting involved with the community](https://www.comaps.app/community/).

