#!/bin/bash

function __set_profile() {
    echo -ne "\033]50;SetProfile="$*"\007"
}

case "$@" in
    # {hostname}* __set_profile {profile name};;
    bitacolle-sammy-production-* ) __set_profile production-feel-at-home
esac

ssh $@

# disconnect local iTerm profile
__set_profile feel-at-home
