<p align="center">
<img src="https://raw.githubusercontent.com/myriadmobile/Droar/master/Github/DroarLogo.png">
</p>

[![CI Status](http://img.shields.io/travis/myriadmobile/FBMemoryProfiler-Droar.svg?style=flat)](https://travis-ci.org/myriadmobile/FBMemoryProfiler-Droar)
[![Version](https://img.shields.io/cocoapods/v/FBMemoryProfiler-Droar.svg?style=flat)](http://cocoapods.org/pods/FBMemoryProfiler-Droar)
[![License](https://img.shields.io/cocoapods/l/FBMemoryProfiler-Droar.svg?style=flat)](http://cocoapods.org/pods/FBMemoryProfiler-Droar)
[![Platform](https://img.shields.io/cocoapods/p/FBMemoryProfiler-Droar.svg?style=flat)](http://cocoapods.org/pods/FBMemoryProfiler-Droar)

# FBMemoryProfiler-Droar

This is a plugin for [Droar](https://github.com/myriadmobile/Droar), a single-line installation debugging window.  It adds an integration to use FBMemoryProfiler inline with Droar.

## Overview

The idea behind Droar is simple: during app deployment stages, adding quick app configurations (switching between mock vs live, QA credential quick-login, changing http environments, etc) tend to get written and shipped straight inline with production code.  Droar solves this issue by adding quick configurations that are grouped into one place, and under a single tool.

<p align="center">
<img src="https://media.giphy.com/media/7FfNceqr7lhqyqsrW6/giphy.gif">
</p>

## Installation

FBMemoryProfiler-Droar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FBMemoryProfiler-Droar"
```

No code is required to use this plugin.  Just start Droar normally.  When this plugin is loaded, it will start FBMemoryProfiler, and add a section in Droar to launch FBMemoryProfiler.

If Droar is never started, this plugin will take no action.

## Author

Nathan Jangula, Myriad Mobile, developer@myriadmobile.com

## License

FBMemoryProfiler-Droar is available under the MIT license. See the LICENSE file for more info.



