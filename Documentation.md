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

God Mode V2 works because the game has a remote to calculate damage (like wise INF HP) and i just move it to a random ass location in a temp folder it makes to not let the game fire it (FUCK YOU DEVS HAHAHAHAHA)


Changelog: V0.61BUSTER (named after my cat Buster) {
Finally added a less client sided god mode,
some secret features ;)
}

Features (listed off memory)

Inf Hp
Give HP
INF Damage gaster blasters and spears
2 different god modes (excluding inf hp god mode)
TP to secret bosses
some other stuff i don't fucking know i'm listing off memory

# -Plans: 

# -Planning to make a different version for the christween place (soon..)
# -~~Planning to make a less client sided god Mode (Stay tuned)~~ (DONE)
# -~~Find a bypass to their anti insta kill upd (fuck you devs x2)~~ FUCK YOU DEVS HAHAHAH
