#!/bin/bash

SOURCE_VOLUME="/usr/share/nginx/html"  # Mounted source volume
DEST_VOLUME="/parth_data"  # Mounted destination volume

if [ "$COPY" != "true" ]; then
    echo "Skipping copy process as COPY is not set to true."
    exit 0
fi

echo "Copying data from \"$SOURCE_VOLUME\" to \"$DEST_VOLUME\"..."
cp -av "$SOURCE_VOLUME"/. "$DEST_VOLUME"/

echo "Copy complete!"

