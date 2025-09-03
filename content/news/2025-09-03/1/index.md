---
title: "The diversity of OpenStreetMap tools and how they help create a commons"
description:
date: 2025-09-03T15:00:00-00:00
slug: "diversity-of-openstreetmap-tools-creating-a-commons"
taxonomies:
    category: ["Blog"]
extra:
    author: Bastian Greshake Tzovaras
    author_username: gedankenstuecke
---

*This blog post was originally published [on my blog on August 11, 2025](https://tzovar.as/tool-diversity/), under a CC BY-SA license.*

Last weekend was the 21st birthday of _[OpenStreetMap](https://www.openstreetmap.org)_ (OSM), and with some friends we celebrated the occasion with a little mapping party.
Our plan was to combine flying drones to [collect aerial imagery](https://dronetm.org/) and [collecting street-level imagery](/panoramax-bot/) with more traditional field mapping.
Due to high winds, we mostly ended up with street-level imagery and doing field mapping though, using a variety of tools.

On the way home, I was reflecting on how amazing this richness and diversity of tools for contributing to OSM is.
Not just in terms of methods (like collecting imagery, sharing GPS tracks, _arm-chair mapping_ or surveying).
But even just within each of these realms:
Yesterday we surveyed using [Every Door](https://every-door.app/), [StreetComplete](https://streetcomplete.app/), [MapComplete](https://mapcomplete.org/), and [ChatMap](https://www.hotosm.org/tech-suite/chatmap/), while recording GPS tracks with [CoMaps](https://www.comaps.app/).
Before then sitting down with our computers, to make larger edits with [iD](https://wiki.openstreetmap.org/wiki/ID) and [JOSM](https://josm.openstreetmap.de/).

This wide spectrum of used tools is not (just[^1]) because each of us had different preferences for tools.
But also because different tools fill different niches.
Even individually, I end up using virtually all of those mentioned tools every single day that I contribute to OSM.[^2]
Why?
Because each of them excels at particular and different use cases.

_Every Door_ is great for surveying when it comes to adding more complex points to the map, things like amenities or shops.[^3]
For these objects one realistically wants to add a wide range of information in one go (opening hours, websites, phone numbers, …).
_StreetComplete_ is perfect to quickly add missing data to existing objects, at least in part because it tries to gamify OSM contributions.
By highlighting different types of "missing" information around one's current location, it's easy to find things that are both simple to verify as simple to add by the click of a button/answering a multiple-choice question (e.g. adding in the type of road surface).[^4]
_MapComplete_ is great for adding objects to which one might want to add photos, for example art works or [wayside shrines](/wayside-shrines-mapcomplete/), as long as the objects are already supported.[^5]
And CoMaps works great if find yourself without any reception (which would be needed to download the live map) but you found a place where you want to make an edit, as you can look at the offline map and still queue up an edit/note.
Similarly, less surveying-based editors like iD and JOSM have their own niches they work well for.

The answer to _"what is the best editor"_ thus comes back to the common _"it depends on your use case"_.
While at times I've seen people complain about the _**complexity**_ that comes with a large number of tools, I'd argue that **this big diversity in tools is in reality a big asset to enabling contributions to OSM**.
Not only does it allow people to find a tool that works best for them and their contributing-style, it also facilitates having _the right tool for the job_.

If you think of [_everything apps_ or _super apps_ that try combining a lot of software features](https://theconversation.com/elon-musk-aims-to-turn-twitter-into-an-everything-app-a-social-media-and-marketing-scholar-explains-what-that-is-and-why-its-not-so-easy-to-do-211023), their alleged appeal is to have all the functionality you could ever need in one place, but the reality is more often that those tools become bloated, hard to navigate, and calcify as any changes to the structure are infinitely harder given the size and complexity.
I often compare this to the _Swiss Army Knife_: 
In a pinch, its little screwdrivers, saws, etc. will do their job to fix stuff around the house.
But for any larger building project you definitely would like a toolbox with some real screwdrivers and saws.[^6]
This is because these individual tools can focus efforts on supporting and implementing comparatively narrow use cases, without having to make extra trade-offs.

Of course, the idea of having tools that "do one thing well" isn't new.
It's part of the [Unix philosophy](https://en.wikipedia.org/wiki/Unix_philosophy), alongside the idea that all of these tools should work together with each other.
Similarly, how different types of contributions require different tooling reminds the biologist in me of [JBS Haldane's _On Being the Right Size_](https://www.phys.ufl.edu/courses/phy3221/spring10/HaldaneRightSize.pdf), which neatly outlines why the _shape_ of organisms plays a big role in the niche they fill.
And more recently, there's been a [call for _malleable software_](https://www.inkandswitch.com/essay/malleable-software/).
That is software that can adapt to user needs.
And while the authors are skeptical of too specialized software, they highlight interoperability between tools as a big factor, similar to the Unix philosophy.[^7]

So why does this approach of having a large diversity of tools work well for OSM, when otherwise we might see trends that go counter to this?
I think there's different aspects to it:
First of all, there's a **clear "interoperable target"** - that is a place where people send contributions to: the OSM database.
Ultimately it doesn't matter which tooling someone used, the changesets end up in the same place, contributing to the larger project and shared goal.
Then there's two other [key aspects of _peer-produced_ systems](https://osf.io/preprints/socarxiv/rw58y_v1), **having a wide _range of tasks_ that are _granular_ and _modular_**.[^8]
In other words: There's lots of different types of contributions that one can make to OSM, ranging from very small (e.g. Verifying that a business still exists) to very large (e.g. Adding a whole new neighborhood with streets, buildings etc. to the database).
But no matter the size, all of these contributions are valid and help improve the overall database and map.

And lastly, there is the elephant in the room:
There is no incentive to build a _"super/everything app"_.
In the commercial space, the main incentive for building these tools is to keep "your" customers locked up in a closed, proprietary ecosystem.
With that, the cost of switching becomes so high that you can maintain a 'captive audience'.
But in a digital commons, that is built on cooperation rather than competition, such an approach makes little sense.
Especially for tools that are open source for contributing into the commons for the community benefit.

It seems that under those combined circumstances, maintaining a diversity of tools works quite well.
It provides a pathway for making lots of different contributions by lots of different contributors.
And just like it takes a village to raise a child, it takes a global village – with many diverse contributions – to create a map [as a by-product of understanding the world](https://www.apc.org/en/news/every-door-going-map-user-open-source-map-creator).
And that's a reason to not only celebrate the birthday of OpenStreetMap, but also the huge diversity of contributors, the ways in which they contribute and the tools they use for that. 

### Footnotes

[^1]: Of course that also plays a role, people do realistically have different preferences or are willing to make different trade-offs with respect to usability.

[^2]: If you [look at my contribution history](https://hdyc.neis-one.org/?Bastian%20Greshake%20Tzovaras), you can actually see some of that diversity, but as different editors handle how changesets are pushed differently, the raw numbers can be a bit misleading.

[^3]: And of course it works equally well to "fully" annotate buildings (addresses, number of floors, color, roof styles, …), as the name suggests.

[^4]: It also works great for adding in simple objects, like all the play objects on a playground!

[^5]: If an object isn't supported yet, one can write a custom layer like I did for the wayside shrines, but that's slightly more advanced. Either way, images uploaded through MapComplete are automatically linked as an OSM tag and available via their own Panoramax instance. 

[^6]: In the OSM universe, the _OsmAnd_ map/navigation/editing app is maybe an example of such a _Swiss Army Knife_: Stuffed with features, it is very powerful and can do a lot of things, but comes close to requiring an advanced degree to really use all of those possibilities. As a result, for many/most use cases (think of doing a simple hike) there will be other, simpler, more specialized tools that will get the job done in a simpler/better way. 

[^7]: Thanks to [Helge Rausch](https://merveilles.town/@i_dabble/114663792048502201), who had pointed me towards the article initially and also highlighted the similarity to the Unix philosophy!

[^8]: If you look at [page 5 of the preprint](https://osf.io/preprints/socarxiv/rw58y_v1) you'll find a longer list of characteristics that are found in peer-production. The examples given are from Wikipedia, but are easily translatable to OSM

<script>
// Apparently Zola's footnotes are broken, this fixes links back up to
// anchors, via: https://github.com/getzola/zola/issues/1070#issuecomment-1166637092
// The DOMContentLoaded event fires when the initial HTML
// document has been completely loaded and parsed, without
// waiting for stylesheets, images, and subframes to finish loading.
document.addEventListener('DOMContentLoaded', (_event) => {
  const references = document.getElementsByClassName('footnote-reference')
  // For each footnote reference, set an id so we can refer to it from the definition.
  // If the definition had an id of 'some_id', then the reference has id `some_id_ref`.
  for (const reference of references) {
    const link = reference.firstChild
    const id = link.getAttribute('href').slice(1) // skip the '#'
    link.setAttribute('id', `${id}_ref`)
  }

  const footnotes = document.getElementsByClassName('footnote-definition')
  // For each footnote-definition, add an anchor element with an href to its corresponding reference.
  // The text used for the added anchor is 'Leftwards Arrow with Hook' (U+21A9).
  for (const footnote of footnotes) {
    const id = footnote.getAttribute('id')
    const backReference = document.createElement('a')
    backReference.setAttribute('href', `#${id}_ref`)
    backReference.textContent = '↩'
    footnote.append(backReference)
  }
});
</script>
