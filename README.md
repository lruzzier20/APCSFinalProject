# APCSFinalProject

## Project Idea Description and plan: 
https://docs.google.com/document/d/1RbXgwksxvsVN5DXcPgLm2F2TsYIm_q69ykAL8AaLNTI/edit 

## Brief Description:
We plan to recreate the original 1978 Space Invaders arcade cabinet shooter game in Processing. We want to implement as many features of the Space Invaders and try to replicate the game as much as possible. The Space Invaders game is a shooting game where the player controls a horizontal laser and attempts to survive the onslaught of invaders. The game keeps going until the player fails in resisting the wave or dies. 

## Compile/Run instructions: 
Open in processing and press run button

## UML Diagram Log:
* First diagram: https://imgur.com/wf7BGWW
* Second diagram (updated 6/1): https://imgur.com/a/QPMDZcy
* Final diagram (updated 6/10): https://imgur.com/a/wdyrPTJ

## Git Development Log:
* ### 5/24/21:
  * Got together to talk about the project structure and UML setup that has been implemented so far. Gave each other tasks like figuring out invader movement and projectiles.

* ### 5/25/21:
  * Ish: Worked on motion for player and projectiles. Also created a system of tracking game attributes through Game class; currently game class manages player movement and keypresses
  * Log: Created Invader class that will automatically move left, right, and down. Main class creates an ArrayList of these Invaders at designated positions. Coordinated "swarm" movement to follow

* ### 5/26/21:
  * Ish: Worked on projectile - cow colliisions. First I worked on methods to detect collisions and what to do in response. Then I wrote code to make the projectiles aware of other cows by using the Game class as the connection. Implemented this by passing reference to game to store all the cows and projectiles and then compared coordinates of projectiles to every element in cow, so that this way collisions can be detected.
  * Log: Coordinated "swarm" movement created, using a new Swarm object. This object also uses an ArrayList of Invaders like the original implementation, but simplified working with it significantly. Improvements may come in the future, if we can find a way to avoid going through so many loops.

* ### 5/28/21:
  * Ish: Fixed barrier issues 
  * Log: Added speed variable to projectile, as well as fixing some inconsistencies with swarm; bug fixes

* ### 5/31/21:
  * Ish: Managed swarm padding. Also fixed a bug where invaders would overlap and have multiple lives. After that, I made it possible for invaders to shoot and kill the player. Invaders shoot randomly.
  * Log: Added types of invaders with point values for destroying them, swarm invader speedup after destroying them, and some bug fixes.

* ### 6/1/21:
  * Ishraq: Created an updated UML diagram based on current structure. Also messed around with permission modifier to deter future misuse. Also worked continuing rounds after swarms have been killed. Also managed to change Swarm speed based on the round count.

* ### 6/2/21:
  * Log: Added game over screen as well as ability to restart once you have lost

* ### 6/9/21:
  * Log: Added explosion object for when a cow is destroyed, further implementation to follow  
  * Ish: Invaders end game when reaching height of player

* ### 6/10/21:
  * Log: Explosions are now generated on invader death, point values and swarm pattern congruous to original game, and inclusion of red UFO object, also from original game
  * Ish: Worked on visuals. Sprites are now being used and barriers are fancier than before.

