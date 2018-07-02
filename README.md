### This repo are fork from [SteamDB Repo](https://github.com/SteamDatabase/SalienCheat)

## How to use this
### First steps

1. Join https://steamcommunity.com/groups/SteamDB (if you want to represent steamDB)
2. Follow install instruction

## PHP

### Windows 10 64bit  
### Installing
1. [Download this script](https://github.com/mahadi22/SalienCheat/archive/master.zip)
2. Extract it into a new folder
3. Run `setup.bat` and follow instructions

### How to run
1. open simplerun.bat
2. input your token string (xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx) or your token file name complete with extension (token0.txt)

Another way to run from cli/cmd, mainly for multiple account              
```
- php cheat.php yourtokenstring             
- php cheat.php tokenfile.txt                  
- php cheat.php token.json
- php cheat.php yourtokenstring accountid
- php cheat.php   (input your tokenfile or token string in the start)
```

### Updating
1. Close all salien cheat currently running
2. Open [`cheat.php`](https://github.com/mahadi22/SalienCheat/raw/master/cheat.php)
3. Save as cheat.php and replace cheat.php file in the folder


![OnAction](https://i.imgur.com/6C9bwVC.png)


### Mac

0. (optional) Launch the App Store and download any updates for macOS. Newer versions of macOS have php and curl included by default
1. Extract the contents of this script to the Downloads folder
2. Launch Terminal and run the script: `php downloads/cheat.php`


### Linux

1. Install `php-curl` and enable it in `php.ini`
2. You know what you are doing. 🐧

### Android (version 5/Lollipop minimal)

1. Install "termux" from [Google play store](https://play.google.com/store/apps/details?id=com.termux)
2. Give permission for Termux to edit Storage
3. Open Termux
4. type "apt update"
5. type "apt upgrade"  (type y if any question to continue appear)
6. type "apt install termux-api php"  (type y if any question to continue appear)
7. close termux, and create folder php in your internal storage
8. place cheat.php and token0.txt in php folder
9. get your token from https://steamcommunity.com/saliengame/gettoken and place it inside token0.txt file
10. open termux, type "cd /sdcard/php/" or "cd /storage/emulated/0/php/"
11. running the script, type "php cheat.php token0.txt"
