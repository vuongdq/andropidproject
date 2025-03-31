# the_last_stand_2

A new the_last_stand_2 project.

## Getting Started

Khởi tạo
flutter create --platforms=android,ios --org com.flashgamesapk --android-language java epic_battle_fantasy_new

Gen Key
keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key


flutter clean
flutter pub get
dart run icons_launcher:create
flutter build apk --release


flutter clean
flutter pub get
dart run icons_launcher:create
flutter build appbundle --release

flutter clean
flutter pub get
dart run icons_launcher:create
flutter run
