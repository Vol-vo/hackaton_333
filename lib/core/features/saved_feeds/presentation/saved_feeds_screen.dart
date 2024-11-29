import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/styles/color.dart';

@RoutePage()
class SavedFeedsScreen extends StatefulWidget {
  const SavedFeedsScreen({super.key});

  @override
  State<SavedFeedsScreen> createState() => _SavedFeedsScreenState();
}

class _SavedFeedsScreenState extends State<SavedFeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: DefaultAppBar(
          titleText: 'Сохранённые фиды',
        ),
      ),
      backgroundColor: UIColors.background,
    );
  }
}
