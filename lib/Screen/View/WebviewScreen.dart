import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {
  const WebviewScreen({Key? key}) : super(key: key);

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  @override
  Widget build(BuildContext context) {
    String link = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(body: Center(child: Text("$link"))
            // WebView(
            //   initialUrl: '$link',
            // )
            ));
  }
}
