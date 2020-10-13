### Salt state to remove all installed snaps

#### To install Snap (using CentOS 8)
* sudo yum install snapd
* sudo systemctl enable --now snapd.socket
* sudo ln -s /var/lib/snapd/snap /snap

#### Installation of snap packages for testing
* sudo snap install hello-world
* sudo snap install foliate
