import 'package:flutter/material.dart';

class FeedLoaderScreen extends StatelessWidget {
  const FeedLoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Загрузчик фидов',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color(0xFF121240),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          child: const Text(
            'Отправить фид',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
