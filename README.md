AutoSolver at work:
![screenshot](https://github.com/fastrgv/RufasCube/blob/master/rcube2.gif)




# RufasCube
RufasCube...looks like a rubic cube but it's a slider, not a twister.  A puzzle that runs on Windows, OS-X and GNU Linux.

Click on the large tar.gz file under releases for all source & binaries or try this link:

https://github.com/fastrgv/RufasCube/releases/download/v4.1.5/rc29dec18.7z






# RufasCube -- using OpenGLAda Binding

## What's new (newest at top of this list):

**ver 4.1.5 -- 31jul18**

* Updated linux ogg/vorbis libs;
* Updated linux, win32 to use SFML v2.5.0;
* Generalized osx/linux compilation scripts;

**ver 4.1.4 -- 26jul18**

* Added some local shared libs to enhance linux portability;
* Updated OpenGLAda to Felix Krause's latest (as of 25jul18);
* Revised all compile scripts, removed unneeded libraries;


**ver 4.1.3 -- 01jul18**

* Updated linux scripts to utilize AdaCore2018 or gnuAda730;
* Updated AdaPngLib, AdaZLib;
* Added 64-bit Windows build;

## See earlier revision history at end of file




## what is special about this project?
Uses the Ada programming language and fully modern OpenGL methods with textures, shaders, uniforms, sound and actual TTF-lettering.  Achieving version 3.3 core profile contexts, it compiles and runs on Windows, GNU/Linux and Mac OS-X systems.  This project serves as a testbed for learning the complexities of modern OpenGL, GLSL, FreeType fonts and the OpenGLAda binding.

Focusing on portability, transparency, and open source freedom, this project relies exclusively on F.O.S.S. tools:  the OpenGLAda binding from Felix Krause, a PNG reader by Stephen Sanguine, SFML-Audio with a custom binding, and a GNAT compiler.



## RufasCube Game Introduction
RufasCube is NOT another Rubic's Cube. It's a whole new kind of puzzle. A 3x3x3 arrangement of cubelets with the center one missing allows sliding permutations. After a randomization, the goal is to restore the cube to its original configuration based on color and alphabetic hints.

Dragging the cursor rotates the cube for a better view angle.

Clicking the cursor on a cubelet adjacent to the empty space will slide it into that empty space.  On laptops you may also hit (return) when the cursor is on the cubelet of choice to select and slide it.  On MacBooks, a 2-finger tap on the touchpad does the job.

Zooming can be done with a mousewheel, or a 2-finger drag on MacBooks.

As indicated on screen, (h) will toggle a help screen.

Note that (c) will toggle an alternate skin Color.  One looks like a rubic cube coloring, and the other is an RGB coloring where red increases in the X-direction, green increases in the Y-direction, and blue in the Z-direction.

Works on Macs running OS-X and PCs running Windows or GNU/Linux.
Note that both 32 and 64 bit builds for Windows are delivered.





## required for running:
-------------------------------------------
* graphics card & driver that supports OpenGL version 3.3 or later;
* Windows, GNU/Linux or a Mac running OS-X (even ElCapitan);
* rufascube_gnu is the executable name on GNU/Linux.
* rufascube_osx is the executable for Mac OS-X.
* rufascube.exe is the executable for Windows.


## Running rufascube:
-------------------------------------------
Windows users please read "windows-setup.txt".  Mac users read "osx-setup.txt".

Unzip the archive.  On Windows, 7z [www.7-zip.org] works well for this.



Open a commandline terminal, and cd to the install directory.

Windows users may type either a) binw32\rufascube32.exe or b) binw64\rufascube64.exe

Linux users type "rufascube_gnu" to start the game.  You may also double click the icon for rufascube_gnu in file manager. 

Mac users note that this game may be initiated in two ways also.  First, by opening a terminal, navigating to the install-directory, and typing "rufascube_osx" on the command line.  Second by navigating to the installation directory in Finder and clicking the "rufascube.app" icon named "RufasCube".  Note also that a 2-finger-swipe simulates the mouse wheel on a MacBook.

The install-directory should contain a subdirectory named "data".  It contains shaders and sound data.

One optional command-line parameter can be either:

* none => start with RufasCube;  user may toggle to RgbCube;
* r => start with RgbCube;  user may toggle to RufasCube;

* g => Solid Green iQube;  goal solid red (alphabetical order);
* yg => Yellow iQube with green dots;
* yr => Yellow iQube with red dots;


The RGB version loads a different "skin" based on an RGB color scheme whereby position along X,Y,Z axis determines RGB-color content.  The first, original version has the appearance of a Rubic's cube.  The 3rd, 4th & 5th represent an iQube as discussed above, with a totally different goal of transforming the outer surface of the cube to entirely RED.  Note, to quickly solve the iQube, shuffle with the (1)-key, then use autosolve by pressing the (s)-key.

As indicated on screen, (h) will show a help screen.  As long as you are not in the iQube mode, the (c) key will toggle between the RgbCube and the RufasCube at any time.  The mousewheel controls zoom.

More options (as indicated by the help screen):

* 1-key, ... 5-key  shuffles the cubelets
* (s)-key or (=)-key solves the cube if done immediately after a shuffle;
* (n)-key or mousewheel moves cube nearer;
* (f)-key or mousewheel moves cube further away;

---------------------------------------------------------------------------
Open source Ada developers are welcome to help improve or extend this game.

Developer or not, send comments, suggestions or questions to:

<fastrgv@gmail.com>



## Open Source libraries required for building:
-------------------------------------------
* systems:  Windows, OS-X or GNU/Linux
* Xcode g++ compiler, if using OS-X;
* a recent gnat compiler for Windows or Linux;  gnu-ada for OS-X;
* the included directories contain required Ada interfaces;
* see example scripts;
* Note that the Ada interface to SFML-AUDIO (snd4ada_hpp.ads) was created with the command:
  "g++ -c -fdump-ada-spec -C snd4ada.hpp"
  which references a minimalistic C++ utility snd4ada.


## Build instructions for RufasCube:

Two [pre-compiled] binary executables are provided, one for gnu/linux and one for OS-X.  The linux binary, rufascube_gnu, is intended to run in the presence of the directory "libs", which contains some dynamically loaded libraries that can be, but need not be present on a target system:
SDL2, SFML, FLAC, ogg, vorbis, & openal.

Normally, the following build scripts are used;  and due to a recent script change, a Windows or linux build machine need not have a C++ compiler installed.  Only GNAT is required.

-------------------------------------------------------
Windows32 => wcmp32a.bat, wcmp32b.bat
Windows64 => wcmp64a.bat, wcmp64b.bat

-------------------------------------------------------
MacOSX => ocmpss.sh:

build script for generating a portable executable that will run on most OS-X platforms whether or not they have non-standard libraries SDL2 or SFML installed.  I used this to build the executable that I deliver, named rufascube_osx.  Macs with a recent but standard configuration of OS-X should be able to rebuild using this script.

------------------------------------------------------
GNU/Linux => lcmpAC18.sh:

utilizes the uncommon relocatable libraries (mainly GLFW, SFML) that are delivered in this bundle under ./libs/.  This is used to build the dynamically-linked [gnu/linux] executable, which should run in the presence of ./libs, whether or not your system has those libraries installed.  This was used to create the executable named rufascube_gnu.  If it doesn't run on your linux distro, you will have to try to build the executable yourself.  In that case, it is hoped that this script (lcmpss.sh) will work for you.  The intent was to provide all the needed interface/include files under ./libs/.

If the delivered linux binary does not run...

* Manually install GNAT GPL from libre.adacore.com/download/.
* Rerun the compile script lcmp.sh.


### Link Problems during linux build:

On a linux build machine, you might have minor link errors, depending on its configuration.  If you are missing "libz", you can simply copy "libz.so" from /usr/gnat/lib/gps/ into /usr/local/lib/.  If "libGL" cannot be found, this literally means "libGL.so" was absent.  But you might have "libGL.so.1" present.  In this case, simply create a softlink by changing to the libGL directory, then type the line:

sudo ln -s libGL.so.1 libGL.so  (and enter the admin password)

whence the linker should now be able to find what it wants.  But if there is more than one file libGL.so present on your system, make sure you use the best one;  i.e. the one that uses your accelerated-graphic-driver.

## Build using GPR:

Copy the appropriate gpr file versions from the ./buildScriptGpr/ directory.  Then execute the driver.  For example on OSX copy these 3 files:

* soundlib_osx.gpr
* app_osx.gpr
* osxgpr.sh

Then execute osxgpr.sh.  Finally, in the case of OSX, you must rename the output to

rufascube_osx

in order for the APP-bundle to function normally.


------------------------
## legal mumbo jumbo:


RufasCube itself is covered by the GNU GPL v3 as indicated in the sources:


 Copyright (C) 2018  <fastrgv@gmail.com>

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You may read the full text of the GNU General Public License
 at <http://www.gnu.org/licenses/>.

## Media Files for RufasCube:


### General Note
The particular choice of sound files delivered are not essential to the function of the game and are easily replaced.  This software is primarily intended as a tutorial example of modern OpenGL methods.  The only requirements are that sounds be in WAV format.

### SoundFiles
Sounds are from freesound.org and is covered by the Creative Commons Attribution noncommercial license documented in the accompanying file creativeCommons.txt.

### ImageFiles (*.png)
For text-textures were created using gimp and are also covered by the GNU GPL v3 license.

### Bindings & Utilities

Thanks to Dmitry Kazakov and Felix Krause.




## Acknowledgement:  
In february of 2015 I discovered that RufasCube could be considered a software implementation of a Hungarian "Vadasz" 3x3x3 cube, or another similar puzzle called an iQube, whose goals are an all green or all red outer color.  Peter's Black Hole and Magic Jack are still other incarnations.

For further iqube analysis see:
http://www.jaapsch.net/puzzles/blackhole.htm

----------------------------------------------
## Best Download Site for all my games:
https://github.com/fastrgv?tab=repositories


## Revision History:

**ver 4.1.2 -- 02apr18**

* Improved & simplified OSX build;
* Added GPR build scripts;
* Improved function names in matutils;


**ver 3.1.1 -- 02mar18**

* Replaced homemade font with Freetype fonts, yet still using both a) modern OpenGL methods, and b) Felix Krause's thick OpenGLAda binding.


**ver 3.1.0 -- 13feb18**

* added prebuilt executables for msWindows;
* added working build script for msWindows;
* Updated scripts to use a) SFML v2.4.2;  b) AdaCore 2017;
* Repaired a memory leak in utex, the OGL text writer.


**ver 3.0.1 -- 28feb17**

* Added mouse wheel zoom.
* Added (n)-key [nearer] and (f)-key [further].
* Removed OpenGLv3.3-deprecated GL-Enum value that could cause an abort.
* Removed development-scaffolding code-fragments for cleaner exposition.
* Updated compile scripts and checked linux version with ldd to ensure a self-contained dynamic library search.  This means it is more likely to run on varied linux distributions without recompilation.


**ver 3.0.0 -- 22feb17**

* Created this new branch that uses OpenGLAda from Felix Krause.


