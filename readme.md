First, be sure you can see the CarPlay Simulator:

- Select an iPhone simulator target. Build and run.
- In Simulator, use IO > External Displays > CarPlay.

> Because of the configured entitlements plist, the app should appear in CarPlay's home screen. A real app will only have entitlements matching the type of app.

Begin your research by reading the [programming guide][guide].

Reference:

- [CarPlay framework][framework]
- [CarPlay HIG][hig]

For a navigation app, see the [CarPlay simulator documentation][simulator] about testing with multiple screen sizes and control types:

```sh
defaults write com.apple.iphonesimulator CarPlayExtraOptions -bool YES
```

[guide]: https://developer.apple.com/carplay/documentation/CarPlay-App-Programming-Guide.pdf
[framework]: https://developer.apple.com/documentation/carplay/
[hig]: https://developer.apple.com/design/human-interface-guidelines/carplay/overview/introduction/
[simulator]: https://developer.apple.com/documentation/carplay/using_the_carplay_simulator
