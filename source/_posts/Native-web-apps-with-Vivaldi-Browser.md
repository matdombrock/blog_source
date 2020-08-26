---
title: '''Native'' web apps with Vivaldi Browser'
date: 2020-08-06 00:08:02
tags:
---

# Introduction

I know this is a controversial statement but I really like using web apps. I like them so much that I prefer to treat them as if they were "first class" native apps. This means that I want them to be able to be launched directly from my OS and I want them to run in their own dedicated window without the browser tools (address bar, back/forward buttons ect.) showing.

Here is YouTube Running as a 'native' web app in chrome:

![yt-web-app-chrome](/img/yt-web-app-chrome.png)

Other web apps that I currently prefer to run like this:

* [Discord](https://discord.com/)
* [Slack](https://slack.com/)
* [Pocket Casts](https://www.pocketcasts.com)
* [Mastodon](https://mastodon.social)
* [Curiosity Stream](https://curiositystream.com)
* [Nebula](https://watchnebula.com)

To do this with chrome you just navigate to the page you want to set as a web app, go to the options menu, then click:

```
more tools -> create shortcut... 
```

Just check the box that says 'Open as window' and you will have this page available as a 'native' web app on your OS.  


# Doing this with Vivaldi

I also really like using the [Vivaldi Browser](https://vivaldi.com) which at first glance doesn't support this. At second and third glances it also doesn't support this. This was a big enough problem for me that I stopped using this browser for a while. 

However, it turns out that this is actually possible with Vivaldi. The processes is just a lot less user friendly. 

The basic idea is that you need to manually launch Vivaldi with an `--app` parameter.

```
C:\Users\{username}\AppData\Local\Vivaldi\Application\vivaldi.exe --app={website_url}
```
**NOTE:** This is obviously a Windows command, the idea though, should be similar on any OS.

So if I wanted to launch YouTube as a 'native' web app, I could run:

```
C:\Users\Mathieu\AppData\Local\Vivaldi\Application\vivaldi.exe --app=https://youtube.com
```

So, on Windows, if you want to turn this into a launchable application or pin it to your start menu, you can just create a new shortcut somewhere on your file system and add this command to the shortcut. 

Here is YouTube running as a 'native' web app in Vivaldi:

![yt-vivaldi](/img/yt-web-app-vivaldi.png)

# Conclusion

The only thing we're missing here is that the icon wont match the icon of the web app like it does in Chrome and will instead just show as the Vivaldi icon. You can of course change that in the shortcut settings but that requires a local copy of the app icon. However, for some reason, the correct icon shows in the taskbar when the app is running (as long as it is not pinned to the taskbar).

Hopefully these issues will be ironed out in future versions of Vivaldi and we can rely on it more heavily for our web app needs.  