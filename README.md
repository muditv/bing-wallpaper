Bing Wallpaper for Mac and Ubuntu
=================================

Information
-----------
A script which downloads the latest picture of the day from Bing worldwide and
saves it to a directory.

The script was tested on:
    Mac OS X 10.8.3 and 10.9

How to use?
-----------
* Just run the **bing-wallpaper.sh** script from the terminal. The script will
download the bing image.
* If desired, change the default **PICTURE_DIR** in **bing-wallpaper.sh** to the
wallpaper directory. If left unchanged the default value is
**~/Pictures/bing-wallpapers/**.

Configuration on Mac
--------------------
* Open Mac's `System Preferences` -> `Desktop & Screensaver`, add the wallpaper
directory, and configure to taste.

* To have the script run everyday automatically you will need to setup launchd
(Mac only). I have provided a sample plist file, found in
the Tools directory, which can be copied to **$HOME/Library/LaunchAgents** and
loaded with the command
  `launchctl load $HOME/Library/LaunchAgents/com.ideasftw.bing-wallpaper.plist`
Modify the plist as needed to point to **bing-wallpaper.sh**. For more
information on configuring launchd [see here](
http://blog.ideasftw.com/2013/02/run-script-from-launchd-instead-of-cron.html).

* Another option on Mac (and arguably a little simpler) is to set the Calendar
app to run the **Tools/Bing Wallpaper.app** [at a recurring daily time](
http://blog.ideasftw.com/2013/03/use-mac-calendar-and-automator-to-run.html).
Modify the app (from within Automator) as it needs to point to
**bing-wallpaper.sh** and the correct **PICTURE_DIR**.

Acknowledgement
---------------
Original script by ktmud can be found at
[https://github.com/ktmud/bing-wallpaper](
https://github.com/ktmud/bing-wallpaper).
