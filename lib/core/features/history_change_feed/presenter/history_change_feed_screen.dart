import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/styles/color.dart';

@RoutePage()
class HistoryChangeFeedScreen extends StatelessWidget {
  const HistoryChangeFeedScreen({super.key, required this.errors, required this.choises});

  final List<CurrentValidatorError> errors;
  final List<bool> choises;

  static final style = TextStyle(
    fontFamily: 'Manrope',
    color: UIColors.contentPrimary,
  );

  @override
  Widget build(BuildContext context) {
    print(errors);
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(54),
          child: DefaultAppBar(
            titleText: 'История изменений',
          ),
        ),
        backgroundColor: UIColors.background,
        body: ListView.builder(
          itemCount: errors.length,
          itemBuilder: (BuildContext context, int index) {
            if (!choises[index]) {
              return SizedBox.shrink();
            }
            return Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: UIColors.accent, width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Message: ${errors[index].message}' ?? '',
                        style: style,
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: UIColors.decline,
                        child: Text(
                          errors[index].lines!.invalidLines == null ? '' : errors[index].lines!.invalidLines!.length > 0 ? errors[index].lines!.invalidLines!.first.line ?? '' : '',
                          style: style,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: UIColors.accent,
                        child: Text(
                          errors[index].lines!.correctLines == null ? '' :errors[index].lines!.correctLines!.length > 0 ? errors[index].lines!.correctLines!.first.line ?? '' : '',
                          style: style,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
