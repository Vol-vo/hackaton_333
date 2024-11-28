import 'package:flutter/material.dart';
import 'package:hackaton_333/core/styles/color.dart';

class FeedLoaderScreen extends StatelessWidget {
  const FeedLoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Загрузчик фидов',
          style: TextStyle(
            color: UIColors.textColor,
          ),
        ),
        backgroundColor: UIColors.appBarColor,
      ),
      backgroundColor: UIColors.backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            
          ),
          child: const Text(
            'Отправить фид',
            style: TextStyle(
              color: UIColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
