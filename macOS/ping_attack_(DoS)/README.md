# Ping Attack

Here is a macOS payload that will send a `ping` attack (not exactly the same of DoS attack, but in practice a sort of: the `ping` is used to test networks connections and to verify if an host can be reached up) to a target server.


### Instructions

> PRE: This script is gonna works with all main protocols (http/https) but not with FTP.

1. First of all with the ID 05ac:021e Apple:Keyboard line, we are telling to the computer that our Flipper is a "real Apple keyboard" to avoid macOS is displaying the "Keyboard Setup Assistant" dialog and your script is going fuck itself.
2. Press the GUI key and the SPACE key to open the Spotlight search on macOS. Now we type "terminal" to search for the terminal application and press ENTER to open it.
3. We use the screen utility to make a permanent session, we set bash as interpreter, cuz macOS is using zsh as default one (don't worry if u have a macOS, you have bash installed by default), we say to it to execute the command, and to detach the screen session, executing the command in background, EVEN if we'll close the terminal window. Then we delete all the .bash_history.
4. Hide all the terminal windows.

### Usage   
Replace in `www.example.com` with the host you want to send ping.    
Upload this directory in the `badusb` or `badkb` directory in your FLIPPER SD.    
Power on your Flipper Zero, and navigate to badusb/ping_attack (or where you uploaded the payload) and click on it.   
Wait until on your Flipper you are reading 100%.   
Disconnects Flipper Zero.

### TO STOP TO SEND PING:   
Open a new terminal window and send these commands:   
`ping -i 0.001 -s 65527 www.example.com`    
`ps -ax | grep ping` (To find the Proces ID [PID])    
`kill PID` (Replace "PID" with the PID you found with the previous step)


> ### Disclaimer
>> Keep in mind that using large ping packets may cause network congestion or target server overload issues, and could be considered malicious behavior or a cyber attack in some circumstances.
>>> Please note that this payload is for educational purposes only and should not be used for illegal activities.
