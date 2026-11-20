---
title: "How can I set a custom map server for downloads?"
description: "Frequently asked questions for CoMaps application"
taxonomies:
  supportcategory: ["Map Data"]
extra:
  tags: ["Android", "iPhone & iPad"]
  order: 60
---

Since December 2025 for Android and October 2026 for iOS, you can set a custom map server to download new maps from.

**Android users**: You can set a custom map server from the _world overview map download screen_ which you will see after installing _CoMaps_ (this is not present in the Google Play version as the world map is bundled there), or from the bottom of the _Settings_ menu, which allows you to specify a **Custom Map Server** URL.

**iOS users**: You can set a custom map server at the bottom of the _Settings_ menu.

This option can be useful for different use cases. For example, it allows you avoid connecting to servers in regions you would prefer to avoid.
Or if you are having a fleet of devices that run CoMaps but don't want to or cannot download the new maps over and over again from the internet as you are on a bandwidth-restricted or slow connection.
E.g. if you are a humanitarian organisation deploying a team to a remote area, can now set up a local map server and distribute it locally via Wifi, no further connection needed.

The **Custom Server URL** should be an HTTP or HTTPS server that hosts files in the same structure as on our official CDNs. Each version of CoMaps supports a specific _map series_, so you must ensure you have maps available for the versions you wish to support. Currently, the custom server still needs to serve the officially generated maps from CoMaps. 

This strict bundling will change in the future, but is currently in place to ensure that the map and app version are compatible and to prevent malicious maps from making it into the app and causing undesirable behavior.

You can find a list of valid URLs hosted by CoMaps here, under the `$servers` variable in our **meta-php** repository: [https://codeberg.org/comaps/meta-php/src/branch/main/index.php](https://codeberg.org/comaps/meta-php/src/branch/main/index.php)

For help on [how to setup your own map server, read this FAQ entry](/support/how-can-i-host-a-custom-map-server-for-downloads/).

