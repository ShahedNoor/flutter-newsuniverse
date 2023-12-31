import 'package:flutter/material.dart';
import 'package:newsuniverse/src/data/global_widgets/my_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  final String url;
  const NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
    Future<bool> goBack() async {
      final canGoBack = await controller.canGoBack();
      if (canGoBack) {
        controller.goBack();
        return false; // Prevent default back button behavior
      } else {
        return true; // Allow app to close if no more history
      }
    }

    bool isDarkMode = false;
    // Switch Icons
    IconData lightIcon = Icons.light_mode;
    IconData darkIcon = Icons.dark_mode;

    return WillPopScope(
      onWillPop: goBack,
      child: Scaffold(
        appBar: MyAppBar(
          leadingIconButton: IconButton(
            onPressed: () async {
              bool shouldCloseApp = await goBack();
              if (shouldCloseApp) {
                Navigator.of(context).pop();
              }
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actionIconButton: IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: Icon(isDarkMode ? darkIcon : lightIcon),
          ),
        ),
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}