# Y1 Programming Music Toy Assignment
Name: Kurtis Brady Student Number: C23789389

## Credits can be found in the [Credits.md file](https://github.com/kbrady478/Music_Toy/blob/main/Other/Credits.md)

# Description
My project consists of various toggelable looping audio tracks. There are sliders to control the volume and pitch of the individual audio tracks, and an area to type 
in the BPM you want that audio play at. Each have a button to play the sound a single time, a button to pause/play the audio loop, and a mute button. This also extends 
to the metronome in the top left, which has the same functionality aside from pitch shifting, pausing, and sampling. The master volume can be controlled and muted in 
the top right.

# How to use
Simply press the play button to start playing the sound on a loop, control the loop timing by entering a new BPM value, and control the volume and pitch with the 
sliders.

# How it works
The first thing I worked on was a metronome. By using the timeout() function from the Timer node, I was able to call another function to play the audio clip and check 
for diferences in BPM values, or if the current note should be accented. I orignally planned to have a much different project where the user would press a button and it 
would be implemented into an array that would act as a looping system. Due to time constraints with other assignments, I had to expand the functionality of the 
metronome system and adapt it to play different audio clips and recieve signals from different nodes. You can see a few of the notes I had on the original looping 
system in the [Notes.md](https://github.com/kbrady478/Music_Toy/blob/main/Other/Notes.md) file.

# What I am most proud of
While I would have been very proud of the original looping idea, and had a plan on how to go about implementing it, I did feel very proud when I got the metronome 
working, as it was the first thing I had properly made in Godot.
