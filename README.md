AutoSolver at work:
![screenshot](https://github.com/fastrgv/RufasCube/blob/master/rcube2.gif)




# RufasCube
RufasCube...looks like a rubic cube but it's a slider, not a twister.  A puzzle that runs on Windows, OS-X and GNU Linux.

Click on the large 7zip file under releases for all source & binaries or try this link:

https://github.com/fastrgv/RufasCube/releases/download/v4.2.4/kc26oct20.7z





# RufasCube -- using OpenGLAda Binding and FreeType Fonts (TTF).


## What's new (newest at top of this list):

**ver 4.2.4 -- 26oct20**
* Completely removed sfml-audio sound;
* Far simpler sound system is now being used.


**ver 4.2.3 -- 18sep20**
* Updated all glfw libs to v3.3.2.
* Restored 8th [unseen] cubelet when seven is solved in RGB mode.
* Added Windows launchers "cube.bat"/"seven.bat".

**ver 4.2.2 -- 06jun20**
* Fixed sound errors during shuffle.
* Added "seven", a similar but smaller, easier cubic puzzle.


**ver 4.2.1 -- 18apr20**
* Assured that OpenGL v3.3 is sufficient to run this app.
* Added m-key-toggle to mute move-sounds.


**ver 4.2.0 -- 17jan20**
* Improved font anti-aliasing thru corrected OpenGL code parameters.
* Added restart=unscramble option.
* Improved help screen.
* Elliminated command line parameters.
* Now allow in-game-switching between 4 alternate skins and the primary RGB coloring. Thusly, all variants may be played as a Mac-Bundle on OSX.

## See more revision history at end of file




## RufasCube Game Introduction
RufasCube is NOT another Rubic's Cube. It's a much easier slider puzzle that is incrementally solvable. A 3x3x3 arrangement of cubelets with the center one missing allows sliding permutations. After a randomization, the goal is to restore the cube to its original configuration based on color and alphabetic hints. Now contains the smaller 2x2x2 cube called "RufasSeven", that is an easier version.

Dragging the cursor rotates the cube for a better view angle.

Clicking the cursor on a cubelet adjacent to the empty space will slide it into that empty space.  On laptops you may also hit (return) when the cursor is on the cubelet of choice to select and slide it.  On MacBooks, a 2-finger tap on the touchpad works too.

Zooming can be done with a mousewheel, or a 2-finger drag on MacBooks.

As indicated on screen, (h) will toggle a help screen.

Uses FreeType font rendering & TrueType fonts.

Works on Macs running OS-X and PCs running Windows or GNU/Linux.
Note that both 32 and 64 bit builds for Windows are delivered.




## required for running:
-------------------------------------------
* graphics card & driver that supports OpenGL version 3.3 or later;
* Windows, GNU/Linux or a Mac running OS-X;
* cube_gnu,seven_gnu are the executable names on GNU/Linux.
* cube_osx,seven_osx are the executables for Mac OS-X.
* binw32\cube32.exe,binw32\seven32.exe are the 32-bit executables for Windows.
* binw64\cube64.exe,binw64\seven64.exe are the 64-bit executables for Windows.


## Setup of cube, seven:
-------------------------------------------

Mac users see "osx-setup.txt".
Windows users see "windows-setup.txt".

Unzip the archive.  On Windows, 7z [www.7-zip.org] works well for this.

Open a commandline terminal, and cd to the install directory.

Windows users may type either "seven.bat" or "cube.bat".

Linux users type "cube_gnu" to start the game.  You may also double click the icon for cube_gnu in file manager. 

Mac users note that this game may be initiated in two ways also.  First, by opening a terminal, navigating to the install-directory, and typing "cube_osx" on the command line.  Second by navigating to the installation directory in Finder and clicking the "cube.app" icon named "RufasCube".  Note also that a 2-finger-swipe simulates the mouse wheel on a MacBook.

**Likewise for "seven"**
EG: binw32\seven32.exe or seven_osx or seven_gnu

The install-directory should contain a subdirectory named "data".  It contains shaders and sound data.




## Running rufascube(3x3x3):
-------------------------------------------

The primary RGB "skin" is based on an RGB color scheme whereby position along X,Y,Z axis determines RGB-color content.  

The first alternate skin has the appearance of a Rubic's cube when solved, after a preliminary scramble.  The other 3 alternate skins, which do not need scrambling (they are already scrambled) represent an iQube with a totally different goal of transforming the outer surface of the cube from its initial appearance to entirely RED.  In all cases, the lettering will assist you in solving the puzzle.  When solved the layers of letters are in alphabetical order:





-----------
	a b c
	d e f
	g h i
-----------
	j k l
	m . n
	o p q
-----------
	r s t
	u v w
	x y z
-----------







iQubes can initially be a) solidGreen; b) yellow with green dots; c) yellow with red dots.
And they all become solid red when solved.


As indicated on screen, (h) will show a help screen.  

The mousewheel controls zoom.

More options (as indicated by the help screen):

* (t)-key Toggles between the primary RGB colors and the currently selected alternate skin, without resetting puzzle;
* (c)-key Cycles thru 4 alternate skins, but this resets puzzle;
* 1-key, ... 5-key  shuffles the cubelets...1:small-shuffle, 5:maximum-shuffle
* (s)-key or (=)-key solves the cube if done immediately after a shuffle;
* (i)-key or mousewheel zooms-In;
* (o)-key or mousewheel zooms-Out;
* (r)-key => reset to goal configuration (unscramble);
* (m)-key => mute-toggle of sliding sounds;

Finally, the keys (up),(dn),(lf),(rt),(f),(b) are functional but they are only helpful/meaningful when the Coordinate Axes are in "standard" orientation, i.e. x is rightward, y is upward, and z is outward.

### hint
You may find it easier to focus your attention on the 2D representation at the side of the screen.



## Running seven(2x2x2), differences:
-------------------------------------------

This simpler, smaller cube has fewer options.

As indicated on screen, (h) will show a help screen.  The (c) key will toggle between the RGB and Vadasz mode at any time.  Zoom is controlled by the mousewheel, or the zoom keys i/o (In,Out).

More options (as indicated by the help screen):

* 1-key, ... 5-key  shuffles the cubelets
* (s)-key or (=)-key solves the cube if done immediately after a shuffle;
* (i)-key or mousewheel zooms-In;
* (o)-key or mousewheel zooms-Out;
* (m)-key => mute-toggle of sliding sounds;





---------------------------------------------------------------------------
Open source Ada developers are welcome to help improve or extend this game.

Developer or not, send comments, suggestions or questions to:

<fastrgv@gmail.com>



## what is special about this project?

Uses the Ada programming language and fully modern OpenGL methods with textures, shaders, uniforms, sound and actual TTF-lettering.  Achieving version 3.3 core profile contexts, it compiles and runs on Windows, GNU/Linux and Mac OS-X systems.  This project serves as a testbed for learning the complexities of modern OpenGL, GLSL, FreeType fonts and the OpenGLAda binding.

Focusing on portability, transparency, and open source freedom, this project relies exclusively on F.O.S.S. tools:  the OpenGLAda binding from Felix Krause, a FreeTypeAda binding by Felix Krause, a PNG reader by Stephen Sanguine, SFML-Audio with a custom binding, and a GNAT compiler.

The linux-build is among very few modern OpenGL games where a single pre-built executable can run on multiple Linux distros without 3rd party add-ons!  



## Open Source libraries required for building:
-------------------------------------------
* systems:  Windows, OS-X or GNU/Linux
* Xcode g++ compiler, if using OS-X;
* a recent gnat compiler for Windows or Linux;  gnu-ada for OS-X;
* the included directories contain required Ada interfaces;
* see example scripts;
* Note that the (mini-binding) Ada interface to SFML-AUDIO (snd4ada_hpp.ads) was created with the command:
  "g++ -c -fdump-ada-spec -C snd4ada.hpp"
  which references a minimalistic C++ utility snd4ada.


## Build instructions for RufasCube or Seven:

In the following, the "appName" can be either "cube" or "seven".

Four [pre-compiled] binary executables are provided, one for gnu/linux, one for OS-X, and two for Windows.  The linux binary, cube_gnu, is intended to run in the presence of the directory "libs", which contains some dynamically loaded libraries that can be, but need not be present on a target system:
GLFWv3, SFML, FLAC, ogg, vorbis, & openal.

Normally, the following build scripts are used;  and due to a recent script change, a Windows or linux build machine need not have a C++ compiler installed.  Only GNAT is required.

-------------------------------------------------------
Windows32 => wcmp32.bat appName

Windows64 => wcmp64.bat appName

-------------------------------------------------------
MacOSX => ocmpss.sh appName

build script for generating a portable executable that will run on most OS-X platforms whether or not they have non-standard libraries GLFWv3 or SFML installed.  I used this to build the executable that I deliver, named cube_osx.  Macs with a recent but standard configuration of OS-X should be able to rebuild using this script.

------------------------------------------------------
GNU/Linux => lcmpd.sh appName

utilizes the uncommon relocatable libraries (mainly GLFW, SFML) that are delivered in this bundle under ./libs/.  This is used to build the dynamically-linked [gnu/linux] executable, which should run in the presence of ./libs, whether or not your system has those libraries installed.  This was used to create the executable named cube_gnu.  If it doesn't run on your linux distro, you will have to try to build the executable yourself.  In that case, it is hoped that this script (lcmpss.sh) will work for you.  The intent was to provide all the needed interface/include files under ./libs/.



### Link Problems during linux build:

On a linux build machine, you might have minor link errors, depending on its configuration.  If you are missing "libz", you can simply copy "libz.so" from /usr/gnat/lib/gps/ into /usr/local/lib/.  If "libGL" cannot be found, this literally means "libGL.so" was absent.  But you might have "libGL.so.1" present.  In this case, simply create a softlink by changing to the libGL directory, then type the line:

sudo ln -s libGL.so.1 libGL.so  (and enter the admin password)

whence the linker should now be able to find what it wants.  But if there is more than one file libGL.so present on your system, make sure you use the best one;  i.e. the one that uses your accelerated-graphic-driver.



------------------------
## legal mumbo jumbo:


RufasCube itself is covered by the GNU GPL v3 as indicated in the sources:


 Copyright (C) 2020  <fastrgv@gmail.com>

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

## Media Files for RufasCube,Seven:


### General Note
The particular choice of sound files delivered are not essential to the function of the game and are easily replaced.  This software is primarily intended as a tutorial example of modern OpenGL methods.  The only requirements are that sounds be in WAV format.

### SoundFiles
Sounds are from freesound.org and is covered by the Creative Commons Attribution noncommercial license documented in the accompanying file creativeCommons.txt.


### Bindings & Utilities

Thanks to Dmitry Kazakov, Felix Krause, and Stephen Sanguine.



## Acknowledgement:  
In february of 2015 I discovered that RufasCube could be considered a software implementation of a Hungarian "Vadasz" 3x3x3 cube, or another similar puzzle called an iQube, whose goals are an all green or all red outer color.  Peter's Black Hole and Magic Jack are still other incarnations.

I discovered on 10feb2015 that Seven seems to be a software implementation of a Hungarian "Vadasz" 2x2x2 cube.


For further iqube analysis see:
http://www.jaapsch.net/puzzles/blackhole.htm

----------------------------------------------
## Best Download Site for all my games:
https://github.com/fastrgv?tab=repositories


## Revision History:

**ver 4.1.9 -- 14jan20**

* Added Restart option;
* Corrected logic error during solve.
* Enhanced portability of linux version game.
* Updated to GLFW v3.3.1 (released 1jan2020).


**ver 4.1.8 -- 04jan20**

* Improved coding in textman.adb to reduce loop contents, remove duplicates.
* Improved help screen, key assignments.
* Improved build scripts for MsWin.
* Moved code into ./src/, along with ./adabindings/.


**ver 4.1.7 -- 26nov19**

* Repaired a library problem with GNU/Linux build that limited portability.
* No problems with Mac/OSX or M.S. Windows builds.


**ver 4.1.6 -- 11mar19**

* Added closeWindow handler;
* Upgraded to OpenGLAda-0.7.0;
* Font now resized per zoom level;
* High contrast 3D fonts used now;

**ver 4.1.5 -- 29dec18**

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


**ver 4.1.2 -- 02apr18**

* Improved & simplified OSX build;
* Added GPR build scripts;
* Improved function names in matutils;


**ver 3.1.1 -- 02mar18**

* Replaced homemade font with Freetype fonts, yet still using both a) modern OpenGL methods, and b) Felix Krause's thick OpenGLAda binding.


