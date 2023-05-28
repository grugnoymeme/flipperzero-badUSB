# Reverse Shell on macOS   

### Instructions
1. First of all with the `ID 05ac:021e Apple:Keyboard` line, we are telling to the computer that our Flipper is a "real Apple keyboard" to avoid macOS is displaying the "Keyboard Setup Assistant" dialog and your script is going fuck itself. 
2. Second we need to say "Hey Spotlight, may you please open the terminal.app, i have only good intentions", same like boys saying "not gonna hurt, trust me..." before anal sex.
3. The 11th line is where the magic happens: we use the screen utility to make a permanent session, we set bash as interpreter, cauze macOS is using zsh as default one (don't worry if u have a macOS, you have bash installed by default), we say to it to execute the command (the one after the "echo") and then to  detach the screen session, executing the command in background, EVEN if we'll quit the terminal.app. (Obviously we have to replace the IP address (127.0.0.1) and the PORT (4444), with those of the ATTACKING machine). After all delete the recent last .bash_history.
4. Hide all the terminal windows.
5. After 12-15 sec. you can safely unplug the Flipper Zero being sure that the reverse shell is executing...
 

### Usage
1. Power on your Flipper Zero, and navigate to badusb/macos_reverse_shell (or qhere you uploaded the payload) and click on it.
2. On the ATTACKING machine open a new terminal and digit `nc -nlvp 4444`(change 4444 if you need to listen on another PORT).
3. Connects the Flipper to the TARGET machine, and Click "Run" on the device.
4. Wait until on your Flipper you are reading 100%.
5. Disconnects Flipper Zero.


> ### Disclaimer
>> Please note that this payload is for educational purposes only and should not be used for illegal activities.
