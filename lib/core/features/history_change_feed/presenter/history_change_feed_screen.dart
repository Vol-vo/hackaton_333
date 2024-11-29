import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/styles/color.dart';

@RoutePage()
class HistoryChangeFeedScreen extends StatelessWidget {
  const HistoryChangeFeedScreen({super.key, required this.errors});

  final List<CurrentValidatorError> errors;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: DefaultAppBar(
          titleText: 'История изменений',
        ),
      ),
      backgroundColor: UIColors.background,
    );
  }
}