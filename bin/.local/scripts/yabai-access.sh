#!/usr/bin/env bash

YABAI_BIN="/usr/local/bin/yabai"
UUID=$(ioreg -rd1 -c IOPlatformExpertDevice | awk -F'"' '/IOPlatformUUID/{print $(NF-1)}')

sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT OR REPLACE INTO access VALUES('kTCCServiceAccessibility','com.apple.Terminal',0,1,1,NULL,NULL,NULL,'${UUID}',NULL,0,1541440109);"

sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT OR REPLACE INTO access VALUES('kTCCServiceAccessibility','${YABAI_BIN}',0,1,1,NULL,NULL,NULL,'${UUID}',NULL,0,1541440109);"
