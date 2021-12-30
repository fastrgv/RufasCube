AutoSolver at work:
![screenshot](https://github.com/fastrgv/RufasCube/blob/master/rcube2.gif)

![screenshot](https://github.com/fastrgv/RufasCube/blob/master/seven.gif)



# RufasCube
RufasCube...looks like a rubic cube but it's a slider, not a twister.  A puzzle that runs on Windows, OS-X and GNU Linux.

Click on the large 7zip file under releases for all source & binaries or try this link:

https://github.com/fastrgv/RufasCube/releases/download/v4.4.4/rc15nov21.7z

Type "7z x filename.7z" to extract the archive.

#### Note to github downloaders: Please ignore the "Source code" zip & tar.gz files. (They are auto-generated by GitHub). Click on the large 7z file under releases to download all source & binaries (Windows,Mac & Linux). Then, type "7z x filename" to extract the archive. 











# RufasCube using OpenAL audio, GLFW, FreeType Fonts (TTF)

## Latest Revision:



**ver 4.4.5 -- 31dec2021**

* Minor changes to WAV files. Additional license texts added.
* Updated OSX build scripts.

**ver 4.4.4 -- 15nov2021**

* Updated glext64.lib.
* Cleaned up libs; prepped rpath for GNAT.
* Updated all GLFW libs to newer [static] version, & scripts.
* Elliminated OpenGL-mipmap error on nvidia nouveau drivers.


### See complete revision history at end of file.



## RufasCube Game Description
RufasCube is NOT another Rubic's Cube. It's a much easier slider puzzle that is incrementally solvable. A 3x3x3 arrangement of cubelets with the center one missing allows sliding permutations. After a randomization, the goal is to restore the cube to its original configuration based on color and alphabetic hints. Now contains a smaller 2x2x2 cube called "Seven", that is an easier version.

Works on Macs running OS-X and PCs running Windows or GNU/Linux.

-----------------------------------------------------------
Featuring

	* no installation
	* no dependencies
	* simply unzip in your Downloads directory, and run.
-----------------------------------------------------------



## Introduction
Dragging the cursor rotates the cube for a better view angle.

Clicking the cursor on a cubelet adjacent to the empty space will slide it into that empty space.  On laptops you may also hit (return) when the cursor is on the cubelet of choice to select and slide it.  On MacBooks, a 2-finger tap on the touchpad works too.

Zooming can be done with a mousewheel, or a 2-finger drag on MacBooks.

As indicated on screen, (h) will toggle a help screen.

Uses FreeType font rendering & TrueType fonts.





-------------------------------------------
## required for running:
* graphics card & driver that supports OpenGL version 3.3 or later;
* Windows, GNU/Linux or a Mac running OSX >= 10.13 (sep2017);


## Setup of Rufascube:
-------------------------------------------

Mac users see "osx-setup.txt".
Windows users see "windows-setup.txt".

Unzip the archive.  On Windows, 7z [www.7-zip.org] works well for this. The proper command to extract the archive and maintain the directory structure is "7z x filename".


Open a commandline terminal, and cd to the install directory.

--------------------------------------------------------------
Windows users may type:

* cube.bat
or
* seven.bat

--------------------------------------------------------------
Mac users note that this game may be initiated in two ways also.  First, by opening a terminal, navigating to the install-directory, and typing:

* "seven_osx" 
or 
* "cube_osx" 

on the command line.  Second by navigating to the installation directory in Finder and clicking the "seven.app" or "cube.app" icons named "RufasSeven" or "RufasCube".  
Note also that a 2-finger-swipe simulates the mouse wheel on a MacBook.

--------------------------------------------------------------
Linux users type:

* cube_gnu
or
* seven_gnu

But if these do not run on linux, the easiest alternative is to install WINE. The Windows executables will run on linux using wine thusly:

	* wine binw64/cube.exe
	* wine binw64/seven.exe


Windows users note: I suggest that you DO NOT try running the linux executables under WSL [Windows Subsystem for Linux; that mode is not supported]. Simply use the windows version.



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

Uses the Ada programming language and fully modern OpenGL methods with textures, shaders, uniforms, sound and actual TTF-lettering.  Achieving version 3.3 core profile contexts, it compiles and runs on Windows, GNU/Linux and Mac OS-X systems.  This project serves as a testbed for learning the complexities of modern OpenGL, GLSL, FreeType fonts. It is buildable using GNU-Ada or AdaCore-Ada.

Focusing on portability, transparency, and open source freedom, this project relies exclusively on F.O.S.S. tools:  the GLFW binding is custom, a FreeTypeAda binding by Felix Krause, a PNG reader by Stephen Sanguine, OpenAL-Audio with a custom binding, and an Ada compiler.

The linux-build is among very few modern OpenGL games where a single pre-built executable can run on multiple Linux distros without 3rd party add-ons!

Finally, the new "live" autosolver is quite sophisticated. It allows invocation at any time and can be used to get a few steps closer, or all the way to a solution, no matter the current state. It shuts down whenever you feel more confident and begin making moves on your own. Solutions are quickly found but may not always be minimal.



-------------------------------------------
## Using the build scripts
* systems:  Windows, OSX or GNU/Linux
* a recent free Ada compiler: GNU/GNAT or AdaCore.


## Build instructions for RufasCube or Seven:


In the following, the "appName" can be either "cube" or "seven".

The build scripts work for AdaCore Ada [with its own g++], but should also work for GNAT from the GNU Compiler Collection, with minor changes. See gcmp.sh.

-------------------------------------------------------
Windows32 => w32buildAll.bat
Windows64 => wbuildAll.bat

Note that the [hard-to-find] 64-bit library file glext64.lib was built using the AdaCore g++ compiler versus glext-src code obtained from Source Forge. You can use it as-is; you need not recreate it.  See glext64.7z.


-------------------------------------------------------
MacOSX => obuildAll.sh

build script for generating a portable executable that will run on most OS-X platforms whether or not they have non-standard libraries GLFWv3 installed.  I used this to build the executable that I deliver, named cube_osx.  Macs with a recent but standard configuration of OS-X, and AdaCore Ada installed should be able to rebuild using this script.

Note: ./alternateBuildScripts/GNocmp.sh shows how to build on OSX using GNU/Ada, and without Xcode, or AdaCore.


------------------------------------------------------
GNU/Linux => lbuildAll.sh

utilizes the uncommon relocatable libraries (mainly GLFW) that are delivered in this bundle under ./libs/gnu/.  This is used to build the dynamically-linked [gnu/linux] executable, which should run  whether or not your system has those libraries installed.  This was used to create the executable named cube_gnu.  If it doesn't run on your linux distro, you will have to try to build the executable yourself.  In that case, it is hoped that these scripts will work for you.
As a last resort, you can use wine to run the Windows EXEs:

	wine binw32/cube.exe
	wine binw32/seven.exe



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

It is my intention to use media with copyrights or licenses that are compatible with GPLv3. Please notify me if you believe there is an incompatibility, and it will be removed. Eg: a CC-by-NC license is NOT GPL compatible.




### SoundFiles .WAV
Sounds are from freesound.org and is covered by the Creative Commons CC0 license documented in the accompanying file ./docs/creativeCommonsCC0.txt.

### ShaderFiles: .glsl, .vs, .fs, .fragmentshader, .vertexshader
GPL v3 license.

### TTF files
GPL v3 license.

### ImageFiles .png [defunct since ttf]
For text-textures were created using gimp and are also covered by the GNU GPL v3 license.



## Acknowledgement:  
In february of 2015 I discovered that RufasCube could be considered a software implementation of a Hungarian "Vadasz" 3x3x3 cube, or another similar puzzle called an iQube, whose goals are an all green or all red outer color.  Peter's Black Hole and Magic Jack are still other incarnations.

For further iqube analysis see:
http://www.jaapsch.net/puzzles/blackhole.htm

I also discovered that the 2x2x2 cube seems to be a software implementation of a Hungarian "Vadasz" cube.

----------------------------------------------
## Download Sites for all my games:
https://github.com/fastrgv?tab=repositories
https://www.indiedb.com/members/fastrgv/games
https://fastrgv.itch.io
https://sourceforge.net/u/fastrgv/profile/
https://gamejolt.com/@fastrgv/games

## Revision History:

**ver 4.4.3 -- 21oct2021**
* Improved adaOpenAL binding code...rufascube is now buildable with [GNU Compiler Collection] GNAT, as well as all AdaCore versions.
* Besides Win64, I now provide a Win32 build, to support older platforms.

**ver 4.4.2 -- 14oct2021**
* Enabled normal window exit.
* Updated libraries.

**ver 4.4.1 -- 17mar21**
* Improved cube bkgd coloring, lettering.
* Repaired problem with shuffle level 5.

**ver 4.4.0 -- 03mar21**
* Switch back to GLFW thin binding.
* Created "live" autosolver initiated at any time by the (s)-key.
* Undo shuffle is still available by the (=)-key.
* Completely new sound system using OpenAL binding;
* Updated all glfw libs to v3.3.3.
* Assured that OpenGL v3.3 is sufficient to run this app.
* Improved font anti-aliasing thru corrected OpenGL code parameters.
* Added restart=unscramble option.

**ver 4.x.x -- 2020**
* Improved help screen.
* Added m-key-toggle to mute move-sounds.
* Simpler, identical code for 3 platforms; simpler build process.
* Added 2x2x2 cube called "Seven", to delivery.
* Elliminated command line parameters. Allows in-game-switching between alternate skins and the primary RGB coloring. Thusly, all variants may be played as a Mac-Bundle on OSX.

**ver 2.5 -- 1dec15**
* First Ada version.

------------------------------------------------


