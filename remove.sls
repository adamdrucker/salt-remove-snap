# Remove all snap stuff

rmv-snaps:
  cmd.run:
    - name: "for i in $(snap list | awk '{print $1}' | tail -n+4); do snap remove $i; done"

rmv-core18:
  cmd.run:
    - name: "snap remove core18"

unmnt-snap:
  cmd.run:
    - name: "umount $(df | grep /snapd/snap/core/ | awk '{print $6}')"

rmv-snap-core:
  cmd.run:
    - name: "snap remove core"

rmv-snaproot:
  cmd.run:
    - name: "rm -rf /snap"

rmv-snapvar:
  cmd.run:
    - name: "rm -rf /var/snap"

rmv-snapd-yum:
  cmd.run:
    - name: "yum remove snapd -y"

rmv-snapd-varlib:
  cmd.run:
    - name: "rm -rf /var/lib/snapd"
