#!/bin/bash
# My Utilities.
# Docker
alias suu='sudo apt -y update && sudo apt -y full-upgrade'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dck='docker compose kill'

# My listings
# List only directories:
alias ldir='ls -d */'
# List only files
alias lf='ls -lah | grep -v '^d''


# My functions
ppath() {
    echo -e "${PATH//:/'\n'}"
}


# Test this
newid() {
if [[ "${UID}" -ne '0' ]]; then
  echo 'You need to run this as a root!' 1>&2
  exit 1
else
  current_id=$(cat /var/lib/dbus/machine-id)
  new_id="$(date +%s%N | sha256sum | head -c 32)"
  echo 'Your current id: '
  echo "${current_id}"
  echo "${new_id}" > /var/lib/dbus/machine-id
  echo
  id_now=$(cat /var/lib/dbus/machine-id)
  echo 'Your new id: '
  echo "${id_now}"
fi
}

update() {
sudo apt -y update && apt -y full-upgrade
if [[ -f /var/run/reboot-required ]]; then
    reboot
fi
}