#!/bin/sh

create_sql_dump() {
    local list_url="$1"
    local sql_dump="$2"

    cat >"$sql_dump" <<EOF
BEGIN TRANSACTION;
DELETE FROM 'adlist_by_group';
DELETE FROM 'adlist';
# Reset autoincrement
DELETE FROM 'sqlite_sequence' WHERE name='adlist';
EOF
    curl --silent --location "$list_url" | while read url; do
        echo "INSERT INTO 'adlist' (address, enabled, comment) VALUES('$url', 1, 'Added by script');"
    done >>"$sql_dump"
    echo 'COMMIT;' >>"$sql_dump"

    # Check if curl failed or the adlist is empty
    [ -n "$(grep 'INSERT INTO' $sql_dump)" ] || return 1
}

# Update adlists
TMP_SQL="$(mktemp --tmpdir adlist.XXXXXX.sql)"
create_sql_dump "https://v.firebog.net/hosts/lists.php?type=tick" "$TMP_SQL"
if [ ! $? -eq 0 ]; then
    echo "ERROR: Unable to fetch adlist"
    rm $TMP_SQL
    exit 1
fi
sqlite3 /etc/pihole/gravity.db < $TMP_SQL
rm $TMP_SQL

# Update gravity
/usr/local/bin/pihole updateGravity >/var/log/pihole_updateGravity.log || cat /var/log/pihole_updateGravity.log

# Update whitelist
/home/pi/whitelist/scripts/whitelist.sh
# Unused in PiHole 5.0
rm /etc/pihole/whitelist.txt /etc/pihole/whitelist.txt.old