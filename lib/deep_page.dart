import 'package:flutter/material.dart';

class IosDeepPage extends StatelessWidget {
  const IosDeepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Deeplink page"),
      ),
      body: const Center(
        child: Text("Deep link page under the / route"),
      ),
    );
  }
}
