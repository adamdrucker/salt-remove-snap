### Salt state to remove all installed snaps

#### To install Snap (using CentOS 8)
* sudo yum install snapd -y
* sudo systemctl enable --now snapd.socket
* sudo ln -s /var/lib/snapd/snap /snap

#### Installation of snap packages for testing
* sudo snap install hello-world
* sudo snap install foliate

#### To apply the remove.sls state
* sudo salt-call --local state.apply


22 Oct - updated remove.sls to reflect usage under root
