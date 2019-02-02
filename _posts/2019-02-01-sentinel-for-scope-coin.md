---
author: xscp
layout: post
title: Sentinel for Scope Coin
date: 2019-02-01
summary: Sentinel for Scope Coin
categories: [Manual]
featured: false
recommended: true
image: assets/images/sentinel-protocol.jpg
---

# How to install Sentinel for Scope
> Sentinel is an autonomous agent for persisting, processing and
> automating Scope governance objects and tasks. It is a Python
> application which runs alongside the Scope wallet instance on each Scope
> Masternode.

These instructions cover installing Sentinel on Ubuntu 16.04 / 18.04.

### Dependencies

Make sure Python version 2.7.x is installed:

`python --version`

Update system packages and ensure virtualenv is installed:

`$ sudo apt-get update`
`$ sudo apt-get -y install python-virtualenv`

### Install Sentinel

Clone the Sentinel repo and install Python dependencies.

`$ git clone https://github.com/scopecoin/sentinel.git && cd sentinel`
`$ virtualenv ./venv`
`$ ./venv/bin/pip install -r requirements.txt`

## Usage

Sentinel is "used" as a script called from cron every minute.

### Set up Cron

Set up a crontab entry to call Sentinel every minute:

`$ crontab -e`

In the crontab editor, add the lines below, replacing '/path/to/sentinel' to the path where you cloned sentinel to:

`* * * * * cd /path/to/sentinel && ./venv/bin/python bin/sentinel.py >/dev/null 2>&1`

### Test Configuration

Test the config by running tests:

`$ ./venv/bin/py.test ./test`

With all tests passing and crontab setup, Sentinel will stay in sync with scoped and the installation is complete

## Configuration

An alternative (non-default) path to the  scope.conf  file can be specified in  sentinel.conf:

`scope_conf=/path/to/scope.conf`

## Troubleshooting

To view debug output, set the  SENTINEL_DEBUG  environment variable to anything non-zero, then run the script manually:

`$ SENTINEL_DEBUG=1 ./venv/bin/python bin/sentinel.py`