#! /usr/bin/env bash


# Kill old polybar instances (just in case)
polybar-msg cmd quit 2>/dev/null

# Wait for previous command to be done
while pgrep -x polybar >/dev/null; do
    sleep 0.2;
done

monitors=""

for attempt in {1..20}; do
    monitors=$(polybar --list-monitors 2>/dev/null | cut -d: -f1)

    if [[ -n "$monitors" ]]; then
        break
    fi

    sleep 0.5
done

if [[ -z "$monitors" ]]; then
    echo "No monitors detected" >>/tmp/polybar-launch.log
    exit 1
fi

while read -r monitor; do
    if [[ "$monitor" == "eDP-1" ]]; then
        MONITOR="$monitor" polybar --reload main >>"/tmp/polybar-${monitor}.log" 2>&1 &
    else
        MONITOR="$monitor" polybar --reload secondary >>"/tmp/polybar-${monitor}.log" 2>&1 &
    fi
done <<< "$monitors"
