import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  late WebViewControllerPlus _controler;

  @override
  void initState() {
    super.initState();
    // Đặt chế độ toàn màn hình
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Khóa màn hình xoay ngang
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    _controler = WebViewControllerPlus()
      ..loadRequest(Uri.parse("https://flashga.me/embed/scrap-metal-heroes#webview"))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {},
        ),
      );
  }

  @override
  void dispose() {
    // Khôi phục chế độ xoay màn hình mặc định
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: _controler),
          Positioned(
            top: 16, // Điều chỉnh vị trí theo ý bạn
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}