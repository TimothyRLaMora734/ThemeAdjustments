# ThemeAdjustments
 This is for primarily theming macOS Catalina but could apply to macOS Mojave too

Hello everyone,

Update on the 5th of April 2020.


🙏 We're having a Covid-19 virus pandemic with the more _"friendly name"_ of *Corona* (because the virus appears to have crowns attached to it)  these waking moments.


# THAT DOESN'T STOP THIS DOCUMENT FROM BEING UPDATED WITH NEW INFORMATION 👊

Let's get started on the wall of text - if you're ready? Okay, you are? Great! 😜

### HERE'S AN UPDATE WITH REGARDS TO THEMING MACOS CATALINA.

The author of ThemeEngine, Alex Zielenski has very kindly given permission to sharing the ThemeEngine application

This time around I will be linking to Martin Dietze and his Github profile and his Google Drive where an updated ThemeEngine version is located instead of my own cloud services.
*You can of course build everything yourself from either Alex's main repo or by using Martin's fork of ThemeEngine*

I urge anyone to read up on the changes to ThemeEngine this time around, here:
https://github.com/mbert/ThemeEngine

That particular version is a version that him and I collaborated on - I did the bug fixing and he created the fork that you will see a link to down towards the end of this document.

In this recent ThemeEngine, made popular by Alex,  there's now some new menu items to try.
* one menuitem is Make Mica Pink Again _you'll see why_ 😉

* the other is Import CoreAnimation Archive which is absolutely helpful.


### FIRST THINGS FIRST
* You will need to have your Terminal-wizard fingers prepared for this:

* Disable SystemIntegrityProtection, also called SIP, for access to the OS

* Boot to your macOS Catalina Recovery Partition by holding down **CMD+R** from either a fresh start after shutdown or via a reboot of your computer from a macOS session.

### AFTER DOWNLOADING THEMEENGINE-BUILD MADE AVAILABLE BY *_Martin Dietze_*
https://drive.google.com/file/d/1SJAL-O3dxmwys4cHubYZxN6Z6-h6vBkb/view?usp=sharing

You will have to allow all apps to open, because of the build process. This is my experience at least. Your mileage may vary - as in you might have a different experience than mine.
```
sudo spctl --master-disable
```

 
### NEXT YOU'LL HAVE TO LOCATE THE MENUBAR AND SELECT THE UTILITIES MENU THAT CONTAINS THE TERMINAL. OPEN A TERMINAL AND WRITE IN THE FOLLOWING
```
csrutil disable
```

### THE FOLLOWING IS ADDITIONS OR LIMITATIONS THAT MACOS CATALINA HAS PUT UPON US

to enable write access to macOS Catalina you need to type this in the Terminal:
```
sudo mount -wu /; killall Finder
```

once booted back in to your macOS session or desktop if you will. _Why is this useful - well, you won't be able to replace your theme files if you don't_ 

**NOTE: the entire command mentioned above here will relaunch your Finder session and your copying or moving of files is lost - you'll have lost data if you did not stop these processed beforehand.
**IF you would rather not have the Terminal command above to relaunch your Finder session before you choose it to - then type in the command like this:
```
sudo mount -wu /
```


# WHAT I'VE DONE IN ADDITION TO HELPING GETTING THEMEENGINE WORKING, YOU CAN READ BELOW

I have included a Xcode script that I have put together(with the help of an IRL friend that has coding expertise in an entirely different field than Swift. Thanks, Peter!) that allows the user, with Xcode installed, to create a colored backdrop for macOS Catalina based on the standard System colors that Apple has provided here:
 
[https://developer.apple.com/documentation/appkit/nscolor/standard_colors]()

#### NEW ADDITION FOR APRIL 2020

* An Xcode project that exports a CoreAnimation file (example .caar file included in this repo or archive) which makes it easier to have a specific color and gradient for your theme.
I hope it's laid out easy to see in the Xcode project.

#### PREVIOUS ADDITIONS

* an Xcode project that accepts RGB values which makes it easier to have a specific color for your theme.

RGB values such as these for example
```
255, 255, 255
```
For all white in your exported file.
By using a colorpicker from your favourite image editor you can often decipher the RGB value and then use that as the base for the Xcode project above.
Again, I hope it's laid out easy to see in the Xcode project.


### SUGGESTIONS FOR SUCCEEDING WITH XCODE
I suggest that you read the Xcode project and type in the wanted color in place of the following

```
layer.fillColor = NSColor.systemBlue.cgColor
```
With a change to 
```
layer.fillColor = NSColor.systemGreen.cgColor 
```

This way you'll get a green colored background for your Finder and Application backgrounds.

# WHY AND HOW?

The story behind all this workaround is that Apple apparently introduced the .caar archive format to some of their interface.

I asked the author of ThemeEngine what might be done as I've tested many ways to get around this with some success but ultimately failed in getting it all down into a functioning formula. 
Alex concluded that creating a .caar file and allow for that to be applied instead of a good drag and drop or tinkering with gradients inside ThemeEngine. 

The way around all this is to produce a way for ThemeEngine to allow for import of .caar files and as such have a way to give some colors back to macOS and continue the bit of theming community that is left on the Mac platform.

#### WHAT IS MISSING IN THIS DOWNLOAD AND WHAT IS NEXT?

*_Missing?_*
An absolutely better and free way to create a .caar file. An app for macOS that can create this Core Animation Archive required for further theming of macOS_

*_Next?_*
It would be so appreciated to have some coding-savvy using Swift or Objective-C  that can come up with an app that is more user-friendly.

# ABOUT THE CORE ANIMATION ARCHIVE AND VISUAL APPS TO CREATE SUCH

There's one visual application that I know of that can export .caar files without a hitch and that is Kite Compositor by Joe Rhodes from https://kiteapp.co
This app, if you already have a license, is the premier way to create all sorts of great gradients for the i.e the Finder.

I've searched the market for -that- one free application; it's a dead end. 💀

What we have now is Xcode projects that we can use until something else comes along.

## A SMALL VISUAL TUTORIAL

Instead of typing much more I'd just like to give out an URL to my OneDrive that has an old video that, somewhat jittery, gives an insight as what to do in order to give apply color to Finder and application windows. 
The example in the video is System Preferences and not Finder. This is could have been Mail or Calendar, but System Preferences is a good marker and doesn't have stuff lingering in the background like Calendar if you don't quit out of Calender by CMD+Q  :-P 

Link to the video mentioned on OneDrive: https://1drv.ms/v/s!AjS7xphB5gYlgtgiqUf5Z14ZENodJw?e=vdFvhq


##### I THINK THAT'S ALL FOR NOW 🤷‍♂️
Any questions then just ask. I don't bite .. that often 😘

Note. I'm not a coder, like at all. I followed a tutorial and got some help and by magic it works.

Catch you later,
Allan Nyholm Nielsen
deviantart.com/allannyholm


*Thank you to the following:* 👏

The one and only **Alex Zielenski** for creating ThemeEngine and continue updating it. And for also being a good friend for helping out and putting up with my questions
https://github.com/alexzielenski

**Peter Kjær Guldbæk** who initially helped me create the CAAR Xcode project and make it work. Take a look at his nice photos over on
https://www.pkg.dk

**JustinA** who's been a great help in the conversations we've had

**Martin Dietze (mbert)** who has been a good help in creating this repository on Github and also for being a great friend in particular by keeping me active with themes 😁
https://github.com/mbert/ThemeEngine

**Dominik Bucher** for initially reaching out to chat way back when and reading all my jibber jabber 📞
https://github.com/DominikBucher12

**Guilherme Rambo** for his article which helped me a great deal
https://rambo.codes/ios/2018/11/11/animations-are-assets.html

**Joe Rhodes** for making a trial of Kite Compositor available
https://kiteapp.co
