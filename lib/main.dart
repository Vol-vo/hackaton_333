import 'package:flutter/material.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/domain/global/di/injectable_setup.dart';
import 'package:hackaton_333/core/resources/hive_boxes.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:hackaton_333/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  // final box = await Hive.openBox<SavedFeedsModel>(HiveBoxes.changesFeeds);
  // box.addAll(box.values);
  runApp(const Wrapper());
}
