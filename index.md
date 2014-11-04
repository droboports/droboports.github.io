---
layout: default
---

### Latest news

To receive notifications about the latest DroboApp releases and news, circle DroboPorts on [Google Plus](https://plus.google.com/+Droboports).

### How to use this site

This site is a repository of apps for owners of Drobo NAS devices, such as the DroboFS and the Drobo5N. Its primary audience is the heavy-duty Linux users, the kind that thinks package management is for newbies, but we also try to accomodate end-users as much as possible.

In other words, what is offered here is the lowest level possible of instructions to get from the source code (of both application and libraries) all the way to packaging the binaries as DroboApps. This means also instructions on [how to setup the cross-compiling environment](https://github.com/droboports/droboports.github.io/wiki/Setting-up-a-VM).

With that being said, not everyone has the time to start the procedure from scratch. Therefore, each DroboApp will have a "releases" page with links to ready-to-deploy packages and some additional instructions to install and configure each app.

Most of the time, it is just a matter of downloading the TGZ file, copying it in the DroboApps share of your Drobo, and rebooting it.

All the DroboApps are packaged in a way that makes them as ready-to-go as possible, and many will just work out-of-the-box without any further configuration. Additional configuration, if necessary, will be indicated in the releases' description.

### What should I install on my Drobo5N/DroboFS?

It depends on what you want to do with it. If you are a command-line fellow, then start with [OpenSSH](https://github.com/droboports/openssh), [bash](https://github.com/droboports/bash), and [wget with SSL support](https://github.com/droboports/wget). After that have a look at the other command-line utilities. If you need to remote admin the Drobo, you might want to install [OpenVPN](https://github.com/droboports/openvpn) and [Puppet](https://github.com/droboports/puppet). Developers will be interested in [git](https://github.com/droboports/git).

Both the Drobo5N and the DroboFS make for pretty decent torrent/newsgroup downloader boxes. Have a look at [rtorrent](https://github.com/droboports/rtorrent), [transmission](https://github.com/droboports/transmission) and [nzbget](https://github.com/droboports/nzbget). If you are thinking about automating your downloads, you'll probably also need [Lighttpd](https://github.com/droboports/lighttpd), [PHP](https://github.com/droboports/php), and [Python](https://github.com/droboports/python2) (and some of the [Python modules](python-modules) too). These are fairly large DroboApps and might be a little complicated to setup, so head on to the [DroboSpace forums](http://www.drobospace.com/forums/forumdisplay.php?fid=9) to get some help.

While the DroboFS is a pretty capable file/media server, the Drobo5N is an excellent choice. You can host your own content or blog using [Apache](https://github.com/droboports/apache2) and [MySQL](https://github.com/droboports/mysql) (use a Drobo5N for an optimal performance). If you want to access it over the internet, [ProFTPd](https://github.com/droboports/proftpd) seems to be the best FTP server available. If you are in an Unix environment (*BSD, Linux, Mac OS X), you might want to get the kernel version of the [NFS server](https://github.com/droboports/nfs). If you are looking to stream media to TVs/DVD players/set-top boxes/Android devices, then [minidlna](https://github.com/droboports/minidlna) is the app for you. Unfortunately, due to Apple's restrictive policies and DRM schemes, there isn't a good solution to serve Apple media (movies in particular) available so far.

Finally, both the Drobo5N and the DroboFS are the perfect backup destinations. If you are a Linux user, then you might wanna pickup the latest [rsync](https://github.com/droboports/rsync). The [CrashPlan](https://github.com/droboports/crashplan) client can backup your Drobo5N/FS to the cloud.

### I need an app that is not here

Do you have an idea for a good DroboApp candidate? Then drop us a message on our [Google Plus page](https://plus.google.com/+Droboports) or on our [Patreon page](http://www.patreon.com/Droboports). You can also hire us for consulting work on how to port your app to the DroboFS and Drobo5N.
