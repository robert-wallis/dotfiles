# stolen from /etc/bashrc -- @robert
# Only display echos from profile.d scripts if we are no login shell
# and interactive - otherwise just process them to set envvars

if [ -d "/etc/profile.d/" ]; then
  printf " \e[33mprofile.d\e[0m"
  for i in /etc/profile.d/*.sh; do
    if [ -r "$i" ]; then
      if [ "$PS1" ]; then
        printf " \e[33m$(basename $i)\e[0m"
        . "$i"
      else
        . "$i" >/dev/null
      fi
    fi
  done
fi
