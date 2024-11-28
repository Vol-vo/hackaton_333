import 'package:flutter/material.dart';

class FeedLoaderScreen extends StatelessWidget {
  const FeedLoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Закгрузчик фидов'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Отправить фид'),
          
        ),
      ),
    );
  }
}
