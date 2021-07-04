#! /usr/bin/env bash
# Generates a background image for i3lock from current screen
# contents. Requires scrot and imagemagick's convert utility.

LOCK_IMG="/tmp/lockscreen.png"
LOCK_ICON="$HOME/.config/i3lock/lock.png"

# Use fallback if user specific icon is not present
if [ ! -f "$LOCK_ICON" ]; then
    LOCK_ICON="$HOME/.config/i3lock/default.png"
fi

# Get user's full name. Fall back to user name if not provided.
USERNAME=$(getent passwd "$USER" | cut -d ':' -f 5 | cut -d ',' -f 1)
if [ -z "$USERNAME" ]; then
    USERNAME=$USER
fi

if command -v scrot &> /dev/null; then
    scrot --overwrite "$LOCK_IMG"
    # Apply transforms to obscure screen content, superimpose icon and text
    convert "$LOCK_IMG" -fill black -colorize 25% -thumbnail 20% -sample 500% \
        "$LOCK_ICON" -gravity center -composite \
        -fill white -weight bold  -pointsize 32 -annotate +0+192 "$USERNAME" \
        -weight regular -pointsize 24 -annotate +0+230 "$(date)" \
        "$LOCK_IMG"
    i3lock --nofork --image "$LOCK_IMG"
else
    # If scrot is not installed fall back to black screen
    i3lock --nofork --color 000000
fi
