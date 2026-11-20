---
title: "How can I host a custom map server for downloads?"
description: "Frequently asked questions for CoMaps application"
taxonomies:
  supportcategory: ["Map Data"]
extra:
  tags: ["Android", "iPhone & iPad"]
  order: 65
---

If you want to host your maps yourself, you so far need to use the same files CoMaps provides.
There are different ways for downloading and serving the map files

## Using community tools

Thanks to our community, there are currently two approaches designed to make downloading and serving CoMaps map files easier:

The [`comaps-map-distributor`](https://codeberg.org/gedankenstuecke/comaps-map-distributor) is an interactive Python-based command-line tool for downloading map files from the official CoMaps CDN to then serve them via a (local) web server.
The tool can be installed as a standalone package and has interactive prompts for selecting maps etc.

The [`comaps-server`](https://github.com/myanesp/comaps-server/) is a Docker container that contains a script for downloading/serving CoMaps map files. Configuration of which maps to download and serve is done via environment variables.

The hosting of the maps in both cases is mostly designed for serving files over a local network.

## Downloading and hosting them manually

You can find a list of URLs with valid map files hosted by CoMaps here, under the `$servers` variable in our **meta-php** repository: [https://codeberg.org/comaps/meta-php/src/branch/main/index.php#L19](https://codeberg.org/comaps/meta-php/src/branch/main/index.php#L19)

For your map server to correctly serve the files, the file/folder structure needs to fit the one CoMaps uses.

Under normal operation, CoMaps queries a _meta server_ for any map updates, and downloads any new maps from a _map server_. When you set a custom server URL, you are setting the URL for both the _meta_ server and _map_ server.

Your custom server must serve both the _meta_ information and _map data_. The file and folder structure underneath the base server URL for _map data_ should be like: `/maps/2026.06.28/261101/US_New York_New York.mwm`

In other words:

- `/maps` -- first folder underneath the base server URL
  - `/2026.06.28` -- map series (YYYY.MM.DD), which is the MWM compatibility version built into every version of CoMaps
    - `/261101` -- date code (YYMMDD) of the map version 
      - `/US_New York_New York.mwm` -- the specific MWM map file(s) for the "countries" (map regions) desired. Note somewhat arbitrary use of underscores and spaces. The best thing to do here is to just copy our official files directly, examine your app's countries.txt file, or check the filenames in the [data/borders folder](https://codeberg.org/comaps/comaps/src/branch/main/data/borders) in the main CoMaps code repository, replacing `.poly` with `.mwm`

Download the MWM files for the regions you care about using a web browser, or a tool like wget.

For the meta information, you must have a file at `/meta/maps.json`. The contents of the file should follow the same format as the one in our **meta-php** repository: [maps.json](https://codeberg.org/comaps/meta-php/src/branch/main/maps.json). The meta file lists all map versions which are available for given _map series_, and is what instructs the app to know when there is a map update available.

## More help

For help making your own custom map server and/or cloning new map versions as they're released, please [join our community and ask for help!](https://www.comaps.app/community/)

Read [this FAQ item for to setup CoMaps to download the maps from your own server](/support/how-can-i-set-a-custom-map-server-for-downloads/).
