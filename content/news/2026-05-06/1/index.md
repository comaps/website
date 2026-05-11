---
title: "Release 2026.05.06 - Update your maps without updating the app"
description:
date: 2026-05-06T09:00:00-00:00
slug: "Release-2026.05.06-release-notes"
taxonomies:
    category: ["Release"]
---

**Available on**: [Google Play](https://play.google.com/store/apps/details?id=app.comaps.google) | [App Store](https://apps.apple.com/app/comaps/id6747180809) | [F-Droid](https://f-droid.org/packages/app.comaps.fdroid/) | [Flathub](https://flathub.org/en/apps/app.comaps.comaps) | [Codeberg](https://codeberg.org/comaps/comaps/releases/tag/v2026.05.06-11)

This release brings a feature that has long been requested by many: **The ability to update the maps inside the CoMaps app, without having to also update the app version**.

What this means:

* We can now update our maps more frequently, as we do no longer have to build a new app release to get new maps out
* We aim to release updated maps roughly every week, as we are not relying on app store approvals
* You should still keep the CoMaps app updated too, to benefit from new features and bug fixes 
* Older CoMaps app versions might become incompatible with newer maps versions at some point, in such cases you still have to update the app 

For some background on this change:
So far, the *CoMaps* app and the map version were coupled to each other.
This meant having to first update the app, before being able to download the latest maps.
This was made historically to ensure that the map files were always compatible with the app and to simplify workflows and ease maintenance.
But it also meant releasing new maps was not as flexible.
It meant making a new app release, which takes time and, at least in case of Google Play and the iOS store, that it needed to also pass their review process before being available.
With this change, we can generate and deliver map updates without this extra step.
But: our map format, supported POI and other map related efforts keep improving, so at times, the minimum app-version requirement for newer maps will increase.
So you should still update your CoMaps app to the latest releases too.

## Other changes of this release

Additional changes include:

- "Check for updates" button in the download screen to get new maps without updating the app (weekly map updates are planned) by @NoelClick, @pastk, @matheusgomesms, @zyphlar
- OpenStreetMap data as of May 4
- When navigating show in-route traffic lights only, but with bigger icons by @matheusgomesms
- Android: Search categories displayed as grid by @jeanbaptisteC 
- Android: privacy setting to enable system keyboard incognito mode by @jeanbaptisteC
- iOS: Added track recording button in navigation mode drawer by @matheusgomesms
- Slovenia specific road shields by @soshial
- Indonesian Wikipedia articles by @wirabdillah 

...and many other improvements, see [the full list](https://codeberg.org/comaps/comaps/releases/tag/v2026.05.06-11)
