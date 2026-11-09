---
title: "This Month in CoMaps: October 2026"
description: "A roundup of all the latest news from this month in CoMaps"
date: 2026-10-31T00:00:00-00:00
slug: "this-month-in-comaps-october-2026"
taxonomies:
    category: ["Blog"]
authors: ["thesupertechie", "Leonardo Bishop"]
extra:
    authors_codeberg:
        "thesupertechie": "thesupertechie"
        "Leonardo Bishop": "LMBishop"
    keywords: ["This Month in CoMaps"]
---

Welcome to the second edition of *This Month in CoMaps*! This edition features some new work on the dark map style, the implementation of the long-requested saved track navigation, the adoption of a new CoMaps constitution, and more. The next version of CoMaps is expected to be released in the coming week.

## Features


Users of the dark map style have long complained that it can be difficult to use. Both [Ethan (@eatham)](https://codeberg.org/eatham) and [@eisa01](https://codeberg.org/eisa01) have been independently working on improvements to this, with changes from the former ending up in the [most recent test build](https://codeberg.org/comaps/comaps/issues/5544) and primed for the next release. This, however, is an iterative process - feedback is appreciated!

{{ <image_fig src="02-dark-mode.png" caption="Before and after shown side-by-side" /> }}

For those who like to step through their route before navigating, [Leonardo (@LMBishop)](https://codeberg.org/LMBishop) has been working on a new route preview mode for Android. To access it, you can open the Preview function after the app has calculated a route and tap on an instruction. Doing this will zoom in on the manouvre and allow you to cycle through the other turns on the map.

{{ <video_fig src="03-route-preview.webm" size="small" caption="Stepping through a route"/> }}

[Manuel (@mmarca-tech)](https://codeberg.org/mmarca-tech) has been working on the [long requested feature](https://codeberg.org/comaps/comaps/issues/251) to be able to navigate along a saved track. This feature works by matching the the saved tracks to existing route geometry to be able to use with existing CoMaps navigation. This means you could build a route using a third-party router, or using CoMaps desktop, and use CoMaps on your mobile device for turn-by-turn directions! This feature is currently targeted for the December release.

Finally, both Android Auto and CarPlay have seen some love from [Keagan (@kvanrooyen)](https://codeberg.org/kvanrooyen) and [@eisa01](https://codeberg.org/eisa01) respectively, with the former now featuring a new speed widget and perspective improvements, and the latter undergoing a significant turn guidance rewrite to fix incorrect next turn directions.

{{ <video_fig src="04-aa-free-drive.webm" caption="The speed widget appearing in free drive mode"/> }}

## Governance

Following a vote from the original eight founders of CoMaps, the community has moved to officially adopt a [new constitution](https://codeberg.org/comaps/Governance/pulls/175). This means CoMaps is now in a "transition period" as community members continue discussions with the Software Freedom Conservancy to establish CoMaps as a project under their umbrella. The original eight founders will continue to serve a similar backstop role until this transition is completed. 

There now also exists a formal membership structure under the new constitution, for which initial seeding has begun amongst existing contributors. Once this has completed, membership applications for new community members are expected to open soon after. 

You can read the [full text of the consitution here](https://codeberg.org/comaps/Governance/src/branch/main/CONSTITUTION.md).

## Community news

This month, CoMaps was presented at two separate conferences by our contributors [Bastian (@gedankenstuecke)](https://codeberg.org/gedankenstuecke) and [Diego (@dmlls)](https://codeberg.org/dmlls), who both also presented State of the Map [earlier this year](https://www.comaps.app/news/2026-09-14/comaps-at-state-of-the-map-2026/). Bastian showcased the app at State of the Map Latam in Mexico City, and Diego did the same at Akademy-es in Madrid. You can read more about the events of SotM Latam in Bastian's [article on amerika21](https://amerika21.de/2026/11/291980/lateinamerika-kollaborative-kartografie) (available in German).

<figure>
<div class="mastodon-embed-container">
<blockquote class="mastodon-embed" data-embed-url="https://floss.social/@kde_espana/117495784559359349/embed" style="background: #FCF8FF; border-radius: 8px; border: 1px solid #C9C4DA; margin: 0; max-width: 540px; min-width: 270px; overflow: hidden; padding: 0;"> <a href="https://floss.social/@kde_espana/117495784559359349" target="_blank" style="align-items: center; color: #1C1A25; display: flex; flex-direction: column; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Roboto, sans-serif; font-size: 14px; justify-content: center; letter-spacing: 0.25px; line-height: 20px; padding: 24px; text-decoration: none;"> <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 79 75"><path d="M63 45.3v-20c0-4.1-1-7.3-3.2-9.7-2.1-2.4-5-3.7-8.5-3.7-4.1 0-7.2 1.6-9.3 4.7l-2 3.3-2-3.3c-2-3.1-5.1-4.7-9.2-4.7-3.5 0-6.4 1.3-8.6 3.7-2.1 2.4-3.1 5.6-3.1 9.7v20h8V25.9c0-4.1 1.7-6.2 5.2-6.2 3.8 0 5.8 2.5 5.8 7.4V37.7H44V27.1c0-4.9 1.9-7.4 5.8-7.4 3.5 0 5.2 2.1 5.2 6.2V45.3h8ZM74.7 16.6c.6 6 .1 15.7.1 17.3 0 .5-.1 4.8-.1 5.3-.7 11.5-8 16-15.6 17.5-.1 0-.2 0-.3 0-4.9 1-10 1.2-14.9 1.4-1.2 0-2.4 0-3.6 0-4.8 0-9.7-.6-14.4-1.7-.1 0-.1 0-.1 0s-.1 0-.1 0 0 .1 0 .1 0 0 0 0c.1 1.6.4 3.1 1 4.5.6 1.7 2.9 5.7 11.4 5.7 5 0 9.9-.6 14.8-1.7 0 0 0 0 0 0 .1 0 .1 0 .1 0 0 .1 0 .1 0 .1.1 0 .1 0 .1.1v5.6s0 .1-.1.1c0 0 0 0 0 .1-1.6 1.1-3.7 1.7-5.6 2.3-.8.3-1.6.5-2.4.7-7.5 1.7-15.4 1.3-22.7-1.2-6.8-2.4-13.8-8.2-15.5-15.2-.9-3.8-1.6-7.6-1.9-11.5-.6-5.8-.6-11.7-.8-17.5C3.9 24.5 4 20 4.9 16 6.7 7.9 14.1 2.2 22.3 1c1.4-.2 4.1-1 16.5-1h.1C51.4 0 56.7.8 58.1 1c8.4 1.2 15.5 7.5 16.6 15.6Z" fill="currentColor"/></svg> <div style="color: #787588; margin-top: 16px;">Post by @kde_espana@floss.social</div> <div style="font-weight: 500;">View on Mastodon</div> </a> </blockquote> <script data-allowed-prefixes="https://floss.social/" async src="https://floss.social/embed.js"></script>
</div>
<figcaption>KDE España post the behind the scenes of the CoMaps talk at Akademy-es</figcaption>
</figure>

Lastly, a few days ago [Maciek (@mmakowski)](https://codeberg.org/mmakowski) wrote about Mangrove reviews integration in their blog post [*Place Reviews in CoMaps*](https://www.comaps.app/news/2026-10-27/place-reviews/). It details how the reviews work, some fun statistics, and future plans for the feature. If you haven't seen it, it is well worth a read!

## New contributors

<!-- tst note: Name and pronouns are sourced from each user's profile. If they haven't listed their pronouns, I just use they/them. If the user has their name set in Zulip but not in Codeberg, I use their name out of an abundance of caution. -->
* [James Addison (@jayaddison)](https://codeberg.org/jayaddison) made his first contribution in [#5337](https://codeberg.org/comaps/comaps/pulls/5337)
* [@esposm03](https://codeberg.org/esposm03) made their first contribution in [#5340](https://codeberg.org/comaps/comaps/pulls/5340)
* [William Floyd (@W-Floyd)](https://codeberg.org/W-Floyd) made their first contribution in [#5352](https://codeberg.org/comaps/comaps/pulls/5352)
* [@osmuser63783](https://codeberg.org/osmuser63783) made their first contribution in [#5406](https://codeberg.org/comaps/comaps/pulls/5406)
* [@codebergian42](https://codeberg.org/codebergian42) made their first contribution in [#5420](https://codeberg.org/comaps/comaps/pulls/5420)
* [@Parakeet3850](https://codeberg.org/Parakeet3850) made their first contribution in [#5424](https://codeberg.org/comaps/comaps/pulls/5424)
* [@libf-de](https://codeberg.org/libf-de) made their first contribution in [#5456](https://codeberg.org/comaps/comaps/pulls/5456)
* [Cédric Bosdonnat (@cbosdo)](https://codeberg.org/cbosdo) made their first contribution in [#5458](https://codeberg.org/comaps/comaps/pulls/5458)
* [@RamblingBanjo](https://codeberg.org/RamblingBanjo) made their first contribution in [#5459](https://codeberg.org/comaps/comaps/pulls/5459)
* [@scarcekoi](https://codeberg.org/scarcekoi) made their first contribution in [#5503](https://codeberg.org/comaps/comaps/pulls/5503)

----
	
Thank you for reading this edition of *This Month in CoMaps*! Consider [subscribing to our RSS feed](https://www.comaps.app/rss.xml) to stay updated with our latest news.

If you enjoy using CoMaps, also consider [donating](https://www.comaps.app/donate/) or [getting involved with the community](https://www.comaps.app/community/).
