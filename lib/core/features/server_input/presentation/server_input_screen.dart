import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/features/widgets/default_push_button.dart';
import 'package:hackaton_333/core/styles/color.dart';

@RoutePage()
class ServerInputScreen extends StatefulWidget {
  const ServerInputScreen({super.key});

  @override
  State<ServerInputScreen> createState() => _ServerInputScreenState();
}

class _ServerInputScreenState extends State<ServerInputScreen> {
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
                  value: true,
                  onChanged: (_) {},
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
              onTap: () {
                context.router.maybePop();
              },
              buttonText: 'Загрузить фид с сервера',
            ),
            
          ],
        ),
      ),
    );
  }
}
