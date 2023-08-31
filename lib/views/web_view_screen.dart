import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({Key? key,required this.url}) : super(key: key);
 final String url;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.orangeAccent,
        ),
        title: Text("Details",style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: WebViewPlus(
        initialUrl: url,
      ),
    );
  }
}
