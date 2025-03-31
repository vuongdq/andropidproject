# armor_mayhem

A new armor_mayhem project.

## Getting Started

flutter create --platforms=android,ios --org com.flashgamesapk --android-language java mini_putt

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
