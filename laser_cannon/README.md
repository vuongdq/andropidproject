# natural_selection

A new natural_selection project.

## Getting Started

flutter create --platforms=android,ios --org com.flashgamesapk --android-language java scrap_metal_heroes


flutter clean
flutter pub get
dart run icons_launcher:create
flutter run


keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key

flutter clean
flutter pub get
dart run icons_launcher:create
flutter build apk --release
flutter build appbundle --release
