# KMZones - Zone Display Script

This script displays a text notification on the top right of the game screen indicating whether the player is in a "Green Zone", "Amber Zone" or "Red Zone". The text is styled using Bootstrap and custom CSS.

## Author
Created by KernowMark | ItsMeerken

## Version
1.0

## Features
- Displays "Green Zone" or "Amber Zone" text based on the player's location.
- Styled using Bootstrap and custom CSS.
- Easy to add multiple zones.
- This script is Standalone, and is compatible with ESX, QBCore, BJCore, TMC and any other frameworks.

## Installation
1. Clone or download the repository.
2. Place the folder in your `resources` directory.
3. Add the following line to your `server.cfg`:
    ```
    ensure kmzones
    ```

## Configuration
### Adding Zones
To add new zones, edit the `zoneChecker.lua` file. The zones are defined in the `polyzones` table. Each zone has a `center` (vector3) and a `radius`.

#### Example:
```lua
local polyzones = {
    greenZones = {
        {center = vector3(150.0, -1040.0, 29.0), radius = 50.0},
        {center = vector3(608.54, -1028.32, 36.96), radius = 50.0}
    },
    amberZones = {
        {center = vector3(300.0, -280.0, 54.0), radius = 50.0}
    }
}
```