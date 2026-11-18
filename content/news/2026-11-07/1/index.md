---
title: "Release 2026.11.07 - Improved dark mode clarity and Android Auto perspective/UI improvements"
description:
date: 2026-11-07T10:43:33-00:00
slug: "Release-2026.11.07-release-notes"
taxonomies:
    category: ["Release"]
---

**Available on**: [App Store](https://apps.apple.com/app/comaps/id6747180809) | [F-Droid](https://f-droid.org/packages/app.comaps.fdroid/) | [Flathub](https://flathub.org/en/apps/app.comaps.comaps) | [Codeberg](https://codeberg.org/comaps/comaps/releases/tag/v2026.11.07-16). *Available soon on Google Play*.

## Highlights

Some of the highlights of this release are:

- Improve dark mode clarity with more legible text and roads - by @eatham
- Android Auto: Improve Android Auto UI, fix accidental routing touches - by @kvanrooyen
- Android: Show POI branch names - by @eisa01
- Android: Add route preview mode during route planning (tap a route step to zoom to it) - by @LMBishop
- CarPlay: Overhaul turn guidance system to fix many bugs - by @eisa01
- Split Tanzania, Vietnam, Malaysia, China Guangdong into smaller maps - by vng and Emilevillette via OM and @pastk 
- Routing engine optimisations - by @marko and @W-Floyd
- New POIs and styles: Music Venue, Cafeteria, Game Shop, Swimming Pool, Customer Parking, Club, Research Institute, Storage Rental - by @matheusgomesms, @scarcekoi, @Parakeet3850, @patepelo

## Full release notes

These release notes are also [available on Codeberg](https://codeberg.org/comaps/comaps/releases/tag/v2026.11.07-16).

**General/Map:**

 - OpenStreetMap data as of November 5 (make sure to update for all changes to have effect)
 - Improve dark mode contrast: more legible text and roads by @eatham 
 - Add Hazardous Areas by @ldcuof 
 - Distinguish Vegetarian "options" vs "only" by @osmuser63783 
 - Stop saying "go straight" when crossing large roads by @esposm03 
 - Split Tanzania, Vietnam, Malaysia, China Guangdong into smaller maps by vng and Emilevillette via OM and @pastk 
 - Show second-hand information on place page by @dmlls 
 - “?reviews” search keyword, which finds places that have reviews by @mmakowski 
 - New POIs and styles:
    - Music Venue by @matheusgomesms 
    - Cafeteria by @scarcekoi 
    - Game Shop by @Parakeet3850 
    - Swimming Pool Shop by @Parakeet3850 
    - Customer Parking by @matheusgomesms 
    - Club by @patepelo 
    - Research Institute by @matheusgomesms 
    - Storage Rental icon by @scarcekoi 
 - Fix label color for mountain rescue stations by @RamblingBanjo 
 - More outdoor_seating values are recognized by @osmuser63783 
 - Fix cafeterias being tagged as plain fast food by @pastk 
 - Improve long route calculation time by @W-Floyd 
 - Routing engine optimizations by @marko 

**Android:**

 - Add route preview mode during route planning (tap a route step to zoom to it) by @LMBishop 
 - Show POI branch names by @eisa01 
 - Star rating fix: ratings no longer always show 5 stars on older Android versions by @mmakowski 
 - Make review text selectable by @mmakowski 
 - Disable checkbox on the first screen when location is not available by @kvanrooyen 

**Android Auto:**

 - Improve car/phone switching by @libf-de 
 - Improve Android Auto UI, fix accidental routing touches by @kvanrooyen 
 - Fix label size increasing to 400% by @kvanrooyen 

**CarPlay:**

 - CarPlay turn guidance rewrite: Solves several bugs, e.g., instructions being lagged, next turn showing wrong direction, next turn only working with TTS on by @eisa01 
 - Fix arrow position when starting navigation from dashboard and moving to main view by @eisa01 
 - Fix category search started on phone continuing in background on CarPlay by @eisa01 
 - Handle cars that limit list displays in CarPlay when driving, show notice that lists are limited by @eisa01 
 - Solve long-standing crash in CarPlay search results and move to non-deprecated list methods by @eisa01 
 - Fix invisible settings icons on iOS 27 in CarPlay by @eisa01 
 - Remove stairs routing option on CarPlay by @eisa01 

**iOS:**

 - Prevent negative map scale when zooming too fast with a trackpad by @eisa01 

**Qt / desktop:**

 - Fix errors on map updates on macOS by @esposm03 
 - Fix crash on search due to missing categories_brands.txt by @eisa01 

## Translations

Thank you to everyone who translated CoMaps since the October release!

Release notes and store descriptions:

Bovi887, Cooper_Wire, desoter, dmlls, gedankenstuecke, Growebis, IanGandol, justbispo, mmakowski, pastk, shuuji3

App translations on Codeberg Translate (Weblate):

alexgabi, artnay, Bemoz, Benitardem, Bovi887, Burak Onder, codebergian42, Codimp, Coehill, Diabolo68, dmlls, dobridabar, ERYpTION, Fjuro, gaaelgarciia, GalaxyShard, gallegonovato, gideone, Ginsway, Growebis, impromptux, Ivana47, JanezPavelZebovec, javnik, jimkats, jmontane, joandg, Jonatan Nyberg, laspun, ldmpub, Linus_W_Frische, LiveTracks, Mannivu, map-per, matheusgomesms, mattanelkaim, maxihuenu, Mickael81, muralito, nebras, osmuser63783, patepelo, phama, Porrumentzio, Priit Jõerüüt, scarcekoi, shuuji3, snchart, SPLATPLAYS, Stephan-P, sunsand, Supaplextw, thesupertechie, Undecided, WEB0, Weicat, ygorigor, 玄枵
