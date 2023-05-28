# Keylogger

Here is a macOS/linux payload that will run a keylogger in the background using the `screen` command and sending all keystrokes to the mail's addres yo'll set.


### Instructions
1. First of all with the ID 05ac:021e Apple:Keyboard line, we are telling to the computer that our Flipper is a "real Apple keyboard" to avoid macOS is displaying the "Keyboard Setup Assistant" dialog and your script is going fuck itself.
2. Press the GUI key and the SPACE key to open the Spotlight search on macOS. This step is optional if you are running the payload on Linux. Now we type "terminal" to search for the terminal application and press ENTER to open it.
3. We create a hidden directory (.hidden) in ~/ (You can see hidden files and directories pressing SHIFT+CMD+. and hide theme pressing the same keys).
4. Now we create a new session in terminal called "keylogger" using the `screen` mode.
5. Then let's star a script, and the output file'll be "keylogger.txt" stored in ~/.hidden/
6. Ok. With the Built-in tool `read` in a new shell process (`bash -c`), running in background (`&`). The `>/dev/null 2>&1 &`part is used to redirect the standard output and error streams of th `nohup` to `/dev/null`, which effectively hides the output of the process.
7. Then we hide both: the keylogger and the screen session, making it more difficult to detect.
8. At the end `send_logs.sh` is created with a script that sends the keylogger via mail. The `chmod +x` makes the script executable. Now a new `cron` "job" is make to run the script evry 5 minutes.

### Usage
Replace in `keylogger.txt` example@example.com with the mail you want to use to recive the logs.
Power on your Flipper Zero, and navigate to badusb/keylogger (or where you uploaded the payload) and click on it.
Wait until on your Flipper you are reading 100%.
Disconnects Flipper Zero.


> ### Disclaimer
>> Please note that this payload is for educational purposes only and should not be used for illegal activities.
