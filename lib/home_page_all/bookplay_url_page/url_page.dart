import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UrlPage extends StatelessWidget {
  UrlPage({Key? key,this.url}) : super(key: key);

  WebViewController? mController;
  String? url ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          onPageStarted: (url) {
            print("url : $url");
          },
          onWebViewCreated: (controller){
            this.mController = controller;
          },
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
