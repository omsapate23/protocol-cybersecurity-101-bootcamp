# Protocol Cybersecurity Bootcamp 101 
Welcome to the Cybersecurity Bootcamp! This repository provides an automated, browser-based Ubuntu XFCE desktop environment powered by GitHub Codespaces.

Use these commands for setup:

First :
```
sudo apt-get update && sudo env DEBIAN_FRONTEND=noninteractive apt-get install -y xfce4 xfce4-terminal tigervnc-standalone-server tigervnc-common novnc websockify dbus-x11
```
Then run :
```
tigervncpasswd 
```
ENTER PASSWORD OF YOUR CHOICE, U SHOULD MEMORIZE CAUSE IT WILL BE ASKED IN FUTURE FOR LOGIN 

Now run:
```
mkdir -p ~/.vnc

cat > ~/.vnc/start-xfce.sh <<'EOF'
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec dbus-run-session -- startxfce4
EOF

chmod +x ~/.vnc/start-xfce.sh
```
After that:
```
tigervncserver :1 -geometry 1280x720 -depth 24 -localhost yes -SecurityTypes VncAuth -xstartup "$HOME/.vnc/start-xfce.sh"
```
Don't click any button mentioning "OPEN BROWSER"

At last run:
```
websockify --web=/usr/share/novnc 0.0.0.0:6080 127.0.0.1:5901
```

OPEN TERMINAL AND USE IT
