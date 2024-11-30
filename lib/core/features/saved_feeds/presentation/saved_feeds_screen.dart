import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/domain/navigation/app_router.dart';
import 'package:hackaton_333/core/features/widgets/default_app_bar.dart';
import 'package:hackaton_333/core/resources/hive_boxes.dart';
import 'package:hackaton_333/core/styles/color.dart';
import 'package:hive/hive.dart';

@RoutePage()
class SavedFeedsScreen extends StatefulWidget {
  const SavedFeedsScreen({super.key});

  @override
  State<SavedFeedsScreen> createState() => _SavedFeedsScreenState();
}

class _SavedFeedsScreenState extends State<SavedFeedsScreen> {

  @override
  void initState() {
    _savedFeeds();
    super.initState();
  }

  List<SavedFeedsModel> savedFeeds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: DefaultAppBar(
          titleText: 'Сохранённые фиды',
        ),
      ),
      backgroundColor: UIColors.background,
      body: ListView.builder(
        itemCount: savedFeeds.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(child: Text(savedFeeds[index].nameFiles),),
            );
        }
      )
    );
  }


  Future<void> _savedFeeds() async {
    final box = await Hive.openBox<String>(HiveBoxes.changesFeeds);
    final list = box.values.toList();
    for (String element in list) {
      SavedFeedsModel savedFeedsModel = SavedFeedsModel.fromJson(element);
      savedFeeds.add(savedFeedsModel);
    }
  }
}
