# Project-01

# Your Name
Ella Beihold

# Your Github username
applelushie

# List the things you added for points
Requirements:
Create an interactive fiction story with at least 8 knots. Reminder: a knot starts with === a_knot ===
Included 11 Knots

Create at least one major choice that the player can make. A major choice is something that changes the ending of the story.
Major choice on line 32 which allows you to recieve a important item(chisel) to unlock an ending. The major choice on line 32 is reflected back to the player on line 120.

Include at least one loop ( A knot that references itself )
Two loops from lines 42-70.


Additional 5 points:
[+2] Include more than eight knots
Included 11 knots

[+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
Can pick up item on line 32 and is acknowledged on line 112. Provides player a option to obtain a saucepacket on line 114

[+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
The statistic is how many sauce packets the player has. The statistic is said to the player on line 73. The player starts with 1 sauce packet but can gain another from line 119, which allows access to a "dark" ending string on the CashierTransformation knot on line 138.

[+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
On line 30 it keep track of a visted passage by triggering another message told to the player if you have visited the chicfila_lobby knot on line 70 already. The lines from 28-30 will also only be displayed once since the player can't visit the Entrance knot again after visiting the lobby knot.