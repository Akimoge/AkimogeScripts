#Script for making a tar package from your home folder
#Simpy this copy all files from /home to tar with permissions/users/groups
#to extract with all permissions use tar -pcvzf
#THIS SCRIPT NEEDS TO ROOT PERMISSIONS

if [[ $EUID -ne 0 ]]; then
  echo "Run this as root" 2>&1
  exit 1
else
name=$(date '+%y-%m-%d')
sudo mkdir /backup
sudo tar -zcvf "/backup/$name.tar.gz" /home
echo "----NOTE----"
echo " to unpack with all permissions use tar -pcvzf "
echo "----NOTE----"
fi

