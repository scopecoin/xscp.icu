---
layout: page
title: About
---

XSCP is a coin project to bring authors reward function to any website. We developed Web Browser extension to place Reward Widget on any website where you can post plain text, add signature or add some kind of description to any type of content. Reward Widget allows anybody who has active Extension and Wallet running locally to reward anybody who shared a XSCP signature easely. Extension connects to Wallet through RPC API calls and making payments on demand. Users w/o active extension continue seeing raw XSCP signature.
Moreover rewards count and amount can be used as content popularity indicator. Read more at Reward Extension section.

**License & Download**

Scope Coin Wallet built for most major platforms

<a href="https://dist.xscp.icu" target="_blank" name="downloads">Download - Scope Coin Wallet</a>

<div class="row downloads">
    <div class="col-sm text-center">
        <img src="{{ site.baseurl }}/assets/images/icons/microsoft.png" />
        <a href="https://dist.xscp.icu/xscp-windows-0.1.2.2.zip" target="">XSCP for Microsoft Windows</a>
    </div>
    <div class="col-sm text-center">
        <img src="{{ site.baseurl }}/assets/images/icons/macos.png" />
        <a href="https://dist.xscp.icu/xscp-macos-0.1.2.2.zip" target="">XSCP for MacOS X</a>
    </div>
    <div class="col-sm text-center">
        <img src="{{ site.baseurl }}/assets/images/icons/ubuntu.png" />
        
        <a href="https://dist.xscp.icu/xscp-linux-0.1.2.2.zip" target="">XSCP for Ubuntu Linux</a>
    </div>
</div>

_ScopeCoin (XSCP) is a project of CRYPTFOUNDRY blockchain projects incubator. All property belongs to contributors. This is Open Source Software and it provides AS IS without any warranty._

**More info**

Find more info in our official Announce Topic

<a href="https://bitcointalk.org/index.php?topic=5096250.0" target="_blank">Scope  Coin Official Announce</a> at BitcoinTalk

#### Extension in Action

![Extension in Action]({{site.baseurl}}/assets/images/screenshot.png)

#### Features

- Built Wallet for all major OS:
    - Windows
    - Linux
    - MacOS X
- Compatible with Bitcoin RPC
- Instant Transactions

    
#### How to Use

Download Wallet. Install extension. Connection extension and Wallet.

[Download](https://dist.xscp.icu){:target="_blank"}. 

In your local ScopeCoin data folder edit <code>scope.conf</code> to something similar to:

<pre class="highlight">
addnode=188.35.187.49
addnode=188.35.187.51
addnode=194.8.131.44
listen=1
server=1
rpcallowip=127.0.0.1
rpcuser=rpcuser
rpcpassword=rpcpassword
</pre>

Run GUI Wallet if you are on Desktop

`./scope-qt`

Or run CLI Scope Daemon if you are on VPS

`./scoped -daemon=1`

Check it working

`./scope-cli getinfo`
