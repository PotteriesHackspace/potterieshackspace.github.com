---
id: 209
title: Update April Week 4
date: 2013-04-24T18:46:13+00:00
author: James Wade
layout: post
guid: http://potterieshackspace.wordpress.com/?p=209
permalink: /2013/04/24/update-april-week-4/
publicize_twitter_user:
  - potterieshacks
publicize_reach:
  - 'a:2:{s:7:"twitter";a:1:{i:2973618;i:33;}s:2:"wp";a:1:{i:0;i:8;}}'
image: /wp-content/uploads/2013/04/dsc_1260.jpg
categories:
  - Updates
tags:
  - 3d printer
  - arduino
  - linux
  - printrun
  - ramps
  - raspberry pi
  - tap
  - windows
---
<img class="alignleft" alt="DSC_1274" src="/wp-content/uploads/2013/04/dsc_1274.jpg?w=300" width="300" height="200" />This is our tap, there are many taps like it but this one is ours&#8230;

The first hack of the session was thanks to DanW who brought down a hose pipe connector kit. Adding this was essential to making the water flow better for our coffee and tea making facilities. I know, I know, the excitement is overwhelming!

[<img class="alignleft" alt="DSC_1260" src="/wp-content/uploads/2013/04/dsc_1260.jpg?w=300" width="300" height="200" />](/wp-content/uploads/2013/04/dsc_1260.jpg)[<img class="alignleft" alt="DSC_1273" src="/wp-content/uploads/2013/04/dsc_1273.jpg?w=300" width="300" height="200" />](/wp-content/uploads/2013/04/dsc_1273.jpg)<img class="size-medium wp-image-222 alignleft" alt="DSC_1276" src="/wp-content/uploads/2013/04/dsc_1276.jpg?w=300" width="300" height="200" srcset="/wp-content/uploads/2013/04/dsc_1276.jpg 3872w, /wp-content/uploads/2013/04/dsc_1276-300x200.jpg 300w, /wp-content/uploads/2013/04/dsc_1276-1024x685.jpg 1024w" sizes="(max-width: 300px) 100vw, 300px" />[<img class="alignleft" alt="DSC_1263" src="/wp-content/uploads/2013/04/dsc_1263.jpg?w=300" width="300" height="168" />](/wp-content/uploads/2013/04/dsc_1263.jpg)Moving very swiftly back on to our 3D printer, we reconnected everything back up from last week to see where we were up to.

Only this time we thought we&#8217;d give it a go on Linux, after all the eventual plan would be to use a Raspberry Pi to interface with the RAMPS kit.

DanR got his laptop out and started hammering away at the keys in an attempt to get the &#8220;printrun&#8221; software we&#8217;d tried before to run on Linux.

However, through no fault of his own an error was returned. [&#8220;ImportError: No module named printcore&#8221;](http://reprap.org/wiki/Printrun), apparently this is a known issue on Debian based Linux systems.

Oddly enough, printrun works perfectly on Windows, so we went back to that until the issue on Linux is resolved with the developers.

Through this software we were able to figure a few bits out, set the dimensions in the configuration and recompile, then upload the updated firmware to the Arduino.

We did successfully manage, with some accuracy to get the bed to go up and down the threaded bars, especially since we&#8217;d correctly configured the work area dimensions however there was a bit of a wobble.

[<img class="alignleft" alt="DSC_1267" src="/wp-content/uploads/2013/04/dsc_1267.jpg?w=300" width="300" height="168" /><img class="alignleft" alt="DSC_1271" src="/wp-content/uploads/2013/04/dsc_1271.jpg?w=300" width="300" height="200" />](/wp-content/uploads/2013/04/dsc_1267.jpg)<span style="font-style:inherit;line-height:1.625;">Discussion quickly turned to how we were going to solve this problem. </span><span style="font-style:inherit;line-height:1.625;">We talked about the possibility of moving the existing threaded rods to the corners and adding two additional ones which would be belt driven. Another idea after confirming against the Ultimaker was to use a larger drive nut, or indeed use two drive nuts, simply adding an additional one above the bed, opposite the one below.</span>

Meanwhile, John was getting on with his on-bike sound system. The previous wooden lid had rotted away so he took the opportunity to replace it with an all weather plastic solution.

<span style="font-style:inherit;line-height:1.625;"><a href="/wp-content/uploads/2013/04/dsc_1270.jpg"><img class="alignleft" alt="DSC_1270" src="/wp-content/uploads/2013/04/dsc_1270.jpg?w=300" width="300" height="200" /></a></span><span style="font-style:inherit;line-height:1.625;">We also discussed (re)assembling the vacformer into a fixed position, however we&#8217;re in need of a heater unit. </span>

<span style="font-style:inherit;line-height:1.625;">Anyone got one of those portable halogen heaters spare?</span>

Better check the attic&#8230;

**Update: These are the missing videos footage that I forgot to publish.**

<span class="embed-youtube" style="text-align:center; display: block;"></span> <span class="embed-youtube" style="text-align:center; display: block;"></span> <span class="embed-youtube" style="text-align:center; display: block;"></span>