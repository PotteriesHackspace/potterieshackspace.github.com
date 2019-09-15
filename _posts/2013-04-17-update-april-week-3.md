---
id: 190
title: Update April Week 3
date: 2013-04-17T13:07:48+00:00
author: James Wade
layout: post
guid: http://potterieshackspace.wordpress.com/?p=190
permalink: /2013/04/17/update-april-week-3/
publicize_reach:
  - 'a:2:{s:7:"twitter";a:1:{i:2973618;i:33;}s:2:"wp";a:1:{i:0;i:7;}}'
publicize_twitter_user:
  - potterieshacks
image: /wp-content/uploads/2013/04/dsc_1042.jpg
categories:
  - Updates
tags:
  - 3d printer
  - arduino
  - bitcoin
  - gpu
  - marlin
  - printrun
  - ramps
  - update
---
**Success!**

[<img class="alignleft" alt="DSC_1042" src="/wp-content/uploads/2013/04/dsc_1042.jpg?w=300" width="300" height="200" />](/wp-content/uploads/2013/04/dsc_1042.jpg)Mark this as the day we officially got our 3D printer actually working. OK, so it&#8217;s not printing yet, but everything is moving.

With thanks to Si for his soldering skills and getting things connected, DanR for overseeing the firmware, Tom for completing the chassis we were able to to hook it up to the power and start getting things moving.

[<img class="alignleft" alt="DSC_1040" src="/wp-content/uploads/2013/04/dsc_1040.jpg?w=300" width="300" height="168" />](/wp-content/uploads/2013/04/dsc_1040.jpg)As soon as we attached it to the mains we had a little movement, this was good, but not quite what we wanted yet. We hooked up a terminal on the USB virtual port COM4 at 250000 baud and discovered an error.

[<img class="alignleft" alt="DSC_1045" src="/wp-content/uploads/2013/04/dsc_1045.jpg?w=300" width="300" height="200" />](/wp-content/uploads/2013/04/dsc_1045.jpg)The first thing we needed to do was re-configure the Arduino [Marlin firmware](http://reprap.org/wiki/Marlin), we set the motherboard as &#8220;RAMPS 1.3 / 1.4 (Power outputs: Extruder, Bed, Fan)&#8221; and TEMP\_SENSOR\_0 as &#8220;100k thermistor &#8211; best choice for EPCOS 100k (4.7k pullup)&#8221;.

[<img class="alignleft" alt="DSC_1041" src="/wp-content/uploads/2013/04/dsc_1041.jpg?w=300" width="300" height="168" />](/wp-content/uploads/2013/04/dsc_1041.jpg)Using the Arduino software we were able to compile and upload the updated Marlin firmware to the Arduino. This was exciting.

As we are using the Marlin firmware we needed the Python based [printrun](https://github.com/kliment/Printrun) on a windows machine to actually interface with it.

[<img class="alignleft" alt="DSC_1039" src="/wp-content/uploads/2013/04/dsc_1039.jpg?w=300" width="300" height="168" />](/wp-content/uploads/2013/04/dsc_1039.jpg)As we had only attached the extruder so far we decided to test that first, however we couldn&#8217;t seem to make it do anything. We realised that it wouldn&#8217;t do anything until the thermistor had reached temperature, so we set the temperature.

First the reading went to room temperature and we were all a bit downhearted by this, but a second request for it to increase temperature seemed to do the trick. We watched as the software reported the temperature increase in a nice little graph.

It was time. The thermistor had reached temperature and now we could tell the extruder to move.

Success! Cheers went around the room as we saw the motor whir and the cogs turn. The excitement was all too much. I had to sit down&#8230; I did take some videos though&#8230;

<span class="embed-youtube" style="text-align:center; display: block;"></span> <span class="embed-youtube" style="text-align:center; display: block;"></span> 

**<span style="font-style:inherit;line-height:1.625;">That&#8217;s not all!</span>**

<span style="font-style:inherit;line-height:1.625;">In the midst of all this, while while we were up to our eyeballs in wires and code for the 3D printer, we had a few visitors down to come and check out the place. Si kindly introduced himself and showed them around. Thanks for coming down and we hope you&#8217;ll come back soon, hopefully we&#8217;ll have a finished product by then!</span>

[<img class="alignleft" alt="DSC_1051" src="/wp-content/uploads/2013/04/dsc_1051.jpg?w=300" width="300" height="168" />](/wp-content/uploads/2013/04/dsc_1051.jpg)Not only that but John had brought down his battery powered EL wire, so he got to work putting that into a board, which flashes &#8220;Hack&#8221; in blue and &#8220;Space&#8221; in orange. A sort of beacon to say: &#8220;We&#8217;re here!&#8221;.

[<img class="alignleft" alt="DSC_1053" src="/wp-content/uploads/2013/04/dsc_1053.jpg?w=300" width="300" height="200" />](/wp-content/uploads/2013/04/dsc_1053.jpg)Also, Steve very kindly brought down a spare graphics card (or GPU). We thought it might be fun to get a mining rig setup, sure we&#8217;re a bit late in the game, but it would still be a fun project as there&#8217;s a few ideas that may give us an edge against competitors. Focusing less on the revenue and more the challenge.

&nbsp;

Thanks everyone, see you next week!