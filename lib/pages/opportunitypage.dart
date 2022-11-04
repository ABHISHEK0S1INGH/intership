import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Opportunitypage extends StatelessWidget {
  const Opportunitypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://internshala.com',
      ),
    );
  }
}
