#!/bin/bash

SOURCE_ADDONS="/mnt/extra-addons"
DEST_ADDONS="/mnt/project4-addons"

SOURCE_CONF="/etc/odoo"
DEST_CONF="/mnt/project4-conf"

SOURCE_FILESTORE="/var/lib/odoo"
DEST_FILESTORE="/mnt/project4-filestore"


# Check if COPY flag is set
if [ "$COPY" != "true" ]; then
    echo "Skipping copy process as COPY is not set to true."
    exit 0
fi

# Ensure the destination directory exists
mkdir -p "$DEST_ADDONS" "$DEST_CONF" "$DEST_FILESTORE"


chown -R odoo:odoo "$DEST_ADDONS" "$DEST_CONF" "$DEST_FILESTORE"
#chmod -R 777 "$DEST_DIR"

echo "Copying addons from \"$SOURCE_ADDONS\" to \"$DEST_ADDONS\"..."
cp -av "$SOURCE_ADDONS"/. "$DEST_ADDONS"/

echo "Copying addons from \"$SOURCE_CONF\" to \"$DEST_CONF\"..."
cp -av "$SOURCE_CONF"/. "$DEST_CONF"/

echo "Copying addons from \"$SOURCE_FILESTORE\" to \"$DEST_FILESTORE\"..."
cp -av "$SOURCE_FILESTORE"/. "$DEST_FILESTORE"/


echo "Copy complete!"
