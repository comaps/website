---
title: "How can I do more advanced map editing?"
description: "Frequently asked questions for CoMaps application"
taxonomies:
  support: ["Map Editing"]
extra:
  tags: ["Android", "iPhone & iPad"]
  order: 100
---

CoMaps includes a simple and easy-to-use editor that you can use to [edit the map](@/support/editing-with-comaps/index.md). The editor is, however, limited and only allows to add and update simple point features, that means no building outlines, roads, lakes, towns, etc. If you want to change something that can not be edited with the built-in editor, this is the right FAQ page to read.

As all map data used in CoMaps comes from [OpenStreetMap (OSM)](https://www.openstreetmap.org), you can directly update the map there. Your modifications will then be included into CoMaps with the next map update.

## OpenStreetMap Editors

For editing OSM, there are several options. If you have a laptop or desktop computer at hand, it's better to use the [iD Editor](https://www.openstreetmap.org/edit) that runs in your browser. The iD Editor is easy for beginners, and a bigger screen, mouse, and keyboard make map editing easier.


#### iD Editor

To edit OpenStreetMap with iD, follow these steps:

1. Create a new account or log in at [openstreetmap.org](https://www.openstreetmap.org)
2. Browse to the location you want to edit on openstreetmap.org and click *Edit* at the top
3. *Start the Walkthrough* and follow the short tutorial that explains the iD Editor
4. Edit the map
5. Upload your changes with the button in the top right

For simpler edits on mobile, you can try [StreetComplete](https://streetcomplete.app/) for Android or [Every Door](https://every-door.app/) for iOS and Android.

For advanced map editing from a mobile device, use [Go Map](https://apps.apple.com/us/app/go-map/id592990211) for iOS or [Vespucci](https://vespucci.io/) for Android. Go Map is easy for beginners, while Vespucci targets more advanced users. LearnOSM provides tutorials for [Go Map](https://learnosm.org/en/mobile-mapping/gomap/) and [Vespucci](https://learnosm.org/en/mobile-mapping/vespucci/).

That's it, welcome to the OSM community!

## What happens with my edits?

Once you press *Upload* your changes are instantly added to the public OSM database. So be considerate when editing. In CoMaps, your changes will be visible after the next monthly map update.

Your e-mail is not published, but other people will be able to see your OSM username. As OSM offers the possibility to discuss changes, you might get questions about your edits from other OSM contributors. You will be notified about this via the e-mail address you used for registering your OSM account. As OSM is a community project that builds on collaboration you should always answer such questions.

## Community and Wiki

OpenStreetMap is a community. If you need help or have any questions you can ask in the [OSM Forum](https://community.openstreetmap.org/c/help-and-support) or take a look at the [OSM Wiki](https://wiki.openstreetmap.org/) documentation.

## Tags - How the OSM data model works

The OpenStreetMap database contains Objects like Nodes, Ways, Areas, and Relations that abstract from real-world features. These Objects have Attributes, so-called Tags to further describe them. A Tag is a Key-Value combination.

As this sounds more complicated than it is we will give an example:
A Restaurant is e.g. mapped as a Node or Area with the Tag ``` amenity=restaurant```. Further Tags like ```cuisine=*``` or ```opening_hours=*``` can then be used for further details.

> Note that the iD editor hides the internal data structure from the users to be more beginner-friendly. But for reading the wiki documentation, having a brief overview of the data structure can be helpful.
In the iD Editor, you can see the Tags that iD is hiding from you by expanding the *Tags* section in the *Edit feature* side panel.
