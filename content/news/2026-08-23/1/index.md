---
title: "CoMaps integration with the wider FLOSS ecosystem"
description: "How we're integrating CoMaps with other FLOSS apps"
date: 2026-08-23T09:00:00-00:00
slug: "comaps-integration-with-the-wider-floss-ecosystem"
taxonomies:
    category: ["Blog"]
authors: ["Leonardo Bishop", "Manuel Marcatili"]
extra:
    authors_codeberg:
        "Leonardo Bishop": "LMBishop"
        "Manuel Marcatili": "mmarca-tech"
---

CoMaps is proud to be a fully free and open source app, and this ideal exists as
one of CoMaps' [core
principles](https://codeberg.org/comaps/Governance#core-principles). Naturally,
it's within our interest to make sure the ecosystem of FLOSS apps can flourish 
and serve as a viable alternative to their proprietary counterparts.
Thus, Android users and enthusiasts who embrace this ecosystem of FLOSS Android 
apps may be pleased to hear that a few of us have working on ensuring CoMaps 
can interoperate well with these other apps, while still continuing to respect 
the user's privacy.

## Gadgetbridge

Gadgetbridge is a free and open-source Android app which allows you to use your
smartwatches, headphones, and other Bluetooth devices without having to use your
manufacturer's proprietary app. Starting with Gadgetbridge v0.93.0, you can now
use CoMaps as a navigation data provider, meaning users with a [supported
smartwatch](https://gadgetbridge.org/basics/features/navigation/) may enjoy 
turn-by-turn directions on their wrist in a fully FLOSS solution.

At the time of writing, this setting can be found in Settings > External
Integrations > Navigation. Enabling it will enable it for all supported
connected devices.

{{ <image src="02-infinitime.jpg" classes="max-w-50" caption="The navigation app running on InfiniTime, with instructions from CoMaps"/> }}

## OpenVitals

OpenVitals leverages Android's Health Connect framework to bring you a complete
dashboard of all your health and wellness data, so you can enjoy a free and open 
source alternative without the need to share it with external companies. 
It also allows you to record outdoor activities using CoMaps 
as a [navigation context provider](https://docs.openvitals.health/features/comaps-navigation-context),
so you can keep an eye of your activity metrics 
alongside the route of your bike ride or hiking trail.

At the time of writing, you can find it under Settings > Activities > Comaps 
navigation guidance. Enabling it will give you the ability to show the route set in 
CoMaps over your live activity. 

{{ <image src="03-openvitals.png" classes="max-w-40" caption="CoMaps guidance within OpenVitals"/> }}

## Private by default

Being an app which respects its users, CoMaps only provides this data to other
apps if the user allows it. To that end, you must grant each app a special 
permission provided by CoMaps. 

If you're a FLOSS developer and want to build your own dashboards, widgets, et
cetera with CoMaps' data, you can find documentation on 
[Codeberg](https://codeberg.org/comaps/comaps/wiki/Content-Provider)!

