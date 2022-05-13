Author : Adelin Roty
Date : 12 May 2022
Project name : Terminal color themes

This folder contains different themes in a particular format that can be used inside of one of my terminal sessions.
The selected theme should apply in the terminal command line interface itself, but also inside any program launched via the terminal (like Vim,...).

As a reminder : 
	-The CONSOLE or TERMINAL is the hardware itself, i.e. the physical screen used to display things, and the keyboard to send inputs.
		Everything computer-related (programs,...) runs inside what we can consider a terminal.
	-A VIRTUAL TERMINAL (EMULATOR) (abbr. VT(E) ) is a program that abstracts the concept of terminal.
		The VT will simulate a CONSOLE, and give to the user the opportunity to talk like before to compurters.
		Because it is a program, one computer may run multiple VTs, allowing for multiple users to interact at the same time with the computer.
		A single TERMINAL can display multiple VTs on its screen, etc.
		Nowadays, there are no more "real" terminals" (i.e. only a screen connected in a particular way to a computer), even the linux kernels ttys are VTs. 
		Any other VT is a pty.
	-A SHELL is a particular Command Line Interpreter, living inside a VT, that processes formatted human input instructions to translate it in machine language and talk to the operation system.

Keep in mind that these terms have all become interchangeable in conversation.
When someone refers to the terminal, terminal emulator, console, command line, or shell, unless context specifies otherwise, they are probably referring more generally to : That text-based thing with which I control some computer.
I will of course try to be as precise as possible, and use the actual terms here.

Possible color outputs ARE ALWAYS only dependant of the CONSOLE itself.
Depending on the screen model,... some colors just may not be available on the screen output.
Nowadays however, all "relatively"-modern screens can display Truecolor RGB-format colors (24 bits per pixel, 8 bit for each RGB color).

The VT, being a program itself (no hardware limitation by its own), has an internal dummy definition of available colors, that MAY NOT MATCH the one of the TERMINAL it is running in.
If the VT is more restrictive than the CONSOLE (e.g. the VT has 256 colors definition, and the TERMINAL accepts all RGB), then there is no problem (the console is simply not used at full capacity).
However if the VT is less restrictive than the CONSOLE, then the output is unclear (mix of supposedly different colors,...).

I will consider following assumptions : 
Any TERMINAL in which are supposed to run my themes support True Color display (as stated before, this is "almost" alway true).
Almost alls VTs have built-in Truecolor support, except the Linux console VT itself (the famous tty).
I will thus build Truecolor themes.
I will not create my own themes (I don't have the expertise or time), I will simply implement open-source existing ones.
For every theme I implement, I will create one version for Truecolor support, and one version for 8-color support (for the tty) (no 8-bit color support or any other existing in-between format). I will thus simply have to detect if the VT is a tty to select corresponding theme version.

Every theme will be composed of maximum 16 tones which form what is called a color palette (see wikipedia : palette (computing)), from which everything displayed will be taken.
E.g. : 1 tone for background, 1 tone for current line, 1 tone for selection, 1 tone for foreground (text), 1 tone for comment (i.e. 4 content tones), and the rest for accent tones. 

To interact with the VT to change the colors, I will need to use what are called ANSI escape sequences/codes (embedded in input text commands to talk to the terminal directly, I have starred a gitHub talking about it).
