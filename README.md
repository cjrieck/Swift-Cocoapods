Swift-Cocoapods
===============

Basic Swift project integrating Cocoapods

**Remember to run `pod install` before editing the project.** That will create a .xcworkspace file in which you'll make all of your changes in.

Whenever you add a new Cocoapod to your Podfile you need to import the library in the `Bridging-Header.h` file. This file can be found in `Swift Cocoapods/Supporting Files/`. That will translate the Objective-C into Swift so you can use the Swift syntax with the library (pretty cool, huh?).