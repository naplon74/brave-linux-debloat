# Brave Linux Debloat

A simple script that installs a managed `policies.json` to disable unnecessary Brave features and provide a privacy-focused default configuration.

## Default changes

* Disables Brave Rewards
* Disables Brave AI features
* Disables cryptocurrency-related features
* Disables the built-in password manager (use a dedicated password manager such as Dashlane, Bitwarden, or KeePass instead)

> [!NOTE]
> The managed policies used by this project may not work with the Flatpak version of Brave. Installing Brave from the official website repository is recommended.

## Installation

Open a terminal and run:
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/naplon74/brave-linux-debloat/refs/heads/main/brave-debloat-linux.sh)
```


or download `brave-debloat-linux.sh` from the latest release. And run:

```sh
chmod +x brave-debloat-linux.sh
./brave-debloat-linux.sh
```

The script installs the policy file to:

```text
/etc/brave/policies/managed/policies.json
```

To edit the configuration later:

```sh
sudo nano /etc/brave/policies/managed/policies.json
```

You can verify that the policies are applied by visiting:

```text
brave://policy
```

## Uninstall

Remove the managed policy file:

```sh
sudo rm /etc/brave/policies/managed/policies.json
```
