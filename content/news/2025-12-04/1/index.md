---
title: "Mapping offline with CoMaps and Every Door"
description: "How to contribute to OpenStreetMap when off the grid"
date: 2025-12-04T10:06:00-03:00
slug: "mapping-offline-with-comaps-and-everydoor"
taxonomies:
    category: ["Blog"]
extra:
    author: "Bastian Greshake Tzovaras"
    author_username: "gedankenstuecke"
    keywords: ["openstreetmap", "osm", "offline", "mapping", "everydoor", "every door"]
---

*This blog post was [originally published on my blog](https://tzovar.as/offline-mapping/) on November 21, 2025, under a CC BY-SA license.*

For the first half of November, I've been in Peru to do some hikes close to Cusco with friends:
First, we did a 5 day trek to the Inca site of [Choquequirao](https://en.wikipedia.org/wiki/Choquequirao) and back.
After a day and a half of rest back in Cusco, we then did the 4-day Inca trail to Machu Picchu as well.
Of course, I wanted to use those opportunities to do some surveying and mapping for [_OpenStreetMap_](https://www.openstreetmap.org) (OSM) along the way as well.
But there are (at least) two potential issues when doing so during multi-day hikes into at least somewhat remote areas:
Having internet connectivity & managing phone battery levels.

To give some context about the locations in question:
Similar to Machu Picchu, Choquequirao is tucked away on the side of a mountain, surrounded by forests.
But unlike its sister site, there is no way to reach that doesn't involve hiking 25 km as first descending and then climbing 1,600 meters
(That is one way, you then do the same in reverse to get back).
Given this geography, there's very little to no internet connectivity along the way, which makes live-mapping very hard.
And while the Inca trail is more touristy, even along it there's ~2 days where there's no connectivity.
Furthermore, most of the campgrounds one encounters have limited if any electricity to recharge batteries as well.

To nevertheless be able to survey and contribute, I used a mix of strategies:
Firstly, as I was recording the actual hiking paths with my [Garmin _Fenix_ watch](/updating-personal-api/), I got GPX tracks of our routes somewhat as a side effect.
On a full charge, and with a bit of integrated solar charging, it can record GPS tracks for ~24 hours.
And similarly, by just taking holiday snapshots (as well as some more mindful surveying pictures) along the route using my phone, I created some geolocated reference images too.
That left the question of how to more directly contribute to OSM, for which I settled for a combination of [_CoMaps_](https://www.comaps.app/) and _[Every Door](https://every-door.app)_.

_CoMaps_ is mainly a map & navigation app that is based on OSM and is available for iOS & Android.
It works with maps that are fully offline after the initial download.
This in itself was already super useful:
While we had guides for our treks, it was super useful to be able to quickly pull out a map to check what a given mountain peak we were seeing was - and even read the associated offline Wikipedia article.
Or being able to check the current or remaining elevation.

Beyond looking at OSM data, _CoMaps_ also has a (simple) OSM editor, that allows adding & editing points of interest (POI), as well as leaving notes on OSM.
And as _CoMaps_ is an _offline-first_ app, it works well offline too:
It will queue your edits & notes and keep them safe until you're back online, at which point the data is sent over to OSM.

{{ image(src="2025-11-21-comaps.jpeg" classes="max-w-40") }}

While this approach works well for many common POI, _CoMaps_ is by design limited to more common objects, to keep things simple.
To be a bit more flexible, I also wanted to use _Every Door_, which is a more powerful OSM editor designed specifically for surveying.
Until recently, it didn't work super well for pure offline-use, as the background map/satellite layers would not easily cache predictably.
Luckily, [_Every Door 7.x_ was released in September and has changed this](https://every-door.app/guide/releases/7.0/)!

This version has two changes that make fully working offline very easily possible:
Firstly, one can now optionally work with vector tiles instead of just the previous raster tiles, thanks to the new plugin architecture.
The vector tiles are significantly smaller, so it's more feasible to have them available offline on a phone for larger regions – which comes at the cost of slower map-rendering speeds.
Secondly, the 7.x version of _Every Door_ also allows managing its offline-available data.
One can now select areas for which both the OSM data itself and the raster/vector tiles (or even satellite images) should be stored offline. 

{{ image(src="2025-11-21-everydoor.jpeg" classes="max-w-40") }}

Once downloaded, the background layer and OSM data are persistently stored, allowing browsing the corresponding regions in _Every Door_ without any connectivity.
Unlike _CoMaps_, _Every Door_ does not automatically push changes back to OSM, instead it requires actively pressing the _Upload_-button.
This is nice for prolonged offline-use, as one can then submit one larger changeset, which one can even annotate with hashtags.

Now that we have ways to collect and edit data offline on the trail, **what about battery life**:
Given the assumption that there's no connectivity during the trek, the biggest battery saving comes from enabling airplane mode to disable the mobile radios.
Otherwise the radios would continuously try to find and connect to cell towers, sucking up the battery.
Using the phone otherwise for taking pictures and mapping with _CoMaps_ & _Every Door_, that alone helped bring down the battery use to around ~30-35% of battery capacity in a hiking day.

To further minimize battery use, I just switched off my phone in the evening, only turning it back on the next morning.
Both _CoMaps_ and _Every Door_ handle a cold restart perfectly fine without losing the already downloaded/queued data.
With that, my phone could easily last 2 days, maybe even a bit more.
I carried a power bank to top up my phone every two days, as well as recharging my _Garmin_ watch to continue my GPS recordings too.
I didn't have any _battery anxiety_ with this approach, leaving my (20,000 mAh) power bank more than half-full after the 5 days of hiking.

Overall, this was my first time trying to do some surveying while hiking in (somewhat) off-the-grid locations that are mostly without internet connectivity and electricity.
And I wasn't sure how well it would work, but it turns out **_CoMaps_ and _Every Door_ handled contributing in that way really well**: 
Once we came back to a place with stable WiFi, I uploaded all edits via both apps without any issues.
And when I arrived back home, I used the GPS Tracks to adjust some paths that I had noticed as being slightly wrong along the way and uploaded some images to [Panoramax](https://tzovar.as/open-source-streetview/) and [Wikimedia Commons](https://commons.wikimedia.org/w/index.php?title=Special:ListFiles/Gedankenstuecke&ilshowall=1).

I will definitely continue using this approach for contributing to OSM on my next hikes, and if you plan to go out into nature you can give it a try too, just download the relevant map regions in advance and you're good to go.
Happy hiking!

