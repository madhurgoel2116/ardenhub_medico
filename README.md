# ArDenHub Medico 🚑

![GitHub release](https://img.shields.io/badge/Release-v1.0.0-brightgreen) ![License](https://img.shields.io/badge/License-MIT-blue) ![GitHub issues](https://img.shields.io/badge/Issues-Welcome-orange)

Welcome to the **ArDenHub Medico** repository! This FiveM script provides players with a unique way to request medical assistance when they are incapacitated. If there are no medics available on the server, players can pay a fee to be revived. This system enhances gameplay and offers an alternative to traditional medical services.

## Table of Contents

1. [Features](#features)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Configuration](#configuration)
5. [Contributing](#contributing)
6. [License](#license)
7. [Contact](#contact)
8. [Releases](#releases)

## Features

- **Revival System**: Players can request revival when dead.
- **Payment System**: A fee is required for revival, adding a strategic element.
- **No Medics Required**: Works independently of in-game medics.
- **Easy Integration**: Simple setup for server administrators.
- **Customizable Options**: Modify settings to fit your server's needs.

## Installation

To install the ArDenHub Medico script, follow these steps:

1. **Download the latest release** from the [Releases](https://github.com/madhurgoel2116/ardenhub_medico/releases) section.
2. **Extract the downloaded files** to your server's resource directory.
3. **Add the resource** to your server configuration file (`server.cfg`) with the line:
   ```
   start ardenhub_medico
   ```
4. **Restart your server** to apply the changes.

## Usage

Once installed, players can use the following command to request medical assistance:

```
/requestmedic
```

Players will be prompted to pay a set fee. If they agree, they will be revived at their last location.

### Example

1. A player dies in-game.
2. They type `/requestmedic`.
3. The system prompts them for payment.
4. Upon successful payment, they are revived.

## Configuration

The script includes a configuration file where you can customize various settings. You can adjust:

- **Revival Fee**: Set the amount players must pay for revival.
- **Cooldown Time**: Determine how often players can request revival.
- **Messages**: Customize the messages players receive.

### Configuration Example

```lua
Config = {}

Config.RevivalFee = 500  -- Set revival fee to $500
Config.CooldownTime = 300 -- 5 minutes cooldown
Config.Messages = {
    requestReceived = "Your request for medical assistance has been received.",
    paymentSuccess = "Payment successful! You are being revived.",
    paymentFailed = "Payment failed. Please try again."
}
```

## Contributing

We welcome contributions to the ArDenHub Medico project. To contribute:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Make your changes and commit them.
4. Push to your branch.
5. Submit a pull request.

Please ensure your code adheres to the existing style and includes appropriate tests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or support, feel free to reach out:

- **Author**: ArDenHub Team
- **Email**: ardenhub@example.com
- **GitHub**: [ArDenHub](https://github.com/ardenhub)

## Releases

To download the latest version of the ArDenHub Medico script, visit the [Releases](https://github.com/madhurgoel2116/ardenhub_medico/releases) section. Download the appropriate file and execute it as per the installation instructions.

## Additional Information

### Community and Support

Join our community to share your experiences, ask questions, and get support. You can find us on Discord and other platforms. 

### Frequently Asked Questions (FAQ)

**Q: Can I modify the script?**  
A: Yes, you can modify the script for personal use. Please respect the license when sharing.

**Q: What if I encounter a bug?**  
A: Report bugs in the Issues section of this repository.

**Q: Is there a support channel?**  
A: Yes, you can reach out via the GitHub Issues or our Discord channel.

### Acknowledgments

We would like to thank the FiveM community for their support and contributions. Special thanks to all contributors who have made this project possible.

## Conclusion

Thank you for your interest in the ArDenHub Medico script. We hope it enhances your FiveM experience by providing a reliable way to request medical assistance. For more updates and features, keep an eye on the [Releases](https://github.com/madhurgoel2116/ardenhub_medico/releases) section.