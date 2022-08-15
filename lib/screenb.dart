import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('スクリーンB')),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('スクリーンB'),
            ElevatedButton(
              onPressed: () {
                context.go('/b/c');
              },
              child: const Text('スクリーンC'),
            ),
          ],
        ),
      ),
    );
  }
}
