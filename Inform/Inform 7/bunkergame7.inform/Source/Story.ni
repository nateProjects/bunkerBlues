"Bunker Blues" by "Nate Taylor"

Volume Trizbort generated map

book Game State

Use scoring.

Electricity is a truth state that varies. Electricity is false.
Signal sent is a truth state that varies. Signal sent is false.
Shelf leaned is a truth state that varies. Shelf leaned is false.
Rats cleared is a truth state that varies. Rats cleared is false.
The stick turns is a number that varies. The stick turns is 0.

A thing can be freed or unfreed. A thing is usually unfreed.

The Charcoal is a thing. The description is "Lumps of charcoal crushed from the bonsai wood. Insert into the helmet filter to scrub smoke." The charcoal is nowhere.

Rotating is an action applying to one thing. Understand "turn [something]" and "rotate [something]" and "twist [something]" and "throw [something]" and "flip [something]" and "switch [something]" and "press [something]" and "light [something]" and "ignite [something]" as rotating.

Crushing is an action applying to one thing. Understand "crush [something]" and "pound [something]" and "grind [something]" and "mash [something]" and "smash [something]" as crushing.

Shaking is an action applying to one thing. Understand "shake [something]" as shaking.

Instead of shaking the light stick:
	if the player does not carry the light stick:
		say "You need to pick it up first." instead;
	if the stick turns is greater than 0:
		say "The stick is already lit." instead;
	now the stick turns is 150;
	say "You shake the glow stick vigorously. It flares to life."

Instead of shaking something:
	say "Shaking that is pointless."

The carrying capacity of the player is 4.

Fixing-panel is an action applying to nothing. Understand "insert paperclip" and "fix panel" and "repair panel" and "attach paperclip" as fixing-panel.

Instead of fixing-panel:
	if the internal door is open:
		say "The paperclip already bridges the burnt-out wire." instead;
	if the player does not carry the paperclip:
		say "You don't have a paperclip." instead;
	now the internal door is open;
	now the panel is open;
	say "The paperclip shorts out the broken wire and the door slides slowly open on the dwindling emergency power.";
	increase the score by 3.

Instead of inserting the paperclip into the panel:
	try fixing-panel.

Instead of putting the paperclip on the panel:
	try fixing-panel.

After examining the papers for the first time:
	now the paperclip is in Airlock;
	say "As you look at the papers, the paperclip holding them together falls to the floor."

book Regionless Rooms

part Airlock

There is a room called Airlock.

The description of Airlock is "You are standing in a dimly lit airlock of a fallout shelter. You hear the faint hum of the emergency light, and an acrid smell from the fire you escaped lingers in the air.[paragraph break]As you look around the otherwise sterile room, you notice a small control panel on the wall to your left, next to the internal door."

The Emergency Pack is a wearable container in Airlock. The description is "A battered canvas emergency pack with worn straps. Wearing it across your back gives you considerably more carrying capacity."

After wearing the emergency pack:
	now the carrying capacity of the player is 12.

After taking off the emergency pack:
	now the carrying capacity of the player is 4.

The Papers are a thing in Airlock. The description is "Emergency procedures for shelter personnel. In the event of fire, seal the airlock and await rescue. The external door release code is held by the senior officer. To request evacuation, transmit on the emergency frequency using the signal codes from the senior officer's notebook."

A Paperclip is a thing. The description is "A small metal paperclip." The paperclip is nowhere.

The Survival Suit is a wearable thing. The player wears the Survival Suit. The description is "A heavy-duty survival suit, slightly too large and smelling of must. It offers some protection but leaves your head entirely exposed."

The Panel is a container. The panel is closed. The panel is scenery in Airlock. The description of the panel is "[if the panel is open and the internal door is open]The panel hangs open. A paperclip is fused to the circuit board, providing power to the inner door.[otherwise if the panel is open]The panel hangs open. A wire on the circuit board has burnt out, stopping the door from working.[otherwise]A small control panel on the wall next to the internal door. It is closed.[end if]"

The Internal Door is a container. It is closed. It is scenery in Airlock. Understand "internal" as internal door. The description is "The internal door is made out of metal."

Instead of opening the internal door:
	say "You'll need to find some other way to do that - try examining the panel." instead.

The External Door is a lockable container. It is closed. It is locked. It is scenery in Airlock. Understand "external" and "blast" as external door. The description of the external door is "[if the external door is open]The blast door stands open, the wasteland visible beyond.[otherwise if the external door is unlocked]The blast door is powered and unlocked - you could open it.[otherwise if electricity is true]The blast door is powered but locked. It needs the door release code.[otherwise]A heavy blast door leading out to the wasteland. The electronic lock needs power to operate.[end if]"

Instead of unlocking the external door with something:
	say "It doesn't take a key - it needs the door release code, typed in on the radio." instead.

Instead of opening the external door when the external door is locked:
	if electricity is false:
		say "The blast door needs power to operate." instead;
	say "The blast door is locked. It needs the door release code." instead.

South of Airlock is Main Corridor.
North of Airlock is Wasteland.

Instead of going south from Airlock when the internal door is closed:
	say "You'll need to find some other way to do that - try examining the panel." instead.

Instead of going north from Airlock when the external door is closed:
	say "The blast door is closed." instead.

part Wasteland

There is a room called Wasteland.

The description of Wasteland is "You step out into the wasteland. The air, though acrid, fills your lungs. In the distance a rescue vehicle is already closing in - someone heard your signal."

South of Wasteland is Airlock.

Every turn when the location is Wasteland:
	end the story finally saying "You have escaped the bunker".

part Main Corridor

There is a room called Main Corridor.

The description of Main Corridor is "[if electricity is true]The main corridor runs the full length of the bunker under steady, bright fluorescent light - a relief after the emergency flicker. Rows of painted-steel doors line each side, their stencilled numbers sharp and clear.[otherwise]Fluorescent strips flicker overhead, casting a sickly pallor over the metal-lined corridor. Rows of identical painted-steel doors line each side, their stencilled numbers faded to near-illegibility.[end if]"

A Light Stick is a thing in Main Corridor. The description of the light stick is "[if the stick turns is greater than 0]A chemical glow stick, giving off a faint light.[otherwise]A chemical glow stick. Shake it to activate; reheat it on the oven when it fades.[end if]"

The Cleaning Bot is scenery in Main Corridor. Understand "tibbles" as the cleaning bot. The description is "A squat cleaning bot, its sensor array sweeping slowly. It zaps anything it reads as vermin - carrying a lit glow stick marks you as crew, not a target."

Instead of taking the cleaning bot:
	say "The bot is built to resist exactly that sort of interference. Leave it to its work." instead.

Instead of attacking the cleaning bot:
	say "Attacking the bot would be extremely unwise. It is armed and considerably more durable than you." instead.

South of Main Corridor is WE Corridor.
East of Main Corridor is Bunk Room.
West of Main Corridor is Canteen.
Southeast of Main Corridor is Gym. Northwest of Gym is nowhere.
Southwest of Main Corridor is Lounge. Northeast of Lounge is nowhere.

part Canteen

There is a room called Canteen.

The description of Canteen is "Rows of moulded plastic chairs sit askew around bolted-down tables, their surfaces sticky with the residue of years of institutional meals. A serving hatch at the far end stands open, the kitchen beyond cold and still."

The Coffee Maker is scenery in Canteen. The description is "It's just an ordinary coffee maker."

A Coffee Filter is a thing. The description is "A circular paper coffee filter, slightly damp from the machine. It could be fitted into a helmet's breathing port to filter out particulates." The coffee filter is nowhere.

After examining the coffee maker for the first time:
	now the coffee filter is in Canteen;
	say "Examining the coffee maker reveals a circular paper coffee filter."

South of Canteen is Kitchen.

part Bunk Room

There is a room called Bunk Room.

The description of Bunk Room is "Six pairs of metal bunk beds line the walls, their thin mattresses still bearing the impressions of whoever last slept here. A dog-eared paperback and a cracked photograph on one of the bedside shelves are the only signs anyone ever called this home."

South of Bunk Room is Latrine.
East of Bunk Room is Closet.

part Closet

There is a room called Closet.

The description of Closet is "A cramped storage closet barely wider than your shoulders, its shelves mostly stripped of whatever was once kept here. The air is stale with the smell of old wool and something faintly chemical that you can't quite place."

The Jacket is scenery in Closet. The description is "It is Bob's jacket. You miss Bob."

A Code Book is a thing. Understand "codebook" and "notebook" as the code book. The description is "A small, well-thumbed notebook containing radio signal codes and door access codes, written in a cramped but legible hand." The code book is nowhere.

After examining the jacket for the first time:
	now the code book is in Closet;
	say "As you look inside the jacket a small notebook falls from one of the pockets."

part Latrine

There is a room called Latrine.

The description of Latrine is "A row of lidded steel lavatories and a pair of cracked porcelain sinks occupy this narrow utility room. A persistent drip somewhere keeps time in the silence, and the overhead strip light hums with the effort of staying on."

A Toilet Brush is a thing in Latrine. The description is "A long-handled toilet brush, not particularly pleasant to handle but sturdy enough to clear a blocked pipe."

part Gym

There is a room called Gym.

The description of Gym is "[if the helmet is freed and the severed hand is nowhere]A compact exercise room, weight racks still overturned, the treadmill on its side. The crewman's body remains pinned beneath the weight cage - helmetless, one hand severed at the wrist.[otherwise if the helmet is freed]A compact exercise room, weight racks still overturned, the treadmill on its side. The crewman lies pinned beneath the weight cage, helmetless now.[otherwise]A compact exercise room that took the worst of the earthquake - weight racks overturned, a treadmill on its side, rubber matting buckled and torn. In the far corner a dead crewman lies pinned beneath a toppled cage of weights, still wearing his helmet.[end if]"

The Crewmate is scenery in Gym. Understand "body" and "crewman" and "corpse" and "dead" as the crewmate. The description of the crewmate is "[if the helmet is freed and the severed hand is nowhere]The crewman lies pinned under the weight cage, helmetless and missing a hand. There is nothing more to take from him.[otherwise if the helmet is freed]The crewman lies pinned under the weight cage, helmetless now. One hand remains - you could sever it if you need it for the biometric scanner.[otherwise]A dead crewman pinned under fallen gym equipment, still wearing his sealed helmet. The joints are seized with rust - something might free them up.[end if]"

Instead of taking the crewmate:
	say "The body is too heavy to move, and there is nothing to be gained by trying." instead.

Instead of attacking the crewmate:
	say "He is already dead. You need to stay focused." instead.

The Helmet is a wearable container in Gym. The description of the helmet is "[if the charcoal is in the helmet]The helmet has a charcoal-packed coffee filter fitted - a crude but effective smoke mask.[otherwise if the coffee filter is in the helmet]The helmet has a coffee filter fitted into its breathing port. Pack it with charcoal to complete the mask.[otherwise if the helmet is freed]A sealed helmet, freed from the body. Fit a filter to make it a smoke mask.[otherwise]A sealed helmet, seized up with rust on the dead crewman. It could be freed with WD40.[end if]"

Instead of taking the helmet when the helmet is unfreed:
	say "The helmet is seized up with rust on the dead crewman. You'll need to free it up first." instead.

Instead of wearing the helmet when the helmet is unfreed:
	say "The helmet is seized up with rust on the dead crewman. You'll need to free it up first." instead.

Spraying is an action applying to one thing. Understand "spray [something]" as spraying.

Instead of spraying the helmet:
	if the player does not carry the WD40:
		say "You need something to spray with." instead;
	if the helmet is freed:
		say "The helmet joints are already freed up." instead;
	now the helmet is freed;
	say "You spray WD40 onto the rusted joints. With a series of creaks the helmet comes free from the body.";
	increase the score by 5.

Instead of inserting the coffee filter into the helmet:
	if the helmet is unfreed:
		say "You need to free the helmet from the body first." instead;
	if the coffee filter is in the helmet:
		say "There is already a filter fitted into the helmet." instead;
	say "You fit the coffee filter into the helmet's breathing port.";
	increase the score by 5;
	continue the action.

Instead of inserting the charcoal into the helmet:
	if the coffee filter is not in the helmet:
		say "You need to fit a filter into the helmet before adding charcoal." instead;
	if the charcoal is in the helmet:
		say "The filter is already packed with charcoal." instead;
	say "You pack the charcoal into the filter. The helmet is now a crude but effective smoke mask.";
	increase the score by 5;
	continue the action.

After taking off the helmet when the charcoal is in the helmet:
	say "The smoke immediately starts catching at your throat again."

The Attached Hand is scenery in Gym. Understand "hand" as the attached hand. The description of the attached hand is "The hand of the dead crewman. You could sever it for use on a biometric scanner."

The Severed Hand is a thing. Understand "hand" as the severed hand. The description of the severed hand is "A severed hand. It might work on a biometric scanner." The severed hand is nowhere.

Severing is an action applying to one thing. Understand "cut [something]" and "sever [something]" and "saw [something]" as severing.

Instead of severing the attached hand:
	if the player does not carry the bread knife:
		say "You'll need something sharper than that!" instead;
	now the severed hand is in Gym;
	now the attached hand is nowhere;
	say "It's grisly work but you managed to separate the hand from the body.";
	increase the score by 5.

Instead of severing the severed hand:
	say "It's already severed." instead.

South of Gym is Med Bay.
West of Gym is Main Corridor.

part Med Bay

There is a room called Med Bay.

The description of Med Bay is "Banks of white-painted metal cabinets line the walls, most drawers hanging open and rifled through in evident haste. A single examination table sits beneath a surgical light that will never illuminate anything again."

A Pestle is a thing in Med Bay. The description is "A heavy pestle, good for crushing things."

The Med Window is scenery in Med Bay. Understand "porthole" and "window" as the med window. The description is "A small porthole-style window set into the south wall, looking out toward the pump room. You note it as a potential entry point - but not from this side. You'd need to access the pump room from the generator level."

South of Med Bay is WE Corridor.

part Kitchen

There is a room called Kitchen.

The description of Kitchen is "Stainless steel work surfaces run the length of this institutional kitchen, a few unwashed pots still sitting in the sink where someone left them in a hurry. The pantry to the south and storeroom to the west are a reminder of how large a crew this bunker was built to feed."

A Bread Knife is a thing in Kitchen. The description is "A long serrated bread knife with a wooden handle, still reasonably sharp despite its age."

South of Kitchen is Pantry.
West of Kitchen is Storeroom.

part Storeroom

There is a room called Storeroom.

The description of Storeroom is "Metal shelving units stretch floor to ceiling, most of them bare save for a few tins and supply boxes pushed to the back."

A Crowbar is a thing in Storeroom. The description is "A solid steel crowbar, reassuringly heavy. Useful for prying things open and, in a pinch, as a lever."

South of Storeroom is Hydroponics.

part Hydroponics

There is a room called Hydroponics.

The description of Hydroponics is "Long hydroponic trays run beneath banks of dead overhead grow-lights, the substrate dry and neglected after what must be weeks without tending. A small bonsai tree in the corner has held on better than the rest, its gnarled trunk evidently tougher than it looks."

A Bonsai Tree is a thing in Hydroponics. Understand "wood" as the bonsai tree. The description is "A small but surprisingly dense bonsai tree, its gnarled trunk and compact branches ideal for reducing to charcoal with a good pounding."

Instead of crushing the bonsai tree:
	if the player does not carry the pestle:
		say "You need something to crush it with." instead;
	if the player does not carry the bonsai tree:
		say "You need to be carrying the bonsai tree." instead;
	if the charcoal is not nowhere:
		say "You already have enough charcoal." instead;
	remove the bonsai tree from play;
	now the charcoal is in the location;
	say "You pound the bonsai wood with the pestle, reducing it to usable chunks of charcoal.";
	increase the score by 3.

South of Hydroponics is Tool Room.
East of Hydroponics is Pantry.

part Tool Room

There is a room called Tool Room.

The description of Tool Room is "A small utility room lined with pegboard, most of its hooks bare and empty, their tools presumably scattered to various corners of the bunker. A few items remain on the lower shelf, including a can of WD40 that someone never got round to putting away."

The WD40 is a thing in Tool Room. The description is "A well-used aerosol can of WD40, still with enough left to free up a seized joint or two."

North of Tool Room is Hydroponics.

part Pantry

There is a room called Pantry.

The description of Pantry is "Shelving units hold an orderly supply of tinned goods and sealed containers, though several racks have been cleared at some point. A gas hose runs from a shutoff valve on the wall down to the oven, and a faint metallic smell hangs in the air."

The Valve is a device. The valve is switched on. The valve is scenery in Pantry. The description of the valve is "[if the valve is switched on]A gas shutoff valve on the wall. It is currently open - gas is flowing to the oven.[otherwise]A gas shutoff valve on the wall. It is currently closed - gas is off.[end if]"

Instead of rotating the valve:
	if the valve is switched on:
		now the valve is switched off;
		say "You turn the valve off. The hiss of gas through the pipe stops." instead;
	now the valve is switched on;
	say "You turn the valve on. Gas begins flowing again."

The Oven is a device. The oven is scenery in Pantry. The description of the oven is "[if the oven is switched on]A battered institutional gas oven, its enamel stained and chipped. The burners are lit and the hob is hot.[otherwise]A battered institutional gas oven, its enamel stained and chipped. The rubber hose connecting it to the supply pipe snakes out from behind.[end if]"

Instead of rotating the oven:
	if the oven is switched on:
		now the oven is switched off;
		say "You turn off the oven. The burners die." instead;
	if the hose is not in Pantry:
		say "The gas hose is not connected - reattach it to the oven before turning it on." instead;
	now the oven is switched on;
	say "You light the oven. The burners catch with a soft whump."

Instead of inserting the light stick into the oven:
	if the oven is switched off:
		say "The oven is not on - light it first." instead;
	now the stick turns is 150;
	say "You hold the glow stick over the hot hob for a moment. It flares back to full brightness."

Instead of putting the light stick on the oven:
	try inserting the light stick into the oven.

The Hose is a thing in Pantry. The description of the hose is "[if the valve is switched on]A rubber gas hose connecting the oven to the supply pipe. Turn the valve off before detaching it.[otherwise]A rubber gas hose, disconnected from the oven's gas fitting.[end if]"

Instead of taking the hose when the valve is switched on:
	say "The gas is still flowing - turn the valve off first." instead.

Instead of inserting the hose into the oven:
	if the hose is in Pantry:
		say "The hose is already connected to the oven." instead;
	now the hose is in Pantry;
	say "You reconnect the rubber hose to the oven's gas fitting. The oven is ready to use again."

Instead of putting the hose on the oven:
	try inserting the hose into the oven.

part Library

There is a room called Library.

The description of Library is "Floor-to-ceiling shelves hold a mix of technical manuals and battered paperbacks, a handful of volumes knocked to the floor and left where they fell. One shelf along the far wall has come away from its fittings and hangs at an awkward angle."

A Board Shelf is a thing. It is privately-named. The printed name of it is "Board (Shelf)". Understand "Board" and "Shelf" as Board Shelf. The description is "A solid wooden shelf, roughly a metre long. Sturdy enough to act as a ramp if leaned against something." The board shelf is nowhere.

The Loose Shelf is scenery in Library. Understand "board" and "shelf" as the loose shelf. The description is "A solid wooden shelf that has come away from the wall, roughly a metre long."

Instead of pulling the loose shelf:
	now the board shelf is in Library;
	now the loose shelf is nowhere;
	say "You pull the loose shelf away from the wall. It comes free with a shower of plaster dust."

Instead of taking the loose shelf:
	try pulling the loose shelf;
	try taking the board shelf.

South of Library is Lounge.

part Lounge

There is a room called Lounge.

The description of Lounge is "Sagging sofas and a pair of armchairs are arranged around a low table strewn with old magazines and the scattered pieces of several abandoned board games. A television set is bolted to the wall at head height, its screen long dark."

East of Lounge is Main Corridor.

part WE Corridor

There is a room called WE Corridor.

The description of WE Corridor is "[if the fire door is open]A secondary east-west corridor crossing the lower level, the concrete walls streaked with old damp stains and a faded hazard sign nobody ever heeded. The heavy fire door to the south hangs open, pried back with the crowbar.[otherwise]A secondary east-west corridor crossing the lower level, the concrete walls streaked with old damp stains and a faded hazard sign nobody ever heeded. A heavy fire door to the south is wedged shut - the bot will not be able to follow until it is pried open.[end if]"

Prying is an action applying to one thing. Understand "pry [something]" and "lever [something]" and "wedge [something]" and "force [something]" and "jimmy [something]" and "prise [something]" as prying.

The Fire Door is a container. The fire door is closed. The fire door is scenery in WE Corridor. Understand "fire" as fire door.

Instead of prying the fire door:
	if the player does not carry the crowbar:
		say "You need the crowbar to pry that open." instead;
	if the fire door is open:
		say "The door is already pried open." instead;
	now the fire door is open;
	say "You jam the crowbar into the door frame and heave. The fire door grinds open and stays put.";
	increase the score by 5.

South of WE Corridor is Control Room.
East of WE Corridor is Med Bay. West of Med Bay is nowhere.
Southeast of WE Corridor is Generator. Northwest of Generator is nowhere.
Southwest of WE Corridor is Workshop. Northeast of Workshop is nowhere.

part Control Room

There is a room called Control Room.

The description of Control Room is "[if electricity is false]Banks of monitors and instrument panels cover every surface, most of them dark, a handful still cycling through error messages or static. This room controlled everything - communications, life support, security - and it will again, once the power is back on.[otherwise if the radio is switched on]The control room hums with restored power, monitors glowing across every surface. The radio crackles from its corner console.[otherwise]The control room hums with restored power, monitors cycling through system readings. The radio sits silent on its console.[end if]"

The Radio is a device. It is scenery in Control Room. The description of the radio is "[if the external door is unlocked]The radio crackles softly. Both codes have been transmitted - someone out there heard you.[otherwise if the radio is switched on]The radio crackles with static and a carrier wave. Ready to transmit.[otherwise if electricity is true]A military-grade communications radio. Power is restored - you could switch it on.[otherwise]A chunky military-grade communications radio, dusty but intact. It needs power before it can broadcast anything.[end if]"

Instead of rotating the radio:
	if electricity is false:
		say "The radio needs power before it will work." instead;
	if the radio is switched on:
		say "The radio is already on." instead;
	now the radio is switched on;
	say "You switch on the radio. It crackles to life, filling the room with static and a carrier wave."

Typing is an action applying to nothing. Understand "type" and "type code" and "write" and "write code" as typing.

Instead of typing:
	if the location is not Control Room:
		say "There is nothing here to type a code into." instead;
	if electricity is false:
		say "The control room has no power." instead;
	if the radio is switched off:
		say "Turn the radio on first." instead;
	if the player does not carry the code book:
		say "You need the code book to know what to type." instead;
	if signal sent is false:
		now signal sent is true;
		say "You key in the emergency signal code. Static crackles, then a distant acknowledgement tone - someone is receiving your signal.";
		increase the score by 5;
		rule succeeds;
	if the external door is unlocked:
		say "Both codes have already been entered." instead;
	now the external door is unlocked;
	say "You enter the external door release code. A muffled clunk echoes down the corridor - the blast door is unlocked.";
	increase the score by 10.

Leaning is an action applying to one thing. Understand "lean [something]" and "prop [something]" and "rest [something]" and "stand [something]" as leaning.

Instead of leaning the board shelf:
	if the player does not carry the board shelf:
		say "You need to be carrying the shelf." instead;
	if the location is not Control Room:
		say "This is not the right place to lean the shelf." instead;
	if shelf leaned is true:
		say "The shelf is already leaned against the armoury door." instead;
	now shelf leaned is true;
	remove the board shelf from play;
	say "You lean the shelf against the lip of the armoury door, creating a ramp. The bot should be able to cross now."

South of Control Room is Armoury.
East of Control Room is Generator.
West of Control Room is Workshop.

Instead of going south from Control Room when rats cleared is false:
	say "You push the door open a crack - a seething mass of large, aggressive rodents hurls itself at the gap. You slam it shut." instead.

part Workshop

There is a room called Workshop.

The description of Workshop is "A long workbench runs down the centre of this well-equipped room, its surface scattered with tools, coils of wire, and half-finished repairs left by whoever was last in here. A portable welding rig stands in one corner - gas tank and nozzle waiting to be connected up."

The Gas Tank is a container. The gas tank is scenery in Workshop. The description of the gas tank is "[if hose attached is true]A pressurised gas tank, the hose now connected between it and the nozzle.[otherwise]A pressurised gas tank. The hose can be attached to connect it to the nozzle.[end if]"

Hose attached is a truth state that varies. Hose attached is false.
Dial turned is a truth state that varies. Dial turned is false.
Knob welded is a truth state that varies. Knob welded is false.
Crowbar levered is a truth state that varies. Crowbar levered is false.
Pump reversed is a truth state that varies. Pump reversed is false.
Scanner cleared is a truth state that varies. Scanner cleared is false.
Window broken is a truth state that varies. Window broken is false.
Pipe clear is a truth state that varies. Pipe clear is false.

The Nozzle is a thing. The nozzle is nowhere. Understand "torch" as the nozzle. The description of the nozzle is "[if dial turned is true]A welding torch nozzle, primed and ready. Weld it against the knob in the pump room.[otherwise]A welding torch nozzle, the business end of the portable rig. Set the dial to acetylene before it will weld anything.[end if]"

Instead of inserting the hose into the gas tank:
	if the player does not carry the hose:
		say "You need to be holding the hose." instead;
	if hose attached is true:
		say "The hose is already connected to the rig." instead;
	now hose attached is true;
	remove the hose from play;
	now the nozzle is in the location;
	say "You connect the hose between the gas tank and the nozzle, forming a portable welding torch. You pick up the torch head.";
	increase the score by 5;
	try taking the nozzle.

Instead of putting the hose on the gas tank:
	try inserting the hose into the gas tank.

The Dial is a device. The dial is scenery in Workshop. The description of the dial is "[if dial turned is true]A dial controlling the gas mix, set to acetylene. The rig is primed and ready to weld.[otherwise]A dial controlling the gas mix. Set it to acetylene to prime the rig for welding.[end if]"

Instead of rotating the dial:
	if hose attached is false:
		say "Attach the hose to the rig first." instead;
	if dial turned is true:
		say "The dial is already set to acetylene." instead;
	now dial turned is true;
	say "You turn the dial to acetylene. The rig is primed and ready to weld."

North of Workshop is WE Corridor.
West of Workshop is Tool Room. East of Tool Room is nowhere.

part Generator

There is a room called Generator.

The description of Generator is "[if electricity is true]The generator fills the room with a steady roar, its cables and conduits alive with current. The master switch is thrown; lights burn throughout the bunker.[otherwise]The bunker's main generator dominates this room, its bulk trailing cables and conduits that run up to the ceiling and along every wall. A master switch and a biometric hand scanner are mounted on a panel nearby, both dormant without power.[end if][if window broken is true] The window in the east wall has been shot out, leaving a jagged opening into the pump room.[end if]"

The Switch is scenery in Generator. Understand "master" as the switch. The description of the switch is "[if electricity is true]The master switch is thrown. The generator is running.[otherwise if scanner cleared is true]The master switch. The scanner is cleared - you can use it now.[otherwise]A master power switch. The biometric scanner must be cleared before it can be used.[end if]"

Instead of rotating the switch:
	if scanner cleared is false:
		say "The biometric scanner must be cleared before the switch can be used." instead;
	if electricity is true:
		say "The generator is already running." instead;
	now electricity is true;
	say "You throw the master switch. The generator roars to life. Lights flicker on throughout the bunker.";
	increase the score by 10.

The Scanner is a container. The scanner is scenery in Generator. The description of the scanner is "[if scanner cleared is true]The biometric scanner glows green - cleared and satisfied.[otherwise]A biometric hand scanner securing the generator controls. It needs a valid hand print.[end if]"

Instead of inserting the severed hand into the scanner:
	if scanner cleared is true:
		say "The scanner has already accepted a valid print." instead;
	now scanner cleared is true;
	say "You press the severed hand against the scanner. It beeps once and a green light blinks on.";
	increase the score by 5;
	try taking the severed hand.

Instead of putting the severed hand on the scanner:
	try inserting the severed hand into the scanner.

Scanning is an action applying to one thing. Understand "scan [something]" as scanning.

Instead of scanning the severed hand:
	try inserting the severed hand into the scanner.

Instead of scanning the scanner:
	if scanner cleared is true:
		say "The scanner has already accepted a valid print." instead;
	say "The scanner awaits a valid hand print. Try scanning the hand." instead.

Shooting is an action applying to one thing. Understand "shoot [something]" and "fire [something]" and "blast [something]" as shooting.

The Generator Window is scenery in Generator. Understand "window" as the generator window. The description of the generator window is "[if window broken is true]The window has been shot out, leaving a jagged opening into the pump room. You could climb through.[otherwise]A small window set into the east wall, looking into the flooded pump room beyond. The door beside it is sealed by water pressure - this window may be the only way in.[end if]"

Instead of shooting the generator window:
	if window broken is true:
		say "The window is already broken." instead;
	if the player does not carry the weapon:
		say "You need a weapon to shoot with." instead;
	now window broken is true;
	say "You fire at the window. The glass shatters inward, leaving a jagged opening into the pump room.";
	increase the score by 5.

Entering-window is an action applying to nothing. Understand "enter window" and "climb through window" as entering-window.

Instead of entering-window:
	if window broken is false:
		say "The window is intact. You cannot climb through it." instead;
	if the location is Generator:
		say "You squeeze through the broken window frame and drop into the pump room.";
		now the player is in Pump Room;
		rule succeeds;
	if the location is Pump Room:
		say "You haul yourself back through the window into the generator room.";
		now the player is in Generator;
		rule succeeds;
	say "There's no window here to climb through." instead.

North of Generator is WE Corridor.
East of Generator is Pump Room.

Instead of going east from Generator when pipe clear is false:
	if window broken is false:
		say "The pump room door is sealed - water is pressing hard against it from the other side. You need another way in." instead;
	say "The pump room door is still sealed by flood pressure. Clear the pipe first." instead.

part Pump Room

There is a room called Pump Room.

The description of Pump Room is "[if pump reversed is true]The pump room hums with purpose, the reversed pump cycling clean air through the bunker's ventilation. The floor is dry.[otherwise if pipe clear is true]Pipework and pumping machinery crowd this damp room. The floor has drained since the pipe was cleared. The air pump stands at the centre, waiting to be turned.[otherwise]Pipework and pumping machinery crowd this damp utility room. The floor is under several inches of murky water from the burst pipe. The main air pump stands at the centre, its control knob snapped clean off.[end if]"

The Knob is a container. The knob is scenery in Pump Room. The description of the knob is "[if Crowbar levered is true]The knob is welded back onto the pump handle, with the crowbar slotted on as a lever. Ready to turn.[otherwise if Knob welded is true]The knob has been welded back onto the pump handle. You need a lever to turn it - attach the crowbar.[otherwise]A broken air-pump handle stub - the knob has snapped off. It could be welded back on.[end if]"

Welding is an action applying to one thing. Understand "weld [something]" and "fuse [something]" and "solder [something]" as welding.

Instead of welding the knob:
	if the player does not carry the nozzle:
		say "You need the welding torch to do this." instead;
	if dial turned is false:
		say "The welding rig is not ready - attach the hose and set the dial first." instead;
	if Knob welded is true:
		say "The knob is already welded on." instead;
	now Knob welded is true;
	say "You touch the torch to the knob stub and weld the knob firmly onto the pump handle.";
	increase the score by 5.

Instead of inserting the crowbar into the knob:
	if Knob welded is false:
		say "There's no knob to attach the crowbar to yet - weld it back on first." instead;
	if Crowbar levered is true:
		say "The crowbar is already slotted onto the knob." instead;
	now Crowbar levered is true;
	remove the crowbar from play;
	say "You slot the crowbar onto the knob, giving you enough leverage to turn the pump.";
	increase the score by 5.

Instead of putting the crowbar on the knob:
	try inserting the crowbar into the knob.

Instead of rotating the knob:
	if Knob welded is false:
		say "There is no knob - it needs to be welded back on first." instead;
	if Crowbar levered is false:
		say "You need a lever attached to the knob to turn it - attach the crowbar." instead;
	if pump reversed is true:
		say "The pump is already reversed." instead;
	now pump reversed is true;
	say "With the crowbar as a lever you heave the knob around. The pump reverses with a grinding shudder - clean air begins to circulate.";
	increase the score by 15.

The Pump Window is scenery in Pump Room. Understand "window" as the pump window. The description of the pump window is "[if window broken is true]The window has been shot out - a ragged opening back into the generator room. You could climb through to get out.[otherwise]A small window set into the west wall, looking back into the generator room. It looks like it could be shot out from the other side.[end if]"

Instead of shooting the pump window:
	say "The window looks back into the generator room - shooting it from this side would do nothing useful. It needs to be shot from the other side." instead.

Every turn when the location is Pump Room and pipe clear is false and the charcoal is in the helmet and the player carries the helmet:
	now the charcoal is nowhere;
	say "The floodwater soaks into the helmet's filter, turning the charcoal to mush. Your smoke filter is ruined."

West of Pump Room is Generator.
Down of Pump Room is Reservoir.

part Reservoir

There is a room called Reservoir.

The description of Reservoir is "[if pipe clear is true]A low-ceilinged chamber beneath the pump room, mostly occupied by the concrete cistern. The supply pipe runs clear now, water flowing properly.[otherwise]A low-ceilinged chamber directly beneath the pump room, almost entirely occupied by a large concrete cistern fed by pipes from above. The main supply pipe runs along the base of the wall, its outlet visibly choked with accumulated sediment and debris.[end if]"

The Pipe is scenery in Reservoir. The description of the pipe is "[if pipe clear is true]The supply pipe runs clear now, water flowing properly through.[otherwise]The main water supply pipe, its outlet packed solid with sediment and debris. It needs clearing before water can flow again.[end if]"

Unblocking is an action applying to one thing. Understand "unblock [something]" and "clear [something]" and "unclog [something]" and "scrub [something]" and "sweep [something]" and "empty [something]" as unblocking.

Instead of unblocking the pipe:
	if the player does not carry the toilet brush:
		say "You need something to clear the blockage with." instead;
	if pipe clear is true:
		say "The pipe is already clear." instead;
	now pipe clear is true;
	say "You ram the toilet brush into the pipe and work it back and forth. A foul slurry of debris clears through. Water begins to flow again.";
	increase the score by 5.

part Armoury

There is a room called Armoury.

The description of Armoury is "[if rats cleared is true]The armoury is quiet now, the infestation cleared. Heavy-gauge mesh covers stripped weapons racks - someone left in a hurry. Gnaw marks and droppings remain on every surface, but the rats are gone.[otherwise]A small secure room with heavy-gauge mesh panels over the shelving, most of the weapons racks stripped bare in what must have been a considerable hurry. Whatever infestation drove everyone out has left its mark - droppings and gnaw marks cover every surface.[end if]"

The Weapon is a thing in Armoury. Understand "rifle" and "gun" as the weapon. The description is "A bolt-action rifle, the finish worn but the mechanism well-maintained. There are a few rounds in the magazine - enough for what you need."

book Turn-Based Hazards

The air turns is a number that varies. The air turns is 100.
The bot wait is a number that varies. The bot wait is 0.

Every turn when the stick turns is greater than 0:
	decrease the stick turns by 1;
	if the stick turns is 20:
		say "The glow stick is beginning to fade.";
	if the stick turns is 0:
		say "The glow stick flickers and goes dark."

Every turn when the location is Main Corridor and electricity is false and a random chance of 1 in 4 succeeds:
	if a random chance of 1 in 2 succeeds:
		say "Tibbles: 'I'm a cleaner, not a magician, but watch this dirt disappear!'";
	otherwise:
		say "Tibbles: 'Why walk when you can vacuum?'"

Every turn when rats cleared is false and shelf leaned is true and the fire door is open:
	increase the bot wait by 1;
	if the bot wait is 1:
		say "The cleaning bot rolls south through the pried door, its sensors scanning.";
	if the bot wait is 2:
		now rats cleared is true;
		say "Sharp electrical zaps drift through from the armoury. Then silence. The bot trundles back.[paragraph break]Tibbles: 'I'm a cleaning superhero, saving the day one room at a time.'"

Every turn when electricity is false and the stick turns is 0 and the location is not Airlock and the location is not Main Corridor and the location is not Wasteland:
	say "The cleaning bot's sensors sweep across you in the gloom - no lit stick, no way for it to know you're crew. Sharp arcs of electricity lance out.[paragraph break]Tibbles: 'I'm the captain of clean. Messes like you should not be seen.'";
	end the story saying "The cleaning bot didn't know you from the rats".

Every turn when the charcoal is not in the helmet or the player does not wear the helmet:
	decrease the air turns by 1;
	if the air turns is 40:
		say "The air tastes of smoke. A dull ache is building behind your eyes.";
	if the air turns is 20:
		say "Your chest is tight and your vision is beginning to blur. You need clean air soon.";
	if the air turns is 10:
		say "You are struggling to breathe. Every breath burns.";
	if the air turns is 0:
		say "The smoke finally wins. The air in the bunker runs out before you find a way to fix it. Next time, work faster - or build the filter sooner.";
		end the story saying "You suffocated".

