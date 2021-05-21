#!/bin/sh

sink=1

volume_up() {
    pactl set-sink-volume $sink +2%
}

volume_down() {
    pactl set-sink-volume $sink -2%
}

volume_mute() {
    pactl set-sink-mute $sink toggle
}

volume_print() {
    icon=""

    muted=false

    if [ "$muted" = true ]; then
        icon=""
    else
        echo "$icon"
    fi
}

listen() {
    volume_print

    pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "#$sink"; then
            volume_print
        fi
    done
}

case "$1" in
    --up)
        volume_up
        ;;
    --down)
        volume_down
        ;;
    --mute)
        volume_mute
        ;;
    *)
        listen
        ;;
esac

