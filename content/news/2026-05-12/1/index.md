---
title: "Celebrating CoMaps' first birthday"
description: CoMaps turns one, and we give an update on the achievements and state of the project
date: 2026-05-12T09:00:00-00:00
slug: "celebrating-the-first-comaps-birthday"
taxonomies:
    category: ["Announcement"]
---

On May 12, we are celebrating our first birthday, as this is the date at which *CoMaps* was officially announced!
Since then, a lot has happened and we want to take this opportunity to celebrate all the progress together. In this post, we'll walk you through how our community has evolved, how the CoMaps apps have changed, how we've integrated with the wider OpenStreetMap ecosystem, and a bit about what might be next for us!

## Our community

Since before CoMaps was announced, we have put our community at the center of what we are doing and continue to do so in different ways:

Already back in May 2025, we did a community vote [to pick our name](https://codeberg.org/comaps/Governance/issues/34).
We followed this up with a vote to [decide a color scheme](https://codeberg.org/comaps/Governance/issues/56) in June.
And for our logo, we even did [multiple rounds of feedback](https://codeberg.org/comaps/Governance/issues/23) prior to the final vote.
Michael, who designed the winning logo even [wrote a nice blog post about the experience](https://www.comaps.app/news/2025-09-06/how-i-designed-the-logo-for-comaps-and-lessons-it-taught-me/).

Over the past 12 months, our community has also grown quite a bit, across all potential ways of engaging:
Around 100 people have committed code and documentation to our [main Git repository](https://codeberg.org/comaps/comaps), where much of the work happens.
And to make sure that CoMaps is accessible for people across many languages, over 270 translators have been [actively translating](https://translate.codeberg.org/projects/comaps) the apps into more than 80 languages, 30 of which are already finished!

There are also many more ways to engage and be part of the community:
Across [our community channels](https://www.comaps.app/community/) there are thousands of people that join us in reporting bugs, suggesting features via Codeberg, testing early app releases and many more ways.
One of our main community channels, the connected Matrix/Telegram room for the English language brings together more than 1200 people.
And for many languages, including Spanish, French, German, Turkish or Russian, there are language-specific groups too!
Within our developer Zulip space, which is used for some of the nitty-gritty operational questions, has around 50 active users.

All of this has resulted in an even larger community of CoMaps users:
Across all platforms, **CoMaps is already used by around 250,000 people**, and that number keeps growing!

Over the year, people have also asked us if it's possible to buy some CoMaps merchandise, for example T-Shirts, hats or stickers.
To help with that, we have created [a small *RedBubble* store](https://www.redbubble.com/people/comaps-merch/shop), where you can find some of those things.
If you live in a place to which they easily deliver, this can be an easy way to get some merch.
We as a project **intentionally do not earn any money from this** to make it as cheap for you as possible.
And if *RedBubble* doesn't work for you or your location:
All of those designs are [openly licensed on Codeberg](https://codeberg.org/comaps/communication/src/branch/main/merch-designs), so you can download them and use them with our favorite local supplier!



## New features and improvements

Collectively, our all-volunteer community has put in a lot of effort into improving the CoMaps apps:
Since May 2025, around 2500 commits were made to the application, covering bug fixes as well as new features – big and small.

One **particular big feature, that was released just in time to be a small birthday present**, is that CoMaps now allows updating the maps independently!
Previously, the map and app versions were tightly linked – meaning that users needed to first update the app itself, before being able to get newer maps.
While historically done to ensure that apps and maps were compatible, it meant new maps always needed a new app release, which takes volunteer time and waiting for app store reviews.
**With this new change we can get you new maps more often**.
We are aiming to release updated map files every week.
You can [read a bit more about this process in our release notes](https://www.comaps.app/news/2026-05-06/Release-2026.05.06-release-notes/).
And when you're reading this, new maps – released on May 11 – are available, just press *"Check for updates"* to make them appear in your app!

But there have been more new features and improvements in the past 12 months, both visible and under the hood:

* The information page for points of interest have gotten a big overhaul. Beyond modernizing their look, they now include a lot more info: Links to *Panoramax* street-level imagery; showing when points of interest were last updated; including more details like usage fees, availability of organic options, population sizes; and much more
* An improved routing engine for cars and bicycles that takes into account turns, traffic lights, stop signs, conditional restrictions and more, while adding more optional routing restrictions like avoiding stairs or paved roads
* Expanding our language support, including for Wikipedia articles: CoMaps now includes them in 17 languages, up from an initial 5!
* The map of CoMaps has also been enriched, by adding around 100 new objects and points of interest across different categories. This includes detailed displays of chargers for electric vehicles; community and emergency services, including soup kitchens, emergency access points and lifebuoys; more types of sports pitches; and a wide range of shops and services!
* While less visible, a lot of work has also gone into ensuring that CoMaps is [as privacy respecting as possible](https://www.comaps.app/news/2026-01-05/comaps-focuses-privacy/) and into [modernizing our code-base](https://www.comaps.app/news/comaps-technical-changes/), to ensure that CoMaps will remain maintainable and usable for years to come.

We have also worked on improving how you can get maps on your devices:
Since December 2025, the Android version of CoMaps allows [using custom/self-hosted map servers](https://www.comaps.app/news/2025-12-19/Release-2025.12.19-notes/), helping to avoid being locked-in into our map servers.
And to make sure that the *official* CoMaps servers get maps to you as fast as possible, a global network of servers - many which are [run and maintained by community members](https://www.comaps.app/news/2026-04-23/3-million-daily-requests-zero-cdn-optimizing-comaps-maps-delivery/) - helps deliver maps.

## Our relationship to OpenStreetMap

CoMaps as a project would not be possible without the tireless efforts by the global OpenStreetMap (OSM) community which collectively generates the very detailed and high-quality geographic data that's the base for our maps.
Which is why being a good citizen of that community is one of the core values of CoMaps and why many of the CoMaps contributors are also very active in the OSM community.
It is also why we keep working on improving how we can give back and contribute to OSM.

A big part of these efforts, is making sure that CoMaps works well as an editor for OSM, and so a lot of work in the past 12 months has also gone into improving this aspect of the apps.
We have expanded the range of POI and objects that can be added to OSM right from the app, thus allowing every CoMaps user to be more active OSM contributors.
And more than 7500 CoMaps users have [already taken advantage of this](https://piebro.github.io/openstreetmap-statistics/stats/02_editing_software.html), making nearly 90,000 changes on OSM.

And where directly editing OSM isn't possible, we allow CoMaps users to leave notes in OSM, which can then be resolved using more dedicated OSM editors.
To help with that, we also shared ideas how to [find and resolve CoMaps-generated notes](https://www.comaps.app/news/2025-10-17/improving-osm-notes/).
Similary, we shared some ideas how to [find and resolve mapping errors in the OSM data](https://www.comaps.app/news/2025-10-03/improving-routing-data-osm-errors/).

And where possible, we do [active outreach to share both CoMaps and OSM as part of the broader open mapping ecosystem](https://www.comaps.app/category/events/).

## Recognition

We are very proud that our efforts at creating CoMaps have been recognized in a number of different places:

* CoMaps has been chosen to be the default map application for [iodéOS](https://www.comaps.app/news/2025-08-27/Community-Chosen-CoMaps-is-the-Pre-Installed-Maps-App-on-iod%C3%A9OS/) and [CalyxOS](https://calyxos.org/news/2026/05/04/calyxos-progress-update-4/)
* [*European & Open Source Alternatives* gave us a 9.6 out of 10 trust score](https://www.comaps.app/news/2026-04-15/comaps-gets-a-96-out-of-10-trust-score-from-european-and-open-source-alternatives/), making CoMaps the highest-rated map/navigation app
* [*switching software*](https://switching.software/replace/google-maps/) recommends CoMaps as a Google Maps alternative
* [*is it really foss?*](https://isitreallyfoss.com/projects/comaps/) lists us as being free & open source without reservations

Additionally, CoMaps has been [featured in numerous media articles](/media-coverage/).

## What's next?

Our next year looks as busy as the past one:
As you can [see on Codeberg](https://codeberg.org/comaps/comaps/issues), there are many ideas for improvements, new features and more.

Some contributors are working a lot on getting live traffic information included, while others are working equally hard on getting better public transport data displayed.
Yet others are working on getting open review systems for places included, refreshing how different transport modes are displayed.

But, as CoMaps is 100% made by volunteers, from maintenance and development over communication and outreach to user support, we do not have a timeline for when any of those features will be done.
So the best way to help us to get these things done is by being an active part of the community.
**There is always more work that needs to be done than there are hands**.

While we are currently particularly looking for more iOS developers as our team has a lot more Android developers, you don't need to be a developer to help:
Things like providing user support, improving translations, creating designs, writing blog posts (like this one) or social media posts help out as much and can even free up time in other places.
So if you think any of those are something you can help with, [get in touch](/community/)!


Here's to the next birthday! Happy traveling, biking, hiking, and finding your way!

