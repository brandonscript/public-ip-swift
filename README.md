# public-ip-swift
A simple Terminal application for determining your public IP address

Getting up and running is pretty simple. Using Xcode 7 or newer (Swift 2 or newer), do:

1. Create a new Mac app - Command Line - Swift called `public-ip`
2. Copy the code from `main.swift` into your new app
3. Select *Product* > *Archive* 
4. Select your app, then click *Export*
5. Leave *Save Built Products* selected and click *Next*
6. Save the bundle somewhere
7. `$ cd` to the location + `/Products/usr/local/bin`
8. `$ chmod 777 public-ip`
9. Copy `public-ip` to `/usr/local/bin`
10. Run `$ public-ip` and profit!
