---
title: "CoMaps in 2026: Planning for the future"
description: "What we aim to achieve in 2026"
date: 2026-01-09T10:06:00-03:00
slug: "comaps-in-2026-planning-for-the-future"
taxonomies:
    category: ["Blog"]
extra:
    author: "The CoMaps team"
    author_username: "comaps"
    keywords: ["comaps", "planning", "status update", "2026", "roadmap"]
---

After [reflecting on our 2025 and what we have achieved so far](https://www.comaps.app/news/2025-12-16/comaps-and-its-community-end-of-2025/), we want to also share some updates and plans we have for 2026.
During these first months of the project, we found our feet on working together, managing releases and dove into making improvements to the app.
In 2026, we will continue with those, but want to put a stronger focus on our long-term sustainability, by tackling some _meta-level_ topics:

## Formalizing our governance

The governance of CoMaps follows the [same core principles that were put in place with the start of the project](https://codeberg.org/comaps/Governance/).
By design, those core principles are very abstract and "high-level":
Contributors who have privileged access to project-related accounts sign a "trust agreement" to use these for the benefit of the project, but otherwise we have done little further formalization of the governance.
This year, we want to improve on these so-far informal processes, to better structure our decision-making processes, define how our voting processes work, etc.


Related to this, currently CoMaps is hosted under the [_Platform 6 Fiscal Host_ on _Open Collective_](https://opencollective.com/platform6-coop), which handles the transparent management and use of donations for us.
As _Platform 6_ sees themselves as an incubator, we want to find a more long-term solution in 2026, either through another fiscal host or by founding our own non-profit association.

If these topics are of interest to you, check out the issues [in our Governance repository](https://codeberg.org/comaps/Governance/) to join the discussions.

## Defining our vision and mission

Similar to how our governance structures are currently for a good part implicit between the active contributors, we so far have not written down our shared vision for CoMaps.
While we have an implicit assumption of wanting CoMaps to be an easy-to-use, and newcomer-friendly navigation and map application, this level of detail is not necessary enough to really prioritise what to work on and which features might be out-of-scope.

This is already becoming relevant now:
The CoMaps repository has currently nearly 1,000 open issues.
And at times these issues, in particular feature requests, can be at direct conflict with each other.
Currently, it is not trivial to decide in these cases.
By developing a more detailed vision of what CoMaps wants to be - and importantly also does **not** want to be, it will be easier to handle feature requests.

Of course, developing this vision will be a shared process in an on-going dialogue and it will be created with all of you.

## Future-proofing the code

As a "fork of a fork", much of the code of CoMaps can look back at a long history, all the way back to 2014 when *Maps.me* started out.
As technology moves on and new toolkits appear, others become deprecated and maintaining it can become challenging.
Due to this it becomes to important to ensure that CoMaps "goes with the times" in terms of underlying technologies, to ensure that we can deliver our apps to you for the years to come.

Some of this work you might already have noticed, for example the implementation of Android's _Material 3_ interfaces.
In 2026 we will need to work more on these, often invisible, changes to ensure CoMaps remains maintainable. Potential work that fits this, would include refactoring the way http requests in Android are made, to offer a more robust implementation for the traffic feature or overhaulign the workflow for map icons, to simplify the integration of new POI types.

## Improving processes & automation

In 2025, we already did some work on this, but there remains more to be done:
Building the maps and apps; and then creating and publishing releases across all the different platforms can at times be a bottleneck.
To minimize such bottlenecks, we want to improve our processes and automate them where possible.
For example, much of our map generation tooling has already been put into mostly-automated workflows, but there are still parts where we can improve.

## Ongoing work on features

There is also work on larger features that is ongoing:
People are working on decoupling updating the map files from the app, improving the public transport integration, better displaying Panoramax street-level imagery, and even on features to implement optional live traffic data.
None of these have concrete release-dates, but will continue to be developed this year.

## Onboarding developers

In 2025, we grew our community quite a bit.
We welcomed people who help with translations, maintaining our website, handling our many community channels, and much more.
We also had some people join us in contributing code.
But, for our long-term sustainability, we really would like to onboard more developers.
For maintaining CoMaps, but also implementing some of those new and larger features, as developer time is at times a limiting factor in moving things forward.
Additionally, we are also especially looking for iOS developers who would like to help us increase the feature parity between Android and iOS.

So, if you have relevant skills (we use C++, Java, Swift, Objective C, Qt and Python and are happy to help beginners), please join us in making CoMaps the best it can be!

