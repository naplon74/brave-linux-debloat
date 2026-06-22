# Brave Linux debloat

---

## What is disabled by default?
- AI slop
- Crypto stuff
- Reward stuff
- Password manager, use [Dashlane](https://www.dashlane.com/) or anything but don't use the default password manager from a browser, those are stored locally meaning they can get stealed.

---

## Installation
Download [this file](https://github.com/naplon74/brave-linux-debloat/releases/download/v1.0/brave-debloat-linux.sh)
<br>Open up the location on your terminal (like `~/Downloads`)

**Run:**
<br>`chmod +x brave-debloat-linux.sh`

**Then run:**
<br>`./brave-debloat-linux.sh`

And normally the policies file will be moved to `/etc/brave/policies/managed`
<br>Use `sudo nano /etc/brave/policies/managed/policies.json` to edit the file. (Ctrl + C to save and Ctrl + X to exit.)

You can see all the policies in `brave://policy`.

## How to remove?
Open a terminal and simply do `sudo rm /etc/brave/policies/managed/policies.json`.
