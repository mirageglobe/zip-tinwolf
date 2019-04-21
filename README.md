# tinwolf #

- maintainer : Jimmy MG Lim (mirageglobe@gmail.com) / www.mirageglobe.com
- source : https://github.com/mirageglobe/tinwolf

An Tintin++ based app for Aardwolf with the follow key goals
- to be a portable, cross platform mud client for aardwolf (macosx, nix, android, windowspowershell)
- full text based user interface
- flat, easy to understand files
- based on mature mud engine (tintin++)

# To use #

to use, clone this repository
```
$ git clone https://github.com/mirageglobe/tinwolf.git
```

to run tinwolf, use make
```
$ make run
```

to see tinwolf options, use make
```
$ make
```

- to update, remember to backup your tinwolf folder (zip up the current folder) and just re-pull the git repository
- local-settings.txt is where you should define your customisable settings such as triggers or aliases
- local-map.txt is where your map file is. You should backup this file where possible

# Guidelines #

a few points to note before submitting PR :

- ensure this is tested on debian/ubuntu
- ensure this is tested on mac

# Roadmap #

- add iscrollup = #buffer {up}
- add iscrollhome = #buffer {end}
- add imappersave = #map write map.txt
- add imapperstart = #map start
- add imapperstop = #map leave
- add imapperundo = #map read

# References #

- http://tintinplusplus-unoffical-documentation.readthedocs.org/
- https://github.com/theixle/aardwolf-tintin
- http://www.aardwolf.com/wiki/index.php/Clients/GMCP
- https://tintin.sourceforge.io/news.php
- https://www.utf8icons.com/character/9814/white-chess-rook

# License #

Copyright 2015 Jimmy MG Lim (mirageglobe@gmail.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

License Breakdown: https://tldrlegal.com/license/apache-license-2.0-(apache-2.0)
