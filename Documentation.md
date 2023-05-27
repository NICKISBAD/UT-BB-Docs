# UT-BB-Docs
Documentation of my UT:BB GUI (Orion Edition)

Thesis: This idea came to me of revamping it to the orion library when i figured that my previous gui was unusable on mobile.

Credits:- shlexware for orion library, check them out https://github.com/shlexware/Orion/blob/main/Documentation.md

Features:

First off i'd like to explain priorities without splitting them into a million different labels :P

P1 would be Priority 1 or game:GetService("Workspace").Game.Mobs.Dummy

P2 would be Priority 2 or game:GetService("Workspace").Game.Mobs.Dummy2

P3 would be Priority 3 or game:GetService("Workspace").Game.Mobs.Dummy3

and so on.

Infinite HP is REALLY simple, the game uses a remote to do and calculate damage so if you just: reverse this number (ie. Make it negative), you can heal yourself

GSmite is just the remote for the Gaster Blaster with the damage argument being set to "inf"

Secret Bosses are nothing special

a system that detects whether you're in the right game or not (will put in the game accordingly)

How they work:

InfHP and GSmite work because only in VIPs because the networkownership of the enemy's humanoid is none. which means you can do anything w them.
if you were to use InfHP the game would have to account for what's happening on the other player's screen so it would reset your HP back to normal,
Same for GSmite, the blaster wouldn't appear on their screen.



Changelog: V0.6AEFLI{
Added a delete attacks button
made walkspeed+jumppower less janky
Mobile version of GSmite
}

Plans: 

# -Planning to make a different version for the christween place
~~Planning to make a less client sided god Mode (Stay tuned)~~ (DONE)
