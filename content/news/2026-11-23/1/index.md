---
title: "A New Look for CoMaps Web"
description: "CoMaps Web has been rewritten from the ground up with a fresh look and new features."
date: 2026-11-23T19:06:06-00:00
slug: "new-comaps-web"
taxonomies:
    category: ["Blog"]
authors: ["CubeOfCheese"]
extra:
    authors_codeberg:
         "CubeOfCheese": "CubeOfCheese"
    keywords: ["comaps web", "location sharing", "web app"]
---

This is always frustrating: I'm going to hangout with my friend and want to send them the restaurant to meet up at. Wait. Do they use Apple Maps or Google Maps? Maybe I should just send them coordinates. No, they probably don't know what to do with the coordinates. 🫤😮‍💨

CoMaps has had a link sharing feature, but it has long been neglected and was only capable of sharing coordinates, which for a lot of people is not useful.

So we set out to improve it and rewrote it from the ground up. A few days ago we launched V1 of the new and improved CoMaps Web link share.

# Highlights
- Ability to open the location in other map apps
- Improved map styles
- Improved UI
- More coordinate options
- Right to left language support on the map
- Fallback map for hardened browsers

# How It Works
1. In the CoMaps app, after selecting a location, you can hit the share button.

{{ <image src="app-share-button.png" alt="Screenshot of CoMaps app with a red arrow and circle highlighting the share button" classes="max-w-40 center" /> }}

2. This generates some text with the link that you can send to your friend.

{{ <image src="text-message.png" alt="Screenshot of CoMaps app with a red arrow and circle highlighting the share button" classes="max-w-40 center" /> }}

3. When they open the link, they will see the location on the map and be able to open the location in their map app of choice (more options coming soon) or copy the coordinates.
{{ <image src="comaps.at.png" alt="Screenshot of CoMaps Web on mobile showing Victory Caffe on the map. There are two main buttons: 'Open In' and 'Copy As'" classes="max-w-40 center" /> }}

{{ <image src="open-in.png" alt="Screenshot of CoMaps Web with Open In menu active. Lists CoMaps, Cartes.app, Google Maps, Apple Maps, OpenStreeMap" classes="max-w-40 center"/> }}

{{ <image src="copy-as.png" alt="Screenshot of CoMaps Web with Copy As menu active. Lists a variety of copyable coordinate options" classes="max-w-40 center" /> }}

{{ <image_fig src="desktop-dark-mode.png" caption="CoMaps Web as viewed on desktop and with dark mode enabled" alt="CoMaps Web as viewed on desktop and with dark mode enabled. The location displayed is Victory Caffe" /> }}

Now you and your friend can both head to the restaurant without worrying about coordinates or which map app you each use. 
FYI Victory Caffe is one of my favorite restaurants; here's the link: https://comaps.at/0jkXRrQtf5/Victory_Caffe 
Enjoy :)
# The Future
## V2
Our goal for V2 is to enhance the location sharing experience as much as possible. Our planned enhancements are:
- Internationalization (including right to left language support in the interface)
- Click on new locations
- Displaying the address of the shared location

We will definitely need help with translating soon, so please reach out if you would like to help with that.
## Beyond
In the long term, we would like to grow comaps.at into a full fledged online web map with search and routing and the whole enchilada. In the meantime, we're focusing on features that will best complement the main CoMaps app.
# Contributors
Thank you to everyone who contributed to the launch of CoMaps Web V1!
If you are interested in helping us for V2 and beyond for coding, testing, or translating, check out our [code repo](https://codeberg.org/comaps/webapp) or reach out to us on [Zulip](https://codeberg.org/comaps/comaps/src/branch/main/docs/CONTRIBUTING.md#team-messaging).
## Code Contributors
- [@CubeOfCheese](https://codeberg.org/CubeOfCheese)
- [@thesupertechie](https://codeberg.org/thesupertechie)  
- [@eatham](https://codeberg.org/eatham) 
- [@zyphlar](https://codeberg.org/zyphlar) 
- [@scarcekoi](https://codeberg.org/scarcekoi) 
- [@etorrano](https://codeberg.org/etorrano) 
- [@shuuji3](https://codeberg.org/shuuji3)
## Issue Reporters
- [pastk](https://codeberg.org/pastk)
- [patepelo](https://codeberg.org/patepelo)
## Testers
- [gekeleda](https://codeberg.org/gekeleda)
- [esposm03](https://codeberg.org/esposm03)
- [Viktor06](https://codeberg.org/Viktor06)
- [Brokenpeas](https://codeberg.org/Brokenpeas)
- [Growebis](https://codeberg.org/Growebis)
## Design
- [Viktor06](https://codeberg.org/Viktor06)