# ArDenHub Medico - Revival System

## Description
ArdenHub Medico is a FiveM script that allows players to request medical assistance when they are dead, paying a sum of money to be revived. This system offers an alternative to traditional medical service when there are no medics available on the server.

## Features
- `/medico` command to request medical assistance when dead
- Configurable cost for revival
- Configurable timer for the revival process
- Realistic animation during the revival process
- Integration with ESX banking system

## Requirements
- ESX Framework
- ox_lib (for the progress bar)
- esx_ambulancejob (for the revival function)

## Installation
1. Download the script
2. Place the `ardenhub_medico` folder in your server's `resources` directory
3. Add `ensure ardenhub_medico` to your `server.cfg` file
4. Restart the server or start the resource

## Configuration
You can modify the following settings in the `config.lua`

## How It Works
1. When a player dies, they can type the `/medico` command
2. The system checks if the player has enough money in their bank account
3. If the player has sufficient funds, the cost is deducted from the bank account
4. A revival timer begins (configurable)
5. During the timer, a progress bar is shown and a revival animation is played
6. At the end of the timer, the player is revived

## Events
The script uses the following events:
- `ardenhub_medico:checkMoney` - Checks if the player has enough money
- `ardenhub_medico:startRevive` - Starts the revival process

## License
This script is released under the MIT License.

## Support
For support, contact [**ArDenHub**](https://discord.ardenhub.it) in the discord or open an issue on GitHub.
