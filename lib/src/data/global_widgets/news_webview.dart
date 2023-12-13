import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'bottom_navigation_bar.dart';

class NewsWebView extends StatelessWidget {
  final url;
  const NewsWebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));
    return Scaffold(
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
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
