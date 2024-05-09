#!/bin/bash
apt-get update && apt-get -y install git && rm -r /var/cache/apt/archives/
apt-get update && apt-get -y install npm && rm -r /var/cache/apt/archives/