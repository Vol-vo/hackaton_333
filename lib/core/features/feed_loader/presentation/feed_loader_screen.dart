import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton_333/core/domain/navigation/app_router.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_state.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/features/widgets/default_push_button.dart';
import 'package:hackaton_333/core/styles/box_styles.dart';
import 'package:hackaton_333/core/styles/color.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FeedLoaderScreen extends StatefulWidget {
  const FeedLoaderScreen({super.key});

  @override
  State<FeedLoaderScreen> createState() => _FeedLoaderScreenState();
}

List<bool>? choises;
List<bool>? openedErrors;

class _FeedLoaderScreenState extends State<FeedLoaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: DefaultAppBar(
          titleText: 'Обработчик фидов',
        ),
      ),
      backgroundColor: UIColors.background,
      body: BlocBuilder<FeedLoaderBloc, FeedLoaderState>(
        builder: (context, state) {
          if (state is FeedLoadAnswerSuccessState) {
            return Center(
              child: Column(
                children: [
                  Text(
                    'Успешно Загружено!',
                    style: TextStyle(color: UIColors.contentPrimary),
                  ),
                  DefaultPushButton(
                    onTap: () {
                      final feedLoaderBloc = context.read<FeedLoaderBloc>();

                      feedLoaderBloc.add(
                        LoadCurrencyFeedEvent(),
                      );
                    },
                    buttonText: 'Сохранить исправный фид на устройстве',
                  ),
                  DefaultPushButton(
                    onTap: () {},
                    buttonText: 'Загрузить исправный фид на сервер',
                  ),
                ],
              ),
            );
          } else if (state is FeedLoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: UIColors.accent,
              ),
            );
          } else if (state is LoadFeedSuccessState) {
            return Center(
              child: Text(
                'Фид упешно загружен!',
                style: TextStyle(color: UIColors.contentPrimary),
              ),
            );
          }

          if (state.errors == null) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultPushButton(
                    onTap: () {
                      context.router.push(const ServerInputRoute());
                    },
                    buttonText: 'Отправить фид c сервера',
                  ),
                  DefaultPushButton(
                    onTap: () {
                      final feedLoaderBloc = context.read<FeedLoaderBloc>();
                      feedLoaderBloc.add(
                        PickFileAndSendFeedEvent(),
                      );
                    },
                    buttonText: 'Отправить фид с устройства',
                  ),
                ],
              ),
            );
          }

          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    choises = choises ??
                        List.generate(
                          state.errors!.currentValidatorErrors!.length,
                          (index) => true,
                        );

                    openedErrors = openedErrors ??
                        List.generate(
                          state.errors!.currentValidatorErrors!.length,
                          (index) => false,
                        );

                    return _choiseErrorSolveElement(state, index);
                  },
                  itemCount: state.errors!.currentValidatorErrors!.length,
                ),
              ),
              DefaultPushButton(
                onTap: () {
                  final userAnswer = <String>[];

                  for (int index = 0; index < choises!.length; index++) {
                    if (choises![index]) {
                      userAnswer.add(
                        state.errors!.currentValidatorErrors![index].errorId!,
                      );
                    }
                  }

                  final feedLoaderBloc = context.read<FeedLoaderBloc>();
                  feedLoaderBloc.add(
                    PushChangesFeedEvent(choises: choises!, errors: state.errors!),
                    LoadUserAnswerEvent(
                      userAnswer: userAnswer,
                      workId: state.workId!,
                    ),
                  );
                },
                buttonText: 'Отправить изменения',
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _choiseErrorSolveElement(FeedLoaderState state, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: UIColors.accent,
        ),
      ),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 215,
                  child: Text(
                    "${state.errors!.currentValidatorErrors![index].message!} \n \n ${state.errors!.currentValidatorErrors![index].availableFix!}",
                    style: TextStyle(
                      color: UIColors.contentPrimary,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
                const Spacer(),
                _choiseButtons(index),
              ],
            ),
            _errorInfoVisible(
              state: state,
              index: index,
            ),
          ],
        ),
      ),
    );
  }

  Widget _choiseButtons(
    int index,
  ) {
    return Column(
      children: [
        Row(
          children: [
            OutlinedButton.icon(
              onPressed: () => _onButtonPressed(index, false),
              style: choises![index]
                  ? UIBoxStyles.declineButtonDeactive
                  : UIBoxStyles.declineButtonActive,
              label: const Icon(Icons.close),
            ),
            const SizedBox(
              width: 8,
            ),
            OutlinedButton.icon(
              onPressed: () => _onButtonPressed(index, true),
              style: choises![index]
                  ? UIBoxStyles.acceptButtonActive
                  : UIBoxStyles.acceptButtonDeactive,
              label: const Icon(Icons.check),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {
            setState(() {
              openedErrors![index] = !openedErrors![index];
            });
          },
          child: const Text(
            'Подробнее',
            style: TextStyle(
              color: UIColors.accent,
            ),
          ),
        )
      ],
    );
  }

  Widget _errorInfoVisible({
    required FeedLoaderState state,
    required int index,
  }) {
    return Visibility(
      visible: openedErrors![index],
      child: Column(
        children: [
          for (var str in state
              .errors!.currentValidatorErrors![index].lines!.invalidLines!)
            Container(
              color: UIColors.decline,
              child: Text(
                str.line!,
                style: const TextStyle(color: UIColors.contentSecondary),
              ),
            ),
          for (var str in state
              .errors!.currentValidatorErrors![index].lines!.correctLines!)
            Container(
              color: UIColors.accept,
              child: Text(
                str.line!,
                style: const TextStyle(
                  color: UIColors.contentSecondary,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _onButtonPressed(int index, bool buttonIsAccept) {
    if (buttonIsAccept && !choises![index]) {
      setState(() {
        choises![index] = true;
      });
    } else if (!buttonIsAccept && choises![index]) {
      setState(() {
        choises![index] = false;
      });
    }
  }
}
