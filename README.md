AutoSolver at work:
![screenshot](https://github.com/fastrgv/RufasCube/blob/master/rcube2.gif)




# RufasCube
RufasCube...looks like a rubic cube but it's a slider, not a twister.  A puzzle that runs on Windows, OS-X and GNU Linux.

Click on the large 7zip file under releases for all source & binaries or try this link:

https://github.com/fastrgv/RufasCube/releases/download/v4.4.0/rc3mar21.7z









# RufasCube using OpenAL audio, GLFW, FreeType Fonts (TTF)

## Latest Revision:

**ver 4.4.0 -- 03mar21**
* Switch back to GLFW thin binding.
* Created "live" autosolver initiated at any time by the (s)-key.
* Undo shuffle is still available by the (=)-key.
* Completely new sound system using OpenAL binding;
* Updated all glfw libs to v3.3.3.
* Assured that OpenGL v3.3 is sufficient to run this app.
* Improved font anti-aliasing thru corrected OpenGL code parameters.
* Added restart=unscramble option.

### See complete revision history at end of file.



## RufasCube Game Introduction
RufasCube is NOT another Rubic's Cube. It's a much easier slider puzzle that is incrementally solvable. A 3x3x3 arrangement of cubelets with the center one missing allows sliding permutations. After a randomization, the goal is to restore the cube to its original configuration based on color and alphabetic hints. Now contains a smaller 2x2x2 cube called "Seven", that is an easier version.

Dragging the cursor rotates the cube for a better view angle.

Clicking the cursor on a cubelet adjacent to the empty space will slide it into that empty space.  On laptops you may also hit (return) when the cursor is on the cubelet of choice to select and slide it.  On MacBooks, a 2-finger tap on the touchpad works too.

Zooming can be done with a mousewheel, or a 2-finger drag on MacBooks.

As indicated on screen, (h) will toggle a help screen.

Uses FreeType font rendering & TrueType fonts.

Works on Macs running OS-X and PCs running Windows or GNU/Linux.





-------------------------------------------
## required for running:
* graphics card & driver that supports OpenGL version 3.3 or later;
* Windows, GNU/Linux or a Mac running OSX >= 10.13 (sep2017);
* cube_gnu, seven_gnu are the executable names on GNU/Linux.
* cube_osx, seven_osx are the executables for Mac OSX.
* cube.bat, seven.bat are for Windows.


## Setup of Rufascube:
-------------------------------------------

Mac users see "osx-setup.txt".
Windows users see "windows-setup.txt".

Unzip the archive.  On Windows, 7z [www.7-zip.org] works well for this.


Open a commandline terminal, and cd to the install directory.

--------------------------------------------------------------
Windows users may type:

* cube.bat
or
* seven.bat

--------------------------------------------------------------
Mac users note that this game may be initiated in two ways also.  First, by opening a terminal, navigating to the install-directory, and typing "seven_osx" or "cube_osx" on the command line.  Second by navigating to the installation directory in Finder and clicking the "seven.app" or "cube.app" icons named "RufasSeven" or "RufasCube".  
Note also that a 2-finger-swipe simulates the mouse wheel on a MacBook.

--------------------------------------------------------------
Linux users type:

* cube_gnu
or
* seven_gnu

The distributed linux executables require glibc v2.14 or newer.  That means if your distribution is older, it might not run, and you will need to recompile.


## Running Rufascube (3x3x3):
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
* (s)-key single-steps toward a solution at any time;
* (=)-key single-steps toward a solution by undoing the shuffle;
* (i)-key or mousewheel zooms-In;
* (o)-key or mousewheel zooms-Out;
* (r)-key => reset to goal configuration (unscramble);
* (m)-key => mute-toggle of sliding sounds;

The keys (up),(dn),(lf),(rt),(f),(b) are functional but they are only helpful/meaningful when the Coordinate Axes are in "standard" orientation, i.e. x is rightward, y is upward, and z is outward.

### hint #1
Linux users note: the Windows executable files will likely run under WINE on linux.

### hint #2
You may find it easier to focus your attention on the 2D representation at the side of the screen.

### hint #3
After a shuffle, the #steps to unshuffle shows at bottom of screen. At this point you can press the (s)-key to see the #steps to the live solver solution. If unshuffling is quicker, then continue pressing the (=)-key to unshuffle; otherwise continue pressing the (s)-key to solve.



## Running seven(2x2x2), differences:
-------------------------------------------

This simpler, smaller cube has fewer options.

As indicated on screen, (h) will show a help screen.  The (c) key will toggle between the RGB and Vadasz mode at any time.  Zoom is controlled by the mousewheel, or the zoom keys i/o (In,Out).

More options (as indicated by the help screen):

* 1-key, ... 5-key  shuffles the cubelets;
* (c)-key Cycles thru 2 alternate skins;
* (s)-key single-steps toward a solution at any time;
* (=)-key single-steps toward a solution by undoing the shuffle;
* (i)-key or mousewheel zooms-In;
* (o)-key or mousewheel zooms-Out;
* (m)-key => mute-toggle of sliding sounds;






---------------------------------------------------------------------------
Open source Ada developers are welcome to help improve or extend this game.

Developer or not, send comments, suggestions or questions to:

<fastrgv@gmail.com>





## what is special about this project?

Uses the Ada programming language and fully modern OpenGL methods with textures, shaders, uniforms, sound and actual TTF-lettering.  Achieving version 3.3 core profile contexts, it compiles and runs on Windows, GNU/Linux and Mac OS-X systems.  This project serves as a testbed for learning the complexities of modern OpenGL, GLSL, FreeType fonts.

Focusing on portability, transparency, and open source freedom, this project relies exclusively on F.O.S.S. tools:  the GLFW binding is custom, a FreeTypeAda binding by Felix Krause, a PNG reader by Stephen Sanguine, OpenAL-Audio with a custom binding, and a GNAT compiler.

The linux-build is among very few modern OpenGL games where a single pre-built executable can run on multiple Linux distros without 3rd party add-ons!

Finally, the new "live" autosolver is quite sophisticated. It allows invocation at any time and can be used to get a few steps closer, or all the way to a solution, no matter the current state. It shuts down whenever you feel more confident and begin making moves on your own. Solutions are quickly found but may not always be minimal.



-------------------------------------------
## Using the build scripts
* systems:  Windows, OSX or GNU/Linux
* Xcode g++ compiler, if using OSX;
* a recent gnat compiler;


## Build instructions for RufasCube or Seven:


In the following, the "appName" can be either "cube" or "seven".

Three [pre-compiled] binary executables are provided, one for gnu/linux, one for OS-X, and one for Windows.  The linux binary, cube_gnu, is intended to run in the presence of the directory "libs", which contains some dynamically loaded libraries that can be, but need not be present on a target system:
GLFWv3, & openal.

Normally, the following build scripts are used;  and due to a recent script change, a Windows or linux build machine need not have a C++ compiler installed.  Only GNAT is required.

-------------------------------------------------------
Windows64 => wbuildAll.bat (ensure 64-bit AdaCore is in path)


-------------------------------------------------------
MacOSX => obuildAll.sh

build script for generating a portable executable that will run on most OS-X platforms whether or not they have non-standard libraries GLFWv3 installed.  I used this to build the executable that I deliver, named cube_osx.  Macs with a recent but standard configuration of OS-X should be able to rebuild using this script.

------------------------------------------------------
GNU/Linux => lbuildAll.sh

utilizes the uncommon relocatable libraries (mainly GLFW) that are delivered in this bundle under ./libs/.  This is used to build the dynamically-linked [gnu/linux] executable, which should run in the presence of ./libs, whether or not your system has those libraries installed.  This was used to create the executable named cube_gnu.  If it doesn't run on your linux distro, you will have to try to build the executable yourself.  In that case, it is hoped that this script (lcmpss.sh) will work for you.  The intent was to provide all the needed interface/include files under ./libs/.



### Link Problems during linux build:

On a linux build machine, you might have minor link errors, depending on its configuration.  If you are missing "libz", you can simply copy "libz.so" from the AdaCore ~/lib/ directory into /usr/local/lib/.  If "libGL" cannot be found, this literally means "libGL.so" was absent.  But you might have "libGL.so.1" present.  In this case, simply create a softlink by changing to the libGL directory, then type the line:

sudo ln -s libGL.so.1 libGL.so  (and enter the admin password)

whence the linker should now be able to find what it wants.  But if there is more than one file libGL.so present on your system, make sure you use the best one;  i.e. the one that uses your accelerated-graphic-driver.

------------------------
## License:


RufasCube is covered by the GNU GPL v3 as indicated in the sources:


 Copyright (C) 2021  <fastrgv@gmail.com>

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



## Acknowledgement:  
In february of 2015 I discovered that RufasCube could be considered a software implementation of a Hungarian "Vadasz" 3x3x3 cube, or another similar puzzle called an iQube, whose goals are an all green or all red outer color.  Peter's Black Hole and Magic Jack are still other incarnations.

For further iqube analysis see:
http://www.jaapsch.net/puzzles/blackhole.htm

I also discovered that the 2x2x2 cube seems to be a software implementation of a Hungarian "Vadasz" cube.

----------------------------------------------
## Best Download Site for all my games:
https://github.com/fastrgv?tab=repositories


## Revision History:


**ver 4.x.x -- 2020**
* Improved help screen.
* Added m-key-toggle to mute move-sounds.
* Simpler, identical code for 3 platforms; simpler build process.
* Added 2x2x2 cube called "Seven", to delivery.
* Elliminated command line parameters. Allows in-game-switching between alternate skins and the primary RGB coloring. Thusly, all variants may be played as a Mac-Bundle on OSX.


**ver 2.5 -- 1dec15**

* First Ada version.

------------------------------------------------

