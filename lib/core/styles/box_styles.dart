import 'package:flutter/material.dart';
import 'package:hackaton_333/core/styles/color.dart';

class UIBoxStyles {
  static final declineButtonActive = OutlinedButton.styleFrom(
    iconColor: UIColors.background,
    backgroundColor: UIColors.decline,
    side: const BorderSide(width: 0),
  );

  static final declineButtonDeactive = OutlinedButton.styleFrom(
    iconColor: UIColors.decline,
    backgroundColor: UIColors.background,
    side: const BorderSide(
      width: 2,
      color: UIColors.decline,
    ),
  );

  static final acceptButtonActive = OutlinedButton.styleFrom(
    iconColor: UIColors.background,
    backgroundColor: UIColors.accept,
    side: const BorderSide(
      width: 0,
    ),
  );

  static final acceptButtonDeactive = OutlinedButton.styleFrom(
    iconColor: UIColors.accept,
    backgroundColor: UIColors.background,
    side: const BorderSide(
      width: 2,
      color: UIColors.accept,
    ),
  );

  static final moreButton = OutlinedButton.styleFrom(
    iconColor: UIColors.contentPrimary,
    backgroundColor: UIColors.background,
    side: const BorderSide(
      width: 2,
      color: UIColors.accent,
    ),
  );
}
