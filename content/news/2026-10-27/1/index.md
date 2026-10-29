---
title: "Place Reviews in CoMaps"
description: "CoMaps now displays reviews from Mangrove"
date: 2026-10-27T12:00:00-00:00
slug: "place-reviews"
taxonomies:
    category: ["Blog"]
authors: ["Maciek Makowski"]
extra:
    authors_codeberg:
        "Maciek Makowski": "mmakowski"
    keywords: ["reviews", "Mangrove"]
---

Imagine you are on a trip in a new city and would like to have a meal. You open CoMaps, navigate to _Search_, _Categories_, _Where to eat_ and the app happily displays the restaurants and cafes nearby. If you are in a popular spot, you might be overwhelmed by the number of them and the inability to tell the pleasant ones from tourist traps. This is one of the situations where customer reviews come in handy. 

Companies such as Google, TripAdvisor or Yelp have amassed huge troves of reviews. Sadly, these datasets are all proprietary and we cannot use them in CoMaps. There are a few projects attempting to build open review datasets distributed with permissive licences. We decided to work with [Mangrove Reviews](https://mangrove.reviews), which has previously been integrated into [MapComplete](https://mapcomplete.org) and contained a few thousand reviews of places on OpenStreetMap. Since the [31 August release](@/news/2026-08-31/1/index.md) you can see these reviews in the Android app.

## Usage

{{ <image src='place-rating.png' alt="A CoMaps screenshot showing a Mariensztat Coffee cafe selected on the map with the partially collapsed info panel. Under the place name there is a line: 4.7 ★★★★★ (4)." classes="max-w-40"/> }}

When you select a place that has reviews, its info panel will show the average star rating on the scale 1 to 5 stars as well as the number of reviews. In this example, the average from 4 reviews is 4.7 stars. To see the reviews, touch the star rating in the info panel.

{{ <image src='review-list.png' alt="A CoMaps screenshot showing a list of 3 reviews for Mariensztat Coffee. Each review contains a star rating, date, author name (first review only) and the review text." classes="max-w-40"/> }}

The reviews are shown starting from most recent. They can be in any language; you can select the text to paste it into a translation tool. There is currently no other action that can be taken on a review.

The search results list also displays the average rating, where available. A small pro-tip: from the upcoming November release onwards you will also be able to list all nearby places with reviews by typing `?reviews` into the search box. In the future we hope to include this more directly in the search options.

{{ <image src='search-results.png' alt="A CoMaps screenshot showing search results for '?reviews' query. Each result has a star rating (shown as e.g. 4.6★) in the subtitle." classes="max-w-40"/> }}

There is no review editor built into CoMaps yet, but links are provided to MapComplete (for places that MapComplete supports directly) or Mangrove web-based review editors. These links can be found in the expanded place info panel and in the review list. Adding reviews through these tools requires an active Internet connection.

{{ <image src='add-review.png' alt="A CoMaps screenshot showing a section of the place info panel containing a link titled 'Add a Review via MapComplete'." classes="max-w-40"/> }}

  

## How It Works

Like all other data shown by CoMaps, the reviews are downloaded to the device and available offline. Whenever new maps are generated, which as of October 2026 happens on a weekly schedule, all reviews are downloaded from Mangrove, matched with places on the map and embedded into the corresponding map files. Reviews that are bot-generated are excluded. In the future we might introduce additional filters to ensure the reviews stay relevant and helpful.

Offline storage means that when you add a review, it will only appear in CoMaps after the next maps update. If the maps have been updated and the review is still not visible it might mean there is a bug in how we collect the reviews for places &mdash; please [let us know](https://www.comaps.app/community/) so we can investigate.



## Coverage

Compared with closed, proprietary datasets, which contain millions of reviews, the Mangrove dataset is currently tiny: as of writing this, there is a bit over ten thousand reviews. That said, we are happy to see a steady, healthy growth of the review coverage. Since late June, when the work on Mangrove integration started, we have seen a twofold increase in the number of places with reviews.

{{ <image src='reviewed-places-plot.png' alt="A line plot of the number of places with reviews in CoMaps (Y axis) over time (X axis). On 22 Jun there were around 3300 reviews, on 22 Oct there were over 6000, with noticeable gradient increase in late August/early September."/> }}

This is still not a lot, so you might struggle to find any examples of places with reviews in your area. You can use the `?reviews` search keyword in CoMaps or the web-based [Mangrove Viewer](https://altilunium.github.io/MangroveViewer/) tool to find such places.


## The Future

There are advantages to Mangrove being niche: there is very little abuse of the system in the form of spam, vandalism or fake reviews. We hope the recent additions to CoMaps will make it easy to contribute reviews to Mangrove and the dataset will continue to grow. If it does, and as a result attracts the attention of bad actors, we will need some way of moderating and curating the reviews. Mangrove provides ways for flagging and commenting on reviews, and we would like to make some of that available in CoMaps.

A built-in review editor is another feature we would like to add. For one thing, it would allow one to leave review without connecting to the Internet; the review would be uploaded to Mangrove when a connection is available, similarly to how OpenStreetMap edits are handled by CoMaps. There are a few more ideas on how to improve the reviews in [Codeberg issues labelled with _open reviews_](https://codeberg.org/comaps/comaps/issues?q=&labels=2135812&state=open).

Finally, it would be great to also show the reviews in the iOS version of CoMaps. With the majority of CoMaps contributors focussing on Android, we are constantly looking for iOS developers. If this sounds like something you can help with, please [join us on Zulip](https://codeberg.org/comaps/comaps/src/branch/main/docs/CONTRIBUTING.md#team-messaging).
