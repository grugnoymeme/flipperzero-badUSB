# FULL macOS Passwords Grabber

Here is a macOS payload that will grab a file named `login.keychain` that's the file where all macOS's passwords are stored (Applications, Wifi and so on..).
Using my other payload `sudo_credentials_stealer` you will be able to find the login password needed to unlock the `login.keychain` file and then read ALL the credentials you will need, once opening the "Keychain Access" application and importing the `login.keychain` file, on another macOS machine. 


### Instructions

> PRE: Lets extract the Login password of the current user, using my other payload `sudo_credentials_stealer` that you can find into this repo.

1. First of all with the ID 05ac:021e Apple:Keyboard line, we are telling to the computer that our Flipper is a "real Apple keyboard" to avoid macOS is displaying the "Keyboard Setup Assistant" dialog and your script is going fuck itself.
2. Press the GUI key and the SPACE key to open the Spotlight search on macOS. Now we type "terminal" to search for the terminal application and press ENTER to open it.
3. We string `unset HISTFILE` to avoid that all te following operations will be stored in the shell history, till the end of the session.
4. Now we navigate to the `~/Library/Keychains/` directory.
5. Then let's creates a .zip archive `login.zip` of the file `login.keychain`.
6. Ok. Now we can send the zipped file to our mail (in this case `example@example.com`).
7. At the end, we close the terminal, and the trick is done.

### Usage
FIRST OF ALL DO THE "PRE" ACTION USCING THE OTHER BAD USB ATTACK SUBMODULED IN THIS REPO.   
Replace in `keychain_grabber.txt` example@example.com with the mail you want to use to recive the logs. (Also in th `sudo_credentials_stealer` file).
Power on your Flipper Zero, and navigate to badusb/full_password_grabber (or where you uploaded the payload) and click on it.
Wait until on your Flipper you are reading 100%.
Disconnects Flipper Zero.  
Now with another macOS you need to import the file after unzipped it, in `Keychain Access` and then unlock it with the credentials you recieved via mail.


> ### Disclaimer
>> Please note that this payload is for educational purposes only and should not be used for illegal activities.
