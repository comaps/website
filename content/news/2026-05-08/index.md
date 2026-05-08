---
title: "Making CoMaps future-proof: How we are removing technical debt"
description: ""
date: 2026-05-08T09:00:00-00:00
slug: "comaps-technical-changes"
taxonomies:
    category: ["Blog"]
extra:
    author: "jeanbaptisteC"
    author_username: "jeanbaptisteC"
    keywords: ["technical debt", "sustainability", "improvements"]
---

Between *Maps.Me* and *Organic Maps*, some parts of the CoMaps code are 15 years old and have not been updated recently. For that reason, they continue to use quite old implementations and technologies. This blog post explains some of the different changes that we have done to improve and update the code, to guarantee that we will be able to maintain the project during the next years.

Since beginning of the project, we have regularly worked on these technical aspects of the app, because we are convinced it's an important part to guarantee the continuity of the project: To continue to have an efficient app on most devices, to simplify the maintenance of the project, to reduce bugs on different platforms, to reduce the time required to develop new features, and hopefully also attract more contributors by using more recent technologies.

Some examples of important changes we did for removing the "technical debt" in our codebase:
- Swift UI
Our iOS app initially used the *Objective-C* language, but a few years ago Apple introduced *Swift* as a more efficient and more easy to develop language for the Apple platforms. We have started to switch some parts of our app to this new development language, like the [settings view](https://codeberg.org/comaps/comaps/pulls/791), the [OSM profile view](https://codeberg.org/comaps/comaps/pulls/687) or the [about view](https://codeberg.org/comaps/comaps/pulls/877).

- Material 3
Our Android app uses a lot of custom styles to define the styles of things like buttons, texts, or progression bars.
We have removed most of the custom components to use the components that are available in the *Material* library and have also simplified the app by reducing the number of styles and themes. And to have a better consistency and a more modern UI, we have [switched to Material 3 UI](https://codeberg.org/comaps/comaps/pulls/1943), using our community-chosen color scheme.

- Map generator automation
To reduce the amount of volunteer time needed, and avoid human errors, we have been working hard to [automate all the map generator processes](https://codeberg.org/comaps/comaps/pulls/2333), including downloading data from different sources, generating the map files, and uploading them to our different map delivery servers. We have also done some improvements in our map generation code to [reduce the time required to generate the map files](https://codeberg.org/comaps/comaps/pulls/3467) and the [time required to download map files on your devices](https://codeberg.org/comaps/comaps/pulls/769).

- Elevation chart library
For a long time, our Android app used the same library to draw charts, but this library is no longer maintained. To avoid issues with this, and be able to have elevation charts in the app, [we have switched](https://codeberg.org/comaps/comaps/pulls/1106) to a maintained [fork](https://github.com/AppDevNext/AndroidChart) of this library, which still improves the code and uses more modern technologies like the Kotlin language.

We are also working to switch to other more recent technologies, like [viewPager2 for the search view](https://codeberg.org/comaps/comaps/pulls/3680) on Android, [using the `okhttp` library to improve our networking](https://codeberg.org/comaps/comaps/pulls/3492), [using svg icons or system icons instead of webp icons](https://codeberg.org/comaps/comaps/pulls/652) to improve visual quality and be able to integrate new map features without increasing the app size and [improved our build tools to reduce the size of the Desktop app](https://codeberg.org/comaps/comaps/pulls/3904).

Deciding whether to do invisible technical changes or developing a new features is a hard choice, but often the first option is required to be able to develop new features. If you are interested in developing in Swift or Kotlin, or in improving technical parts, join us and lets improve the app together!
