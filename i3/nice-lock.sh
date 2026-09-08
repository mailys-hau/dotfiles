#! /bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#cc6600'
TEXT='#cc6600'
DARK_TEXT='#663300'
WRONG='#880000bb'
VERIFYING='#663300'


# Set screensaver to 2 minutes when locked
xset +dpms
xset dpms 0 0 120
xset s reset

restore_dpms()
{
    xset dpms 0 0 300
    xset s reset
}

trap restore_dpms EXIT INT TERM


i3lock \
\
--pass-media-keys           \
--pass-volume-keys         \
\
\
--insidever-color=$CLEAR    \
--ringver-color=$VERIFYING  \
\
--insidewrong-color=$CLEAR  \
--ringwrong-color=$WRONG    \
\
--inside-color=$BLANK       \
--ring-color=$DEFAULT       \
--line-color=$BLANK         \
--separator-color=$DEFAULT  \
\
--verif-color=$TEXT         \
--wrong-color=$TEXT         \
--time-color=$TEXT          \
--date-color=$TEXT          \
--layout-color=$TEXT        \
--keyhl-color=$DARK_TEXT    \
--bshl-color=$WRONG         \
\
\
--blur 10                   \
--radius 150                \
--ring-width 10             \
--keylayout 2               \
\
--noinput-text="empty!"     \
--time-size=40              \
--date-size=20              \
\
--clock                     \
--indicator                 \
--time-str="%H:%M:%S"       \
--date-str="%A, %d.%m"      \
