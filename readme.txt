https://developer.apple.com/documentation/carplay/

https://developer.apple.com/carplay/documentation/CarPlay-App-Programming-Guide.pdf

If it's a navigation app:
https://developer.apple.com/documentation/carplay/using_the_carplay_simulator
defaults write com.apple.iphonesimulator CarPlayExtraOptions -bool YES

https://developer.apple.com/design/human-interface-guidelines/carplay/overview/introduction/

Open the project in Xcode.
Select an iPhone simulator target.
Build and run.
In Simulator, use IO > External Displays > CarPlay.
Because of the configured entitlements plist, the app should appear in CarPlay's home screen.
