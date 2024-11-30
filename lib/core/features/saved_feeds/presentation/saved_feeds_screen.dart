import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/domain/navigation/app_router.dart';
import 'package:hackaton_333/core/features/feed_loader/presentation/feed_loader_screen.dart';
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

  StreamController<List<SavedFeedsModel>> savedFeedsStream = StreamController<List<SavedFeedsModel>>.broadcast();

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
      body:
      StreamBuilder<List<SavedFeedsModel>>(
        stream: savedFeedsStream.stream,
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                color: UIColors.accent,
              ),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  if (snapshot.data == null) {
                    return Center(child: CircularProgressIndicator(),);
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: GestureDetector(
                      onTap: (){
                        context.router.push(HistoryChangeFeedRoute(errors: snapshot.data![index].errors.currentValidatorErrors!,choises: snapshot.data![index].isAccepted));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: UIColors.accent
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Column(
                          children: [
                            const SizedBox(height: 3,),
                            Text(snapshot.data![index].nameFiles, style: const TextStyle(color: UIColors.accent),),
                            Text(snapshot.data![index].date.toString(), style: const TextStyle(color: UIColors.accent),),
                            const SizedBox(height: 3,),
                          ],
                        )),
                      ),
                    ),
                  );
                }
            );
          }

        }
      )
    );
  }


  void _savedFeeds() async {
    final box = await Hive.openBox<String>(HiveBoxes.changesFeeds);
    final list = box.values.toList();
    List<SavedFeedsModel> models = [];
    for (String element in list) {
      SavedFeedsModel savedFeedsModel = SavedFeedsModel.fromJson(element);
      models.add(savedFeedsModel);
    }
    print(box.values);
    box.close();
    savedFeedsStream.add(models);
  }
}
