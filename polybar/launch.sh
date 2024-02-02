#!/usr/bin/env bash

# terminate already running ipc-enabled instances
polybar-msg cmd quit

# launch bar1
echo "---" | tee -a /tmp/polybar1.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Polybars launched..."

# launch bar2
#echo "---" | tee -a /tmp/polybar2.log
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
#echo "Polybars launched..."
