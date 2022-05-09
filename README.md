# DiceDemo
Implementation of simple game written in Lua with LOVE framework

Source: https://www.youtube.com/watch?v=2fGM3KTwDuQ&ab_channel=CodingTech

Links (mentioned in video):
1) http://slackermedia.info/tank/stuff.zip  
2) http://slackermedia.info/tank/dice.ogg  

Building instructions:  
* $ sudo apt-get install lua5.4
* $ sudo apt-get install love

In order to create an executable file:
1) $ zip dice-roller.zip -r font/ img/ snd/ main.lua
2) $ mv dice-roller.zip dice-roller.love
3) $ love dice-roller.love  

In debug mode (inside project directory with main.lua):  
$ love .

