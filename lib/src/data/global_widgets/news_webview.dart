import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'bottom_navigation_bar.dart';

class NewsWebView extends StatefulWidget {
  final url;
  const NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  @override
  Widget build(BuildContext context) {
    final _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
    Future<bool> _goBack() async {
      final canGoBack = await _controller.canGoBack();
      if (canGoBack) {
        _controller.goBack();
        return false; // Prevent default back button behavior
      } else {
        return true; // Allow app to close if no more history
      }
    }
    return WillPopScope(
      onWillPop: _goBack,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News Universe",
            style: TextStyle(
                color: Colors.blue,
                fontFamily: GoogleFonts.gugi().fontFamily,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0XFF1D1F21),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
            onPressed: () {
              _goBack();
            },
          ),
        ),
        bottomNavigationBar: BottomNavigation(),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
