#!/bin/sh

USER="Antidote1911"
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN="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"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

echo "%{T3} $notifications"

