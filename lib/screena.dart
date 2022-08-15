import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('スクリーンA')),
      body: Container(
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('スクリーンA'),
            ElevatedButton(
              onPressed: () {
                context.go('/b');
              },
              child: const Text('スクリーンB'),
            ),
          ],
        ),
      ),
    );
  }
}
