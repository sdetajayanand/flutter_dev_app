import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {

  final _urlController = TextEditingController();

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse('https://docs.flutter.dev'));
  //..loadRequest(Uri.parse(_urlController.text));

  bool _showWebView = false;

  

  @override
  void dispose(){
    _urlController.dispose();
    super.dispose();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Container'),
      ),
      body: _showWebView ? WebViewWidget(controller: controller) :
        Padding(
          padding: const EdgeInsets.fromLTRB(8,8,8,8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextField(
                  decoration: const InputDecoration(
                    label: Text('Enter the url here')),
                    keyboardType: TextInputType.url,
                    maxLength: 20,
                    controller: _urlController,
                    
                ),
                ElevatedButton(      //add textField and controller to pass to loadRequest(url.toString());
                    onPressed: () {
                      setState(() {
                        _showWebView = true;
                      });
                      
                    },
                     child: const Text('Go to Flutter Documentation')
                )
            ],
          ),
        ),
    );
  }
}
