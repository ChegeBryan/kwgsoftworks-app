import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KwgWebView extends StatefulWidget {
  const KwgWebView({Key? key}) : super(key: key);

  @override
  _KwgWebViewState createState() => _KwgWebViewState();
}

class _KwgWebViewState extends State<KwgWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebView(
        initialUrl: 'https://kwgsoftworks.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
