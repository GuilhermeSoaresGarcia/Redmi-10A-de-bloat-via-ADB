# Redmi 10A debloater
- Download "platform-tools": https://developer.android.com/tools/releases/platform-tools?hl=pt-br
- Turn the script executable: ```chmod +x disable_bloat.sh```
- Execute the script: ```./disable_bloat.sh```

Initially, the script only disables the apps (so you can revert the modifications in case of anything going wrong). 

- If you want to re-enable the apps, comment line 39 and uncomment line 42;
- If you want to permanently uninstall the apps, comment lines 39 and/or 42 and uncomment line 45;
- Then execute the script again: ```./disable_bloat.sh```
