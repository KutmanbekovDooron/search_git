import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebViewWidget extends StatefulWidget {

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late WebViewController controller;

  @override
  void initState() {

    if(Platform.isAndroid) WebView.platform = AndroidWebView();
    if(Platform.isIOS) WebView.platform = CupertinoWebView();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () async {
            if(await controller.canGoBack()) {
              controller.goBack();
            }
          }, icon: Icon(Icons.arrow_back))
        ],
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://www.youtube.com",
        onWebViewCreated: (controller){
          this.controller = controller;
        },
      ),
    );
  }
}
