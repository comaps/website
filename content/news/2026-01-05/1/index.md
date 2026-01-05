---
title: "How CoMaps focuses on Privacy"
description: "Some technical changes CoMaps made to protect your privacy"
date: 2026-01-05T09:00:00-00:00
slug: "comaps-focuses-privacy"
taxonomies:
    category: ["Blog"]
extra:
    author: "jeanbaptisteC"
    author_username: "jeanbaptisteC"
    keywords: ["privacy", "FOSS", "open source"]
---

From the beginning of the project, we have chosen to preserve the privacy of our users. To do so, we have implemented technical changes in our app. Here, we want to share some of those changes that helped improve your privacy:

## Removing Kayak links 

On the first day of the project, as [the second pull request](https://codeberg.org/comaps/comaps/pulls/2), we have decided to remove this feature from the app and our map generator. Instead, we prefer using transparent [ways like OpenCollective to collect donations](https://opencollective.com/comaps) and promote open data over proprietary/closed services. We are glad to see that Organic Maps has also removed Kayak links in their app.

## Removing the dependency on Google Firebase 

The original code used Google Firebase to distribute test builds to users and to test the app via a robot on virtual devices. To reduce our app's dependency on Google and the use of non-free source code, we [have removed this dependency](https://codeberg.org/comaps/comaps/pulls/94). Instead, we now publish our test builds directly on our [codeberg repository]( https://codeberg.org/comaps/comaps/issues/2998).

## Replacing Google Fused Location Services by microG implementation 

Initially, we have used the Google Fused Location Services to improve the quality of location signal. 
The problem is that we don't know how exactly Google uses this data, e.g. if they can follow users movements like is the case on Google Maps. 
To preserve privacy, we have decided to [use the microG implementation, which is an open source solution and disable Google Fused Location Service by default in the app settings](https://codeberg.org/comaps/comaps/pulls/100), to not potentially track locations without consent. 
The MicroG implementation can still communicate with Google servers but the code is open source and some options can be disabled in micro G Play Service settings.

## Rewriting the meta server

As our upstream project, w use a "meta-server", which optimizes which servers or "content delivery networks" (CDN) are used to distribute our maps to your app. 
The upstream implementation at least historically also uses it to enable features in the app from the server, like replacing the app icon by a Christmas tree during the holidays or import donation URLs from a remote server to ask for donations in-app. 
To improve our transparency and the security of our app and metaserver, we have instead implemented our own [meta server](https://codeberg.org/comaps/meta-php), which is only used to choose the best CDN based on the location of users as determined by their IP address.
At the same time, we [removed the corresponding functions](https://codeberg.org/comaps/comaps/pulls/751) [from the app as well](https://codeberg.org/comaps/comaps/pulls/755). 
Lastly, we have also reduced logs recorded by the server.

To furthermore remove the reliance on CoMaps, and provide ways to distribute maps in a more private way, the CoMaps android app can now also work without a meta server, by rather specifying a custom server address to get same maps data.
in this way, users can even self-host their map servers if they wish.

To further improve CoMaps, both around privacy related features but also generally, we are always looking for more people who can help contribute with relevant coding. If that sounds like you, get in touch with us on Zulip.
