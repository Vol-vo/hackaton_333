import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_bloc.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/features/widgets/default_push_button.dart';
import 'package:hackaton_333/core/resources/hive_boxes.dart';
import 'package:hackaton_333/core/resources/hive_keys.dart';
import 'package:hackaton_333/core/styles/color.dart';
import 'package:hive/hive.dart';

@RoutePage()
class ServerInputScreen extends StatefulWidget {
  const ServerInputScreen({super.key});

  @override
  State<ServerInputScreen> createState() => _ServerInputScreenState();
}

class _ServerInputScreenState extends State<ServerInputScreen> {
  late TextEditingController _controller;
  bool saveFeedUrl = true;

  @override
  void initState() {
    _controller = TextEditingController();
    putSavedUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: DefaultAppBar(
          titleText: 'Загрузка фида с сервера',
        ),
      ),
      backgroundColor: UIColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: UIColors.accent,
                ),
              ),
              margin: const EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Center(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: UIColors.contentPrimary.withOpacity(0.4),
                        fontFamily: 'Manrope',
                      ),
                      hintText: 'https://example.com',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: UIColors.contentPrimary,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: saveFeedUrl,
                  onChanged: (value) {
                    setState(() {
                      saveFeedUrl = value ?? true; 
                    });
                  },
                  activeColor: UIColors.accent,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Сохранить адрес',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    color: UIColors.contentPrimary,
                  ),
                ),
              ],
            ),
            DefaultPushButton(
              onTap: () async {
                context.router.maybePop();

                if (_controller.text != '' && saveFeedUrl) {
                  final feedUrlBox = await Hive.openBox(HiveBoxes.feedUrlBox);
                  feedUrlBox.put(HiveKeys.feedUrl, _controller.text);
                }
                if (!saveFeedUrl) {
                  final feedUrlBox = await Hive.openBox(HiveBoxes.feedUrlBox);
                  feedUrlBox.put(HiveKeys.feedUrl, null);
                }
                final feedLoaderBloc = context.read<FeedLoaderBloc>();
                feedLoaderBloc.add(
                  LoadFeedFromServerEvent(url: _controller.text),
                );
              },

              buttonText: 'Загрузить фид с сервера',
            ),
          ],
        ),
      ),
    );
  }

  Future<void> putSavedUrl() async{
    final feedUrlBox = await Hive.openBox(HiveBoxes.feedUrlBox);
    final savedUrl = feedUrlBox.get(HiveKeys.feedUrl);

    if (savedUrl != null) {
      _controller.text = savedUrl;
    }
  }
}
