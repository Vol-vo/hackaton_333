import 'package:flutter/material.dart';
import 'package:hackaton_333/core/domain/global/di/injectable_setup.dart';
import 'package:hackaton_333/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();

  runApp(const Wrapper());
}


