# Remove all snap stuff

rmv-snaps:
  cmd.run:
    - name: "for i in $(snap list | awk '{print $1}' | tail -n+4); do sudo snap remove $i; done"

rmv-core18:
  cmd.run:
    - name: "sudo snap remove core18"

unmnt-snap:
  cmd.run:
    - name: "sudo umount $(df | grep /snapd/snap/core/ | awk '{print $6}')"

rmv-snap-core:
  cmd.run:
    - name: "sudo snap remove core"

rmv-snaphome:
  cmd.run:
    - name: "rm -rf ~/snap"

rmv-snaproot:
  cmd.run:
    - name: "sudo rm -rf /snap"

rmv-snapvar:
  cmd.run:
    - name: "sudo rm -rf /var/snap"

rmv-snapd:
  cmd.run:
    - name: "sudo yum remove snapd -y"
