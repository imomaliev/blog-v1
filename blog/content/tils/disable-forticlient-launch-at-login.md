---
title: "Disable Forticlient Launch At Login"
date: 2021-03-04T01:01:45+07:00
draft: false
tags: ["vpn"]
---

# How to disable FortiClient launch at login

## Question

FortiClient is automatically added to launch at login, and there is no simple way to disable this

## Answer

```console
$ sudo vim /Library/LaunchAgents/com.fortinet.forticlient.fct_launcher.plist
# edit <key>RunAtLoad</key> to <false/> value
```

## Links

-   https://forum.fortinet.com/tm.aspx?m=97324
