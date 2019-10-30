wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

chmod 400 mnkey.pem

ssh -i mnkey.pem ec2-user@ec2-3-106-54-107.ap-southeast-2.compute.amazonaws.com

# rsync -rave "ssh -i mnkey.pem" MusicNotes/bin/Debug/netcoreapp2.2/publish/* ubuntu@ec2-35-177-138-83.eu-west-2.compute.amazonaws.com:/var/apps/billingPortal/