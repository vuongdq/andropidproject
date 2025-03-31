# ninja_game

A new ninja_game project.

## Getting Started

Khởi tạo
flutter create --platforms=android,ios --org com.flashgamesapk --android-language java final_ninja_zero

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
