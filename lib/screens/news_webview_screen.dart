import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/global_widgets/my_appbar.dart';

class NewsWebView extends StatefulWidget {
  final String url;

  const NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  @override
  Widget build(BuildContext context) {
    final themeManager = AdaptiveTheme.of(context);
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

    // Switch Icons
    IconData lightIcon = Icons.light_mode;
    IconData darkIcon = Icons.dark_mode;
    IconData systemDefault = Icons.android;

    return WillPopScope(
      onWillPop: goBack,
      child: Scaffold(
        appBar: MyAppBar(
          actionIconButton: IconButton(
            onPressed: () {
              themeManager.toggleThemeMode();
            },
            icon: Icon(themeManager.mode.isLight
                ? lightIcon
                : themeManager.mode.isDark
                    ? darkIcon
                    : systemDefault),
          ),
        ),
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
