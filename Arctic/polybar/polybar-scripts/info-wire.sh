#!/bin/sh

if [ "$(pgrep wire)" ]; then
    echo ""
else
    echo "  Wire Inactive"
fi
