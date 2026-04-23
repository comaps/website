---
title: "My GPS is not working"
description: "Frequently asked questions for CoMaps application"
taxonomies:
  support: ["GPS & Compass"]
extra:
  tags: ["Android", "iPhone & iPad"]
  order: 70
---
There are a few troubleshooting steps you can take:

* Check in your phone settings that CoMaps has permissions to access your location.
* On some Android devices, disabling the power saver and optimizing your Android phone is often the solution to many GPS issues. You can check [this website](https://dontkillmyapp.com/) for further troubleshooting regarding the power saver/optimization issue.
* On Android, you can toggle between using or not using *Google Fused Location Services*. If CoMaps can't get your location, change this setting, restart CoMaps after a forced shutdown, and see if it now gets your location.
* If you are using [GrapheneOS](https://grapheneos.org/) with the *Sandboxed Google Play Services* installed: Please keep the *Google Fused Location Services* option in the CoMaps settings turned off. The *MicroG* implementation that CoMaps uses for the fused location services has currently a bug that prevents finding the location when this option is turned on in the GrapheneOS sandbox. As soon as this bug is fixed we will update it on our end.
