---
layout: post
title:  "Masternode Manual"
categories: [ Manual ]
image: assets/images/masternode.png
---

<a href="#step-by-step-guide">Step by step guide</a>

## Notes from Documentation

Scope Coin allows controlling multiple remote masternodes from a single wallet. The wallet needs to have a valid collateral output of 10 000 coins for each masternode and uses a configuration file named `masternode.conf` which can be found in the following data directory (depending on your operating system):

 * Windows: `%APPDATA%\ScopeCoin\`
 * Mac OS: `~/Library/Application Support/ScopeCoin/`
 * Unix/Linux: `~/.scopecoin/`

`masternode.conf` is a space separated text file. Each line consists of an alias, IP address followed by port, masternode private key, collateral output transaction id and collateral output index.

Example:

```
mn1 127.0.0.2:5121 93HaYBVUCYjEMeeH1Y4sBGLALQZE1Yc1K64xiqgX37tGBDQL8Xg 7603c20a05258c208b58b0a0d77603b9fc93d47cfa403035f87f3ce0af814566 0
mn2 127.0.0.4:5121 92Da1aYg6sbenP6uwskJgEY2XWB5LwJ7bXRqc3UPeShtHWJDjDv 5d898e78244f3206e0105f421cdb071d95d111a51cd88eb5511fc0dbf4bfd95f 1
```

_Note: IPs like 127.0.0.* are not allowed actually, we are using them here for explanatory purposes only. Make sure you have real reachable remote IPs in you `masternode.conf`._

The following RPC commands are available (type `help masternode` in Console for more info):
* list-conf
* start-alias \<alias\>
* start-all
* start-missing
* start-disabled
* outputs

<a name="step-by-step-guide">
## Step by step guide

This is step by step guide on Masternode setup using local Master Wallet and Ubuntu VPS from SCOPE COIN Developer. It will handle you through setup process describing basic concepts you need to understand and illustrating changes you need to apply with screenshots. Let's start!

### Master Wallet

First of all you will need Master Wallet which will receive rewards from your Masternode and where Collateral will be locked.

Usually this is local wallet on your PC or Notebook.

_Please note on security of this macine. If somebody will gain access to it all your Funds will be vulnerable including Collateral._

You can download XSCP Wallet for your system from About page of this site: [License & Download](/about.html#downloads). Unpack it somewhere and run `./scope-qt` or `scope-qt.exe`. Wait until network will synchronize. 

<img class="no-shadow" src="./assets/images/screenshots/synchronizing.png" alt="Synchronizing with Scope Network" />

While you see `Out of sync` you need to wait:

<img class="no-shadow" src="./assets/images/screenshots/synchronized.png" alt="Synchronized with Scope Network" />

Now from **Tools** sub menu from main menu open **Debug Console**:

<img class="no-shadow" src="./assets/images/screenshots/console.png" alt="Debug console" />

Now you need to generate **Masternode Privkey** for your first masternode. Each masternode requires unique Privkey. Type next command in **Debug console**:

`masternode genkey`

And press Enter. Copy output and save it to the safe place.

<img class="no-shadow" src="./assets/images/screenshots/genkey.png" alt="Masternode genkey" />

You will need this key very soon.

Now you need masternode collateral. In Scope Network collateral is 10 000 XSCP. The tx amount must be **exactly 10 000 XSCP** so you can send it from yourself to yourself. Now you need to wait 15 confirmations before collateral become usable.

Type `masternode outputs` in Debug console to get collateral hash and index:

<img class="no-shadow" src="./assets/images/screenshots/outputs.png" alt="Masternode outputs" />

Add this data to Privkey in safe place you stored before.