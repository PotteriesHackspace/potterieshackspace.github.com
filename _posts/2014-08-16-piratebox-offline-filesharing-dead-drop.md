---
id: 459
title: PirateBox Offline FileSharing Dead Drop
date: 2014-08-16T10:29:43+00:00
author: James Wade
layout: post
guid: http://potterieshackspace.org/?p=459
permalink: /2014/08/16/piratebox-offline-filesharing-dead-drop/
spacious_page_layout:
  - default_layout
image: /wp-content/uploads/2014/08/2014-06-04-12.18.53.jpg
categories:
  - Projects
tags:
  - dead drop
  - deaddrop
  - piratebox
  - projects
---
There&#8217;s now a PirateBox Dead Drop setup at Potteries Hackspace.

**What are dead drops?
  
** A USB dead drop is a USB device installed in a public space. For example, a USB flash drive might be mounted in an outdoor brick wall and fixed in place with fast concrete or cement. The name comes from the dead drop method of espionage communication. The devices can be regarded as an anonymous, offline, peer-to-peer file sharing network.

**What&#8217;s a PirateBox?**
  
A PirateBox is a portable electronic device, often consisting of a Wi-Fi router and a device for storing information, creating a wireless network that allows users who are connected to share files anonymously and locally. By definition, this device is disconnected from the Internet.

<!--more-->

**Setting up a TL-WR703N as a PirateBox**

If like me you managed to aquire one of the TP-Link TL-WR703N, the Chinese version of the TP-Link MR3020, then you’re going to had a bad time, without a guide at least…

The official PirateBox website has instructions on [how to install PirateBox 1.0 on the TL-WR703N](http://piratebox.de/openwrt:diy#install_piratebox_10) on their website. I strongly advise that you follow those instructions as closely as possible.

Below are some instructions that may help you with some snags along the way&#8230;

[<img class="size-medium wp-image-462 alignright" src="http://potterieshackspace.org/wp-content/uploads/2014/08/2013-03-18-20.54.05-225x300.jpg" alt="2013-03-18 20.54.05" width="225" height="300" srcset="http://potterieshackspace.org/wp-content/uploads/2014/08/2013-03-18-20.54.05-225x300.jpg 225w, http://potterieshackspace.org/wp-content/uploads/2014/08/2013-03-18-20.54.05-768x1024.jpg 768w" sizes="(max-width: 225px) 100vw, 225px" />](http://potterieshackspace.org/wp-content/uploads/2014/08/2013-03-18-20.54.05.jpg)

**Prerequisites**

First, let’s figure out what we need:

  * TL-WR703N
  * USB Flash Drive (formatted FAT32 with a single partition)
  * Ethernet cable
  * 5V USB Power cable and source

Warning: If you buy the TL-WR703N it is the model designed for the Chinese market unlike the TP-Link MR3020.

**Getting OpenWRT firmware installed**

Warning: Flashing your device may &#8220;brick&#8221; your device, preventing it from booting up normally. You can unbrick the device by accessing it via a serial port by following the instructables instructions on [how to add a serial port to a TL-WR703N](http://www.instructables.com/id/TL-WR703N-serial-port/?ALLSTEPS).

The first thing we need to do is switch from the TP-Link interface to OpenWRT. To do this, you need to connect to your TL-WR703N (usually on http://192.168.1.1/) via your web browser and update the firmware from there.

Sounds easy? It’s not. Why? Because it’s all Chinese!

If your Chinese is as good as mine, then you’re going to need some help…

To flash from the web interface, from the menu on the left, select the last menu item and then the third submenu item.

Warning: this will reset your flash and remove all your settings so you can start from scratch.

I tried to use the OpenWRT firmware for the WR703N but it reported as a
  
Download the openwrt-ar71xx-generic-tl-wr703n-v1-squashfs-factory.bin firmware file to upgrade from the web interface.

If like me you already installed (the wrong version of) OpenWRT, rewrite it from command line:

<p style="padding-left: 30px;">
  cd /tmp<br /> wget http://stable.openwrt.piratebox.de/auto/openwrt-ar71xx-generic-tl-wr703n-v1-squashfs-factory.bin<br /> mtd write openwrt-ar71xx-generic-tl-wr703n-v1-squashfs-factory.bin firmware<br /> reboot
</p>

Once you’ve got OpenWRT installed on the device and you&#8217;ve connected to the internet again you’re ready for the next steps…

**Setup basic USB Support**

<p style="padding-left: 30px;">
  opkg update && opkg install kmod-usb-uhci kmod-usb-ohci<br /> insmod usbcore<br /> insmod uhci<br /> insmod usb-ohci
</p>

Note: If you get an error “insmod: can&#8217;t insert &#8216;usbcore&#8217;: File exists” you can safely ignore this.

**Brick your PirateBox**

At this point I somehow managed to brick my PirateBox. It would not boot at all.

If you followed these instructions closely, then it&#8217;s likely that you did too! Sorry, but at least it&#8217;s a good excuse to get hacking&#8230;

**Add a serial port**

[<img class="size-medium wp-image-477 alignright" src="http://potterieshackspace.org/wp-content/uploads/2014/08/2014-08-16-11.11.00-300x225.jpg" alt="2014-08-16 11.11.00" width="300" height="225" srcset="http://potterieshackspace.org/wp-content/uploads/2014/08/2014-08-16-11.11.00-300x225.jpg 300w, http://potterieshackspace.org/wp-content/uploads/2014/08/2014-08-16-11.11.00-1024x768.jpg 1024w" sizes="(max-width: 300px) 100vw, 300px" />](http://potterieshackspace.org/wp-content/uploads/2014/08/2014-08-16-11.11.00.jpg)

With the help of the guys down at the hackspace and a few bits off eBay (such as a USB to RS232 TTL PL2303HX Converter Module) I managed to follow the instructables instructions on [how to add a serial port to a TL-WR703N](http://www.instructables.com/id/TL-WR703N-serial-port/?ALLSTEPS) in order to unbrick the device and access it via a serial port.

Once I had restored the device back to normal via the serial port I was able to follow the PrivateBox install instructions correctly.

The downside was that I had to add this step in, but the upside was I got to hack the device!

Unfortunately I didn&#8217;t take a note of exactly the steps I took to send the image over the serial port, but it did involve using RealTerm and TFPD. There&#8217;s some instructions on the OpenPilot forum, entitled &#8220;[Unbrick wr703n wifi route](http://forums.openpilot.org/blog/52/entry-92-unbrick-wr703n-wifi-router/)r&#8221; which seem to be the same instructions I followed.

**Install PirateBox**

Follow the instructions on the official &#8220;PirateBox&#8221; website, titled, [how to install PirateBox 1.0 on the TL-WR703N](http://piratebox.de/openwrt:diy#install_piratebox_10).

**Check your Wireless**

If you&#8217;ve followed the instructions correctly then you should see an SSID broadcast that says: &#8220;PirateBox &#8211; Share Freely&#8221;&#8230;

There&#8217;s a 16GB memory stick in there which you&#8217;re welcome to use via the wifi access.

[<img class="size-medium wp-image-465 alignright" src="http://potterieshackspace.org/wp-content/uploads/2014/08/2014-07-08-21.30.07-300x225.jpg" alt="2014-07-08 21.30.07" width="300" height="225" srcset="http://potterieshackspace.org/wp-content/uploads/2014/08/2014-07-08-21.30.07-300x225.jpg 300w, http://potterieshackspace.org/wp-content/uploads/2014/08/2014-07-08-21.30.07-1024x768.jpg 1024w" sizes="(max-width: 300px) 100vw, 300px" />](http://potterieshackspace.org/wp-content/uploads/2014/08/2014-07-08-21.30.07.jpg)

**Useful Resources**

  * [OpenWRT:DIY instructions](http://piratebox.cc/openwrt:diy)
  * [TL-WR703N serial port](http://www.instructables.com/id/TL-WR703N-serial-port/?ALLSTEPS)
  * [PirateBox creation based on TP-Link MR3020](http://www.disk91.com/2012/technology/networks/piratebox-creation-based-on-tp-link-mr3020/)
  * [Piratebox on TP-Link MR 3020](https://sites.google.com/site/cookingcomputersandmore/home/computers-electronics-and-gadgets/piratebox-on-tp-link-mr-3020)
  * [Reverse-Engineering work on the TL-WR703N 150M 802.11n Wi-Fi Router](http://squonk42.github.io/TL-WR703N/)
  * [TP-Link TL-WR703N &#8211; OpenWrt Wiki](http://wiki.openwrt.org/toh/tp-link/tl-wr703n)
  * [TP-LINK TL-WR703N Configuration & Hack](http://www.siongboon.com/projects/2013-10-06_tl-wr703n_setup/index.html)
  * [Unbrick wr703n wifi router &#8211; OpenPilot Forums](http://forums.openpilot.org/blog/52/entry-92-unbrick-wr703n-wifi-router/)
  * [Hacking the TP-Link TL-WR703N](http://www.rs-online.com/designspark/electronics/blog/hacking-the-tp-link-tl-wr703n)
  * [cave&#8217;s tinker pit : unbrick WR703n](http://cavebeat.blogspot.co.uk/2012/09/unbrick-wr703n.html)