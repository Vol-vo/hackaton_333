import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/styles/color.dart';

import '../../widgets/default_app_bar.dart';

const services = ['Yandex', 'Ozon'];

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

int currentService = 0;

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: DefaultAppBar(
          titleText: 'Сервер для выгрузки фидов',
        ),
      ),
      backgroundColor: UIColors.background,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _updateService(index),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: UIColors.accent,
                ),
              ),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    services[index],
                    style: TextStyle(
                      color: UIColors.contentPrimary,
                      fontFamily: 'Manrope',
                      fontSize: 24,
                    ),
                  ),
                  const Spacer(),
                  Checkbox(
                    activeColor: UIColors.accent,
                    value: currentService == index,
                    onChanged: (_) {
                      _updateService(index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: services.length,
      ),
    );
  }

  void _updateService(int index) {
    if (currentService != index) {
      setState(() {
        currentService = index;
      });
    }
  }
}
