# RufasCube
RufasCube...looks like a rubic cube but it's a slider, not a twister.  A puzzle that runs on Mac OS-X and GNU Linux.


# RufasCube v 2.61 beta  13jan2016

## What's new (newest at top of this list):


**ver 2.61 -- 19feb16**

* Added Mac binary bundle that acts much more like a typical Mac App.  This app is delivered in the installation directory, but could be moved elsewhere, such as your personal Applications directory [and initiated with a click].
* Generalized utex package.


**ver 2.6 -- 13jan16**

* Added mousewheel zoom control;
* Added flat letter diagram in upper right window;


**ver 2.5 -- 1dec15**

 * Replacing C++ version of RufasCube v2.4 with this Ada version;
 * Improved PNG loader procedure.
 * (c)-key now updates window title when toggling between RgbCube & RufasCube.
 * Now 4 choices for the optional single command line parameter:

	* none => start with RufasCube;  user may toggle to RgbCube;
	* r => start with RgbCube;  user may toggle to RufasCube;

	* g => Solid Green iQube;
	* yg => Yellow iQube with green dots;
	* yr => Yellow iQube with red dots;
	[The objective for any iQube is to convert it to solid red]


**ver 2.1 -- 18nov15**

 * Repaired color error in RGB mode.
 * added iQube options using command line parameters from the set {g,y}.  A 3rd & 4th skin option is now available by using a "g" or "y" command line parameter for a new game named iQube.  The objective of this puzzle is to invert the cube by changing its outer color from green or yellow to red.  And when you do, the letter cues will be in alphabetical order, and the fanfare is sounded.  Several other interesting patterns are also possible as illustrated in the file "iqube0.gif".  Note:  the shuffle keys are not intended for this option, yet can be used anyway for a random and possibly easier (using 1) starting position...plus, the autosolver still functions immediately after randomization.
 * RGB skin version now has improved winner test to allow for all valid solutions.  Note that all the other versions have only 1 valid solution.


**ver 2.0 -- 20oct15**

 * Initial version of this translation of RufasCube to the Ada language.




## what is special about this project?
Uses the Ada programming language and fully modern OpenGL methods with textures, shaders and uniforms.  Achieves version 3.3 core profile contexts, and compiles and runs on both GNU/Linux and Mac OS-X systems.  This project serves as a testbed for learning the complexities of modern OpenGL and GLSL.

Focusing on portability and freedom, no coding effort or compromise has been made to accomodate proprietary operating systems.  It relies on a thin SDL2 binding from Dan Vazquez, a thin OpenGL binding from "Lumen", a PNG reader by Stephen Sanguine, and SFML-Audio (because of its elegant audio interface).

The Ada bindings used are thin, so the relationship to C++ methodology is quite transparent.  Developers should note that these Ada bindings are usable as a standalone library for most any OpenGL project that uses Ada.

## RufasCube Game Introduction
RufasCube is NOT another Rubic's Cube. It's a whole new kind of puzzle. A 3x3x3 arrangement of cubelets with the center one missing allows sliding permutations. After a randomization, the goal is to restore the cube to its original configuration based on color and alphabetic hints.

Dragging the cursor rotates the cube for a better view angle.

Clicking the cursor on a cubelet adjacent to the empty space will slide it into that empty space.  On laptops you may also hit <return> when the cursor is on the cubelet of choice to select and slide it.  On MacBooks, a 2-finger tap on the touchpad does the job.

As indicated on screen, <h> will toggle a help screen.

Note that <c> will toggle an alternate skin Color.  One looks like a rubic cube coloring, and the other is an RGB coloring where red increases in the X-direction, green increases in the Y-direction, and blue in the Z-direction.

Works on Macs running OS-X and PCs running GNU/Linux.




## required for running:
-------------------------------------------
* graphics card & driver that supports OpenGL version 3.3 or later;
* GNU/Linux or a Mac running OS-X (even Yosemite & ElCapitan);
* rufascube_gnu is the executable name on GNU/Linux.
* rufascube_osx is the executable for Mac OS-X.


## Open Source libraries required for building:
-------------------------------------------
* systems:  OS-X or GNU/Linux
* a recent gnat compiler
* the included "libs" directory contains Ada interfaces;
* see example scripts;
* Note that the Ada interface to SFML-AUDIO (snd4ada_hpp.ads) was created with the command:
  "g++ -c -fdump-ada-spec -C snd4ada.hpp"
  which references a minimalistic C++ utility snd4ada.


## Running rufascube:
-------------------------------------------
Unzip the archive and you will see a new directory appear with a name like "bundle_<date>", that you should rename to something like "cube_install_directory".  

Linux users should then cd to cube_install_directory, then type "rufascube_gnu" to start the game.

Mac users please note:  this game is initiated by opening a terminal, navigating to the cube_install_directory, and typing "rufascube_osx" on the command line.  Note also that a 2-finger-swipe simulates the mouse wheel on a MacBook.

The cube_install_directory should contain a subdirectory named "data".  It contains shaders and sound data.

One optional command-line parameter can be either:
* none => start with RufasCube;  user may toggle to RgbCube;
* r => start with RgbCube;  user may toggle to RufasCube;

* g => Solid Green iQube;
* yg => Yellow iQube with green dots;
* yr => Yellow iQube with red dots;


The RGB version loads a different "skin" based on an RGB color scheme whereby position along X,Y,Z axis determines RGB-color content.  The first, original version has the appearance of a Rubic's cube.  The 3rd & 4th represent an iQube as discussed above, with a totally different goal of transforming the outer surface of the cube to entirely RED.

As indicated on screen, <h> will show a help screen.  As long as you are not in the iQube mode, the <c> key will toggle between the RgbCube and the RufasCube at any time.  The mousewheel controls zoom.


---------------------------------------------------------------------------
Open source Ada developers are welcome to help improve or extend this game.

Developer or not, send comments, suggestions or questions to:

<fastrgv@gmail.com>



## Build instructions for RufasCube:

Two [pre-compiled] binary executables are provided, one for gnu/linux and one for OS-X.  The linux binary, rufascube_gnu, is intended to run in the presence of the directory "libs", which contains some dynamically loaded libraries that can be, but need not be present on a target system:  SFML, SDL2

No Makefile is provided, but build scripts are used.  Suggestions for improving the build process are welcome.

-------------------------------------------------------
MacOSX:

<ocmp.sh>:  build script for generating a portable executable that will run on most OS-X platforms whether or not they have non-standard libraries SDL2 or SFML installed.  I used this to build the executable that I deliver, named rufascube_osx.  Macs with a recent but standard configuration of OS-X should be able to rebuild using this script.

------------------------------------------------------
GNU/Linux:  

<lcmp.sh>:  utilizes the uncommon relocatable libraries (mainly SDL2, SFML) that are delivered in this bundle under ./libs/.  This is used to build the dynamically-linked [gnu/linux] executable, which should run in the presence of ./libs, whether or not your system has those libraries installed.  This was used to create the executable named rufascube_gnu.  If it doesn't run on your linux distro, you will have to try to build the executable yourself.  In that case, it is hoped that this script <lcmp.sh> will work for you.  The intent was to provide all the needed interface/include files under ./libs/.



------------------------
## legal mumbo jumbo:


RufasCube itself is covered by the GNU GPL v3 as indicated in the sources:


 Copyright (C) 2015  <fastrgv@gmail.com>

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

