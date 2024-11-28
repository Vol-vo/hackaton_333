import 'package:flutter/material.dart';
import 'package:hackaton_333/features/feed_loader/presentation/feed_loader_screen.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  FeedLoaderScreen();
  }
}