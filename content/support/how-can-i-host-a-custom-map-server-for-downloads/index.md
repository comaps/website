---
title: "How can I host a custom map server for downloads?"
description: "Frequently asked questions for CoMaps application"
taxonomies:
  support: ["Map Data"]
extra:
  tags: ["Android"]
  order: 65
---

If you want to host your maps yourself, you so far need to use the same files CoMaps provides.
There are different ways for downloading and serving the map files

## Using community-tools

Thanks to our community, there are currently two approaches designed to make downloading and serving CoMaps map files easier:

The [`comaps-map-distributor`](https://codeberg.org/gedankenstuecke/comaps-map-distributor) is an interactive Python-based command-line tool for downloading map files from the official CoMaps CDN to then serve them via a (local) web server.
The tool can be installed as a standalone package and has interactive prompts for selecting maps etc.

The [`comaps-server`](https://github.com/myanesp/comaps-server/) is a Docker container that contains a script for downloading/serving CoMaps map files. Configuration of which maps to download and serve is done via environment variables.

The hosting of the maps in both cases is mostly designed for serving files over a local network.

## Downloading and hosting them manually

You can find a list of URLs with valid map files hosted by CoMaps here, under the `$servers` variable in our **meta-php** repository: [https://codeberg.org/comaps/meta-php/src/branch/main/index.php#L19](https://codeberg.org/comaps/meta-php/src/branch/main/index.php#L19)

For your map server to correctly serve the files, the file/folder structure needs to fit the one CoMaps uses.

The file and folder structure underneath each base server URL should be like: `/maps/251209/US_New York_New York.mwm`

In other words:

- `/maps` -- first folder underneath the base server URL
  - `/251209` -- date code (YYMMDD) of the map version which will match the countries.txt shipped with your app and the "map data" date in the About menu
    - `/US_New York_New York.mwm` -- the specific MWM map file(s) for the "countries" (map regions) desired. Note somewhat arbitrary use of underscores and spaces. The best thing to do here is to just copy our official files directly, examine your app's countries.txt file, or check the filenames in the [data/borders folder](https://codeberg.org/comaps/comaps/src/branch/main/data/borders) in the main CoMaps code repository, replacing `.poly` with `.mwm`

Download the MWM files for the regions you care about using a web browser, or a tool like wget.

## More help

For help making your own custom map server and/or cloning new map versions as they're released, please [join our community and ask for help!](https://www.comaps.app/community/)

Read [this FAQ item for to setup CoMaps to download the maps from your own server](/support/how-can-i-set-a-custom-map-server-for-downloads/).
