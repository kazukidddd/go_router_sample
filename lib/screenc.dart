import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('スクリーンC')),
      body: Container(
        color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('スクリーンC'),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('スクリーンA'),
            ),
          ],
        ),
      ),
    );
  }
}
