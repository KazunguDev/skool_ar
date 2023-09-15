import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SearchPage extends StatefulWidget {
 const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
  NavigationDelegate(
  onProgress: (int progress) {
  // Update loading bar.
  },
  onPageStarted: (String url) {},
  onPageFinished: (String url) {},
  onWebResourceError: (WebResourceError error) {},
  onNavigationRequest: (NavigationRequest request) {
  if (request.url.startsWith('http://5f19-34-125-201-42.ngrok.io')) {
  return NavigationDecision.prevent;
  }
  return NavigationDecision.navigate;
  },
  ),
  )
  ..loadRequest(Uri.parse('http://5f19-34-125-201-42.ngrok.io'));


  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SkoolAR"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: WebViewWidget(controller: controller),
       /*
          WebView(
            // ignore: prefer_collection_literals
            gestureRecognizers: Set()
              ..add(
                Factory<VerticalDragGestureRecognizer>(
                  () => VerticalDragGestureRecognizer(),
                ), // or null
              ),
            gestureNavigationEnabled: true,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: "http://5f19-34-125-201-42.ngrok.io",
            onWebViewCreated: ((WebViewController webViewController) {
              _completer.complete(webViewController);
            }),
          ),
          */

        ),
      ),
    );
  }
}
