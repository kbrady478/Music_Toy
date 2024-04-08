# Notes so I don't forget

## Metronome
Need to accent the first note, assuming it stays 4/4 I can do a check to see which beat we are on, should be simple to scale to other time signatures. Can use .change_pitch on the ASP, just make sure to change it back after the sound is played.
I am no longer going to look at time signatures and keep it 4/4, from what I can find it can get extremely complex with time signatures and I don't understand a lot of the words.

## Looping system
For inserting into the array, like ine the case [note 1, wait(253ms), note2], I'd have to measure the amount of miliseconds we are into the wait variable, find the amount of miliseconds after where the note would be implemented, replace the current wait with the first new wait variable, add the new note sound after that, then after that add the second wait period, something like this; [note1, wait(149), new_note, wait(104), note2]. When checking the array I'll have to use classes, one to distinguish notes, other to distinguish wait time. (assuming I can check what type of class it is I don't remember.)

## List of sound files
Might be able to make a file of the classes for the sound files? I'm not sure how referencing it works. Might be better to do it at runtime? Like have the button give the string of the filepath to a variable, change the ASP to that sound, then play, instead of referencing a list of classes that I have to input manually whenever I add something.
