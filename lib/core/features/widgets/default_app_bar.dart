import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:hackaton_333/core/styles/color.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({
    super.key,
    required this.titleText,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return GradientAppBar(
      brightness: Brightness.dark,
      title: Align(
        alignment: Alignment.center,
        child: Text(
          titleText,
          style: TextStyle(
            color: UIColors.contentPrimary,
            fontFamily: 'Manrope',
          ),
        ),
      ),
      gradient: const LinearGradient(
        colors: [
          UIColors.appBarFirst,
          UIColors.appBarSecond,
          UIColors.appBarThird,
        ],
      ),
    );
  }
}
