
# extreme_pamplona


A new extreme_pamplona project.

## Getting Started

flutter create --platforms=android,ios --org com.flashgamesapk --android-language java extreme_pamplona_new


keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key


flutter clean
flutter pub get
dart run icons_launcher:create
flutter build apk --release
flutter build appbundle --release




flutter clean
flutter pub get
dart run icons_launcher:create
flutter run
