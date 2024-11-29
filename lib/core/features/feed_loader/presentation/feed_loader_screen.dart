import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_state.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/styles/color.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FeedLoaderScreen extends StatefulWidget {
  const FeedLoaderScreen({super.key});

  @override
  State<FeedLoaderScreen> createState() => _FeedLoaderScreenState();
}

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
          if (state is FeedLoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: UIColors.accent,
              ),
            );
          }
          if (state.errors == null) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    final feedLoaderBloc = context.read<FeedLoaderBloc>();
                    feedLoaderBloc.add(
                      PickFileAndSendFeedEvent(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: UIColors.accent,
                    fixedSize: Size.fromWidth(MediaQuery.of(context).size.width)
                  ),
                  child: const Text(
                    'Отправить фид',
                    style: TextStyle(
                      color: UIColors.background,
                      fontSize: 16,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ),
            );
          }

          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: UIColors.accent,
                      ),
                    ),
                    height: 70,
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'ТЕКСТ ОШИБКИ',
                          style: TextStyle(
                            color: UIColors.contentPrimary,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            iconColor: UIColors.background,
                            backgroundColor: UIColors.decline,
                          ),
                          label: const Icon(Icons.error),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            iconColor: UIColors.background,
                            backgroundColor: UIColors.accept,
                          ),
                          label: const Icon(Icons.check),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  itemCount: 10,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.library_add_check,
                      color: UIColors.background,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: UIColors.accent,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
