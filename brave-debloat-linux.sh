echo "Brave Linux debloat by Naplon_"
echo "Github: https://github.com/naplon74/brave-linux-debloat"

sudo mkdir /etc/brave/policies/managed -p

wget https://github.com/naplon74/brave-linux-debloat/releases/tag/v1.0/policies.json
sudo cp policies.json /etc/brave/policies/managed
rm policies.json

echo "Brave Linux debloat succeeded"
echo "Edit the policies in /etc/brave/policies/managed"
