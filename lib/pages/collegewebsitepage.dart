import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class CollegWebsite extends StatelessWidget {
  const CollegWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'http://recb.ac.in',
      ),
    );
  }
}
