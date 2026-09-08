#! /usr/bin/env bash

sink=$(pactl get-default-sink 2>/dev/null) || exit 0
muted=$(pactl get-sink-mute "$sink" 2>/dev/null)

port=$(
    pactl --format=json list sinks 2>/dev/null |
        jq -r --arg sink "$sink" '
            .[]
            | select(.name == $sink)
            | .active_port
            | if type == "object" then .name else . end
        '
    )

#󰋋  headphones 󰕾  speakers 󰝟  muted
if [[ $muted == *yes* ]]; then
    icon="󰝟"
elif [[ "$sink $port" == *bluez*
        || "$sink $port" == *headphone*
        || "$sink $port" == *headset* ]]; then
    icon="󰋋"
else
    icon="󰕾"
fi

echo "$icon"
