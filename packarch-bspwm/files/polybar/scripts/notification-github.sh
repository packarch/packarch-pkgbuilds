#!/bin/sh

USER=""
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN=""

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

echo "%{T3} $notifications"

