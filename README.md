AutoSolver at work:
![screenshot](https://github.com/fastrgv/RufasCube/blob/master/rcube2.gif)

![screenshot](https://github.com/fastrgv/RufasCube/blob/master/seven.gif)



# RufasCube
RufasCube...looks like a rubic cube but it's a slider, not a twister.  A puzzle that runs on Windows, OS-X and GNU Linux.

Click on the large 7zip file under releases for all source & binaries or try this link:

https://github.com/fastrgv/RufasCube/releases/download/v4.5.4/rc6oct23.7z


Type "7z x filename.7z" to extract the archive.

* On OSX, Keka works well for 7Z files. The command-line for Keka is:
	* /Applications/Keka.app/Contents/MacOS/Keka --cli 7z x (filename.7z)



### Note to github downloaders: Please ignore the "Source code" zip & tar.gz files. (They are auto-generated by GitHub). Click on the large 7z file under releases to download all source & binaries (Windows & Linux). Type "7z x filename" to extract the archive. Then you can compile your own binaries, or use the pre-built ones provided.












# RufasCube -- using OpenAL audio, GLFW, FreeType Fonts (TTF)

## Latest Revision:



**ver 4.5.4 -- 6oct2023**

* Restored OSX build...but without a bundle.
* Added graceful-shutdown exception-handlers.
* Improved priority parameter in cube solver.
* Dropped Win32 build.


**ver 4.5.3 -- 5dec2022**

* Further improved embedded solvers.
* Discontinued support of Mac/OSX. My 2013 macBookPro died!


**ver 4.5.2 -- 16nov2022**

* Fixed embedded solvers.


### See complete revision history at end of file.



## RufasCube Game Description
RufasCube is NOT another Rubic's Cube. It's a much easier slider puzzle that is incrementally solvable. A 3x3x3 arrangement of cubelets with the center one missing allows sliding permutations. After a randomization, the goal is to restore the cube to its original configuration based on color and alphabetic hints. Now contains a smaller 2x2x2 cube called "Seven", that is an easier version.

Works on PCs running Windows, OSX, or GNU/Linux.

-----------------------------------------------------------
Featuring

	* no installation
	* no dependencies
	* simply unzip in your Downloads directory, and run;
	* or unzip onto a USB flash drive [w/same file format] and run.
-----------------------------------------------------------



## Introduction
Dragging the cursor rotates the cube for a better view angle.

Clicking the cursor on a cubelet adjacent to the empty space will slide it into that empty space.  On laptops you may also hit (return) when the cursor is on the cubelet of choice to select and slide it.

Zooming can also be done with a mousewheel.

As indicated on screen, (h) will toggle a help screen.

Uses FreeType font rendering & TrueType fonts.





-------------------------------------------
## required for running:
* graphics card & driver that supports OpenGL version 3.3 or later;
* Windows, OSX, & GNU/Linux 


## Setup of Rufascube:
-------------------------------------------
Mac/OSX users see "osx-setup.txt".
Windows users see "windows-setup.txt".

Unzip the archive.  

* On Linux & Windows, 7z [www.7-zip.org] works well for this. The proper command to extract the archive and maintain the directory structure is "7z x filename".

* On OSX, the command-line for Keka works thusly:
	* /Applications/Keka.app/Contents/MacOS/Keka --cli 7z x (filename.7z)


Open a commandline terminal, and cd to the install directory.

--------------------------------------------------------------
Windows users may type:

* cube32.bat or cube64.bat
or
* seven32.bat or seven64.bat

In other words, there are both 32-bit and 64-bit Windows executables delivered. They all should work.

Windows users note: I suggest that you DO NOT try running the linux executables under WSL [Windows Subsystem for Linux; that mode is not supported]. Simply use the windows version.


--------------------------------------------------------------
Linux users type:

* cube_gnu
or
* seven_gnu

**If an older Linux system complains that /dev/dsp/ cannot be opened, prepend the command with "padsp",EG:  "padsp (ExeName)".**


On linux if all else fails, an easy alternative is to install WINE. The Windows executables will run on linux using wine thusly:

	* wine binw32/cube.exe
	* wine binw32/seven.exe

--------------------------------------------------------------
Mac OSX users type:

* cube_osx
or
* seven_osx

Note that I no longer provide a Mac-Bundle so these apps must
be started, as above, from the command line.

--------------------------------------------------------------


## Running Rufascube (3x3x3):
-------------------------------------------

Shuffling the cubelets uses random numbers and is not very efficient. Typically unshuffling is a much more lengthy process than solving, and must be done before making any moves on your own. Solving can be started at any time, and can be stopped whenever you want to try to manually complete the solution.

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
* (=)-key single-steps toward a solution at any time;
* (u)-key single-steps toward a solution by undoing the shuffle;
* (i)-key or mousewheel zooms-In;
* (o)-key or mousewheel zooms-Out;
* (r)-key => reset to goal configuration;
* (m)-key => mute-toggle of sliding sounds;


The keys (up),(dn),(lf),(rt),(f),(b) are functional but they are only helpful/meaningful when the Coordinate Axes are in "standard" orientation, i.e. +X is rightward, +Y is upward, and +Z is outward(toward viewer):

* (f)-key => +Z (forward)
* (b)-key => -Z (backward)
* (up)-key => +Y
* (dn)-key => -Y
* (lf)-key => -X
* (rt)-key => +X
* (a)-key => toggles Axes display


### hint #1
Linux users note: the Windows executable files will likely run under WINE on linux.

### hint #2
You may find it easier to focus your attention on the 2D representation at the side of the screen.

### hint #3
After a shuffle, the #steps to unshuffle shows at bottom of screen. At this point you can press the (=)-key to see the #steps to the live solver solution. If unshuffling is quicker, then press the (u)-key to unshuffle;  otherwise continue pressing the (=)-key to step towards the solution. Note that, unlike the de-shuffler, the true solver can be used at any time.



## Running seven(2x2x2), differences:
-------------------------------------------

This simpler, smaller cube has fewer options.

As indicated on screen, (h) will show a help screen.  The (c) key will toggle between the RGB and Vadasz mode at any time.  Zoom is controlled by the mousewheel, or the zoom keys i/o (In,Out).

More options (as indicated by the help screen):

* 1-key, ... 5-key  shuffles the cubelets;
* (c)-key Cycles thru 2 alternate skins;
* (=)-key single-steps toward a solution at any time;
* (u)-key single-steps toward a solution by undoing the shuffle;
* (i)-key or mousewheel zooms-In;
* (o)-key or mousewheel zooms-Out;
* (m)-key => mute-toggle of sliding sounds;






---------------------------------------------------------------------------
Open source Ada developers are welcome to help improve or extend this game.

Developer or not, send comments, suggestions or questions to:

<fastrgv@gmail.com>





## what is special about this project?

Uses the Ada programming language and fully modern OpenGL methods with textures, shaders, uniforms, sound and actual TTF-lettering.  Achieving version 3.3 core profile contexts, it compiles and runs on Windows, OSX, GNU/Linux.  This project serves as a testbed for learning the complexities of modern OpenGL, GLSL, FreeType fonts. It is buildable using GNU-Ada.

Focusing on portability, transparency, and open source freedom, this project relies exclusively on F.O.S.S. tools:  the GLFW binding is custom, a FreeTypeAda binding by Felix Krause, a PNG reader by Stephen Sanguine (using Dmitriy Anisimkov's Zlib for Ada), OpenAL-Audio with a custom binding, and an Ada compiler.

The linux-build is among very few modern OpenGL games where a single pre-built executable can run on multiple Linux distros without 3rd party add-ons!

Finally, the new "live" autosolver is quite sophisticated. It allows invocation at any time and can be used to get a few steps closer, or all the way to a solution, no matter the current state. It can be ignored whenever you feel more confident and want to begin making moves on your own. Solutions are quickly found but may not always be minimal.

Open source Ada developers are welcome to help improve or extend this app.
Developer or not, send comments, suggestions or questions to:
fastrgv@gmail.com



-------------------------------------------



## Rebuild Requirements:
* systems:  Windows, OSX, or GNU/Linux
* a recent Ada compiler;  eg. GNU-Ada...try this link:
	* https://github.com/alire-project/GNAT-FSF-builds/releases



## Build instructions for RufasCube or Seven:


The build scripts work for GNU Ada/g++. A good link follows:

* https://github.com/alire-project/GNAT-FSF-builds/releases/

-------------------------------------------------------

* Windows64 => setpath64.bat + w64buildAll.bat (read ~docs\gnuAdaOnWindows.txt)

The "setpath" scripts assume installation into $HOME\opt\.
You will likely need to edit the scripts for the proper version.

------------------------------------------------------
Mac/OSX => obuildAll.sh

------------------------------------------------------
GNU/Linux => lbuildAll.sh

This script assumes GNU Ada/g++ has been installed into $HOME/opt/. You will likely need to edit the script for the proper version.

utilizes the uncommon relocatable libraries (mainly GLFW) that are delivered in this bundle under ./libs/gnu/.  This is used to build the dynamically-linked [gnu/linux] executable, which should run  whether or not your system has those libraries installed.  This was used to create the executable named cube.  If it doesn't run on your linux distro, you will have to try to build the executable yourself.  In that case, it is hoped that these scripts will work for you.
As a last resort, you can use wine to run the Windows EXEs:

	wine binw32/cube.exe
	wine binw32/seven.exe




------------------------
## License:


RufasCube is covered by the GNU GPL v3 as indicated in the sources:


 Copyright (C) 2023  <fastrgv@gmail.com>

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

* https://github.com/fastrgv?tab=repositories
* https://www.indiedb.com/members/fastrgv/games
* https://fastrgv.itch.io
* https://sourceforge.net/u/fastrgv/profile/
* https://gamejolt.com/@fastrgv/games

## Revision History:

**ver 4.5.1 -- 30sep2022**
* Now using simpler-to-setup GNU Ada for Win64.

**ver 4.5.0 -- 20sep2022**
* Restored Win64 build, now using MSYS2 & mingw64 on Windows.

**ver 4.4.8 -- 16sep2022**
* Removed Win64 build.
* Now using GNU Ada rather than defunct AdaCore compiler.

**ver 4.4.7 -- 16apr2022**
* Reverted linux libraries to exclusively shared format for portability.
* Alternate script for GNU-Ada also works, now.

**ver 4.4.6 -- 18jan2022**
* Eliminated unused Frameworks directory
* Updated linux libs to use static libfreetype.a & libpng16.a
* Updated Windows builds to freetype v2.11.1 DLLs (w32,w64).
* Updated libglfw.


