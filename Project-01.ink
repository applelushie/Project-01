/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR saucepacket = 1
VAR order = ""
VAR chisel = 0
VAR loop = -1

-> Entrance_to_Chicfila

== Entrance_to_Chicfila ==
{not chicfila_lobby: You find yourself standing infront of a local Chicfila, armed with your given armored vest, glock, and chicfila sauce packet. You are shaking not knowing why the military drafted you here as you see a large smokestack at the back of the building spewing what smells like plucked chickens.}

{not chicfila_lobby: "Alright soilder show em what you got." says officer Joe, "God forbbid whatever is in there. If you prove yourself useful, then you will  be pardoned for your crimes. Me and the boys will be waiting for ya outside soilder. And may god be with you| "The hell are you doing back here after being in there for a darn minute? Get the fuck back in there before we send you back to jail, god will never have mercy for cowards like you..."}

*[Try bribing with the officer] -> Officer_bribe

+[Walk into the Chicfila] -> chicfila_lobby

== Officer_bribe ==
"NOW GET IN THERE BEFORE I BLOW YOUR HEAD OFF, oh yeah that reminds me, I forgot to give you this chisel. Now head back in, me and the boys will be waiting for ya."

* [Take Chisel and walk into the Chicfila] -> chicfila_lobby
~ chisel = 1

== function advance_scaryplacequotes ==
    ~ loop = loop + 1
    {
        - loop > 1:
            ~ loop = 0
    }
    {
        - loop == 0:
            ~ return "The potent smell of oil and rust seeps out from the kitchen melting the lobby into place. You almost slip onto the ground but catch yourself. The woman watching you from the cash register. Would you like to order sir? said the lady."
        - loop == 1:
            ~ return "The janky environment has no clase place to sit down as the eeire noise of the lights deafen your ability to look past the lies. The woman is unpaitently waiting at the cash register. Are you ready to order sir? said the lady."
    }
    ~ return loop
    
== function advance_shescaryquotes ==
    ~ loop = loop + 1
    {
        - loop > 1:
            ~ loop = 0
    }
    {
        - loop == 0:
            ~ return "Come here and let me fall apart into seperatley wrapped buns for you to eat good sir, whispers the lady crookedly"
        - loop == 1:
            ~ return "Wet brown clumps spill out of her throat as she mur murs, I'm ready to consume when you are fine sir, gurgules the lady uncharmingly"
    }
    ~ return loop

== chicfila_lobby ==
{not Further_Lobby: {advance_scaryplacequotes()} | {advance_shescaryquotes()} }

(I have {saucepacket} saucepacket(s) in my pocket.)

+[Yes, I will order now.] -> CashRegister

*[No, I'm going back outside.] -> Entrance_to_Chicfila

*[No, I want to look around more.] -> Further_Lobby

== CashRegister ==
The woman then says with a smile, "Now what would you like big boy? You look like you are starving"

You can feel the floor rust onto your shoes when you focus on your order

*[I'd like some chicken nuggets and waffle fries]
    ~ order = "chicken nuggets and waffle fries"
     -> CashRegister_Sauce

*[I'd like some macaroni with a single chicken burger]
    ~ order = "macaroni with a single chicken burger"
     -> CashRegister_Sauce

+[I need some more time to think] -> chicfila_lobby

== CashRegister_Sauce ==
She writes down the order with her grease filled pen.

"Would you like some chicfila sauce with that sir?" she says as a fly lands on her eye while her eye tries to pop like a pimple.

*[Yes.] -> CashierTransformation

* {saucepacket > 1} [No, I already have two.] -> OutToTheBoys



== Further_Lobby ==
You feel more claustrophobic the further you walk into the building as the windows are opaque from animal grease and the floor is hard to walk on.

Your radio goes off so you turn it on. Officer Joe says surprisingly, "Holy god almighty you are still alive, keep up the good work kid. On our end, we noticed the black smokestack stopped spewing out smoke, so we figured to let you know just in case god has other plans. Me and the boys will continue playing spin the baton truth or dare while we are waiting. Good luck and may god say the so as well," the radio cuts off and you then remember your current situation

All the seats are worn out with springs jutting out in many directions. You see a chicfila sauce packet underneath a seat glued onto the corroded floor. {Officer_bribe: I could use that chisel officer Joe gave me.}

*[{Officer_bribe: Chisel off the sauce packet}] -> SaucePacket

+[Head back to Cash Register] -> CashRegister

== SaucePacket ==
~ saucepacket = saucepacket + 1
You pick up the saucepacket and slide it down your pocket. "Good thing I recieved it from officer Joe the second time I saw him," you remark to yourself.

*[Head back to lobby] -> chicfila_lobby

== OutToTheBoys ==
"Well that's just a shame. Your order will be out in just a minute," says the cashier

You recieve your food then walk back out the entrance to then notice the police force has you held at gunpoint

"LIGHT IT UP BOYS, THE REAL HUMAN WE SENT IN WOULD'VE DIED BY NOW!"

The police force who brought you here blows your head off without second thought

"So when are those chocolate donuts coming in?" said officer Joe.

-> END

== CashierTransformation ==
{saucepacket > 1: "I admire you brought some more chicfila sauce," the lady arrousingly says. The woman then slowly transforms into a disformed larvae, looking like a mutated brain from a dead corpse. She then grabs you by the legs and suctions her mouth outlet to your young mouth, spewing more chicfila "sauce" into you. Drowning from the sweet and spicy liquid, you faint from the sheer beauty of the chicfila sauce.| "Okay here's 2 sauce packets; Enjoy the rest of your day!" she exclaims. You walk out the chicfila restaurant happlily eating your {order} with your chicfila sauce.}

-> END



