---
# Front Matter
# Title of your project used for the breadcrumb title and meta title.
title:  Volume Unit Meter

# Permalink your project will reside under on the 96boards.org website.
# separate your title's words with dashes for SEO purposes.
permalink: /projects/vu-meter/
author: Manivannan Sadhasivam

# Add a description of your project
description: Volume Unit meter (VU meter) is an application used to monitor the intensity of sound using ALSA programming interface for linux.

# Add the names of your images which are stored in the sub folders here.
# The first image is always used in the table at /projects/
# This section is used to add a social media share image to your project.
# Place the image you'd like to use when sharing on social media in the /assets/images/projects/
# folder and adjust the following YAML accordingly.
# High Res 1920 x 1080
# regenerated on site build
image: 
    path: /assets/images/projects/placeholder.png
#    list:
#        - thumb.png
#        - share.png
#social:
#  name: 96Boards
#  links:
#    - https://twitter.com/96boards
#    - https://www.facebook.com/96Boards/
#    - https://www.linkedin.com/company/96boards/
#    - https://plus.google.com/+96Boards
#    - https://github.com/96boards
project:
    # Difficulty level for your project <Beginner, Intermediate, Experienced>
    #difficulty_level:
    # - Beginner
    # Boards that you have used in this project. For a full list of boards see 
    # this file in the 96boards/website repo - _data/boards.yml
    boards_used: 
        - hikey
    # Verticals are catagories that your project belongs to. For a full list of verticals see 
    # this file in the 96boards/website repo - _data/verticles.yml
    verticals:
        - Maker
#Optional tags for your projects: meta-key words
tags:
- hikey
---

# vu_meter

Volume Unit meter (VU meter) is an application used to monitor the intensity of sound using ALSA programming interface
for linux. There are two variants of this application:

1. Using dB (decibels)
2. Using FFT (Fast Fourier Transform)

# Table of Contents
- [1) Using dB](#1-using-db)
- [2) Hardware Requirements](#2-hardware-requirements)
- [3) Package Dependencies](#3-package-dependencies)
- [4) Building and running](#4-building-and-running)
- [5) Conclusion](#5-conclusion)

# 1. Using dB:

Here, the intensity of sound is calculated by computing RMS value of sampled audio signal and converting to dB. The
implementation is straight forward and simple.

Link to blog: http://www.96boards.org/blog/96boards-vu-meter-part-1/

# 2. Hardware requirements:

1. [HiKey development board](http://www.96boards.org/product/hikey/)
2. [USB mic](https://www.adafruit.com/product/3367?gclid=Cj0KCQjwhrzLBRC3ARIsAPmhsnV7xmpPhkGgkUXuj0vmOFLwUCjxhiF1lbgvio7QglCJQwX9oMOCBvMaAs3YEALw_wcB)

# 3. Package Dependencies

1. ALSA library
```
$ sudo apt-get install libasound2
```

# 4. Building and Running:

``` shell
$ git clone https://github.com/96boards-projects/vu_meter.git
$ cd projects
$ cd vu_meter
$ make
$ ./vu_meter plughw:U0x46d0x825
```

Replace the Sound card info according to your device

# 5. Conclusion:

Running the executable causes progress bar to move according to the sound intensity.

## Using FFT:

Under development
