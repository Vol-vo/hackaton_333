import 'package:flutter/material.dart';
import 'package:hackaton_333/core/styles/color.dart';

class DefaultPushButton extends StatelessWidget {
  const DefaultPushButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: UIColors.accent,
              fixedSize: Size.fromWidth(MediaQuery.of(context).size.width)),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: UIColors.background,
              fontSize: 16,
              fontFamily: 'Manrope',
            ),
          ),
        ),
      ),
    );
  }
}
