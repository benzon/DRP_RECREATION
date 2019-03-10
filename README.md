# DRP_RECREATION - v1.2
**Version:** 1.2
**Created by:** BenZoN - DanishRP

**Requirements DRP_RECREATION**

[es_extended](https://github.com/ESX-Org/es_extended)

**Note**

Please use the releases for now, master branche is unsted but should work, after a minor clean up.

**Description**

This script is made for RP recreational usage, where you can rent a bike, or go basejumping/parachuting with your friends.

The script is build in a way where it’s “easy” to add new functionality if you know a bit of code, the config is build around the needs I had for this script, and to make it possible to customize a lot of aspects.

Bike Rental is done a bit different then other scripts, noticed a couple of threads where people asked for some sort of way to keep track, if the bike is returned or not, this script dos that, and I uses LUA tables, so no need for MySQL, you can even configure a multiplier to control how much more expensive a bike will be if they never returned the first one (The rental circle changes color, when you have a rented bike you have not returned)

Basejumping is very simple, you are given a parachute, launched in to the air (the parachute will self release) and then you can glide a long and have a fun time, includes a warning text, that it might cause injury or death, since we know parachutes can be a bit glitchy. 

**Features**
- Bike Rental Free og Payed
- Bike Return
- Keeping track of bikes rentet, change price if person did not return previus bike (resets every server/script restart)
- Basejumping have fun and glide away free or payed
- Auto parachute release

**Installation DRP_RECREATION**
- Download - https://github.com/benzon/DRP_RECREATION/archive/master.zip
- Put it in the `[esx]` directory
- Add this to your  `server.cfg`:
```
start DRP_RECREATION
```

## Legal
DRP_RECREATION - DRP Recreation

Copyright (C) 2015-2019 BenZoN

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see  [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).
