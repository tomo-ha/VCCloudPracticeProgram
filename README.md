# VCCloudPracticeProgram\

## What is this?
This code is "VC Cloud Practice Programme" for SMW speedrunners. When performing RLX item swap or Chargin' Chuck item swap, this code determine if the setup is done correctly. On Canoe, you always get cloud into the item box by writing arbitrary codes at $016059 whereas on a real console whether you obtain cloud is determined by the value contained at $7E00E4. Using this programme on virtual console, you can utilise useful functions such as rewind or save state and practice cloud setup repeatedly in a short time!

## How to use this program?
1. Refer to the document below to install hex editor on your Super Mario World on virtual console: https://docs.google.com/document/d/1v_OOxPMX4ztkPQkqe3HeSpazmDA-ljRt7Mv2wd5JrKw/edit
2. Insert the hex codes on hexcodes.txt at the instructed addresses using hex editor.
3. Reset or play from a savestate and perform Chargin' Chuck Item Swap with naked koopa setup.
4. The code you put determines whether you set up correctly or not.

## How does this program work?
If you setup correctly, you can get cloud with "correct" SFX sound. If you do not, nothing is put on the item box with "wrong" SFX sound.
