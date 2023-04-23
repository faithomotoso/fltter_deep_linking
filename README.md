# flttr_deep_linking

For `iOS`, test with `xcrun simctl openurl booted "migo-igo://com.example.flttr_deep_linking/deep"`

For `Android` test with `adb shell 'am start -W -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "migo-igo://com.example.flttr_deep_linking/ios-deep"'`

### Registration deep link
For `iOS`, test with `xcrun simctl openurl booted "migo-igo://com.example.flttr_deep_linking/registration?fname=Stevenson&lname=Jose&email=s@imail.com"`

For `Android` test with `adb shell 'am start -W -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "migo-igo://com.example.flttr_deep_linking/registration?fname=A&lname=Droid&email=droid@amail.com"'`


### Useful links
https://blog.logrocket.com/understanding-deep-linking-flutter-uni-links/ - Contains iOS custom urls & Android deep links, removes the need to host app-links json files on a website

https://docs.flutter.dev/development/ui/navigation/deep-linking

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
