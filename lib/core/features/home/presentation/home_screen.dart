import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/domain/navigation/app_router.dart';
import 'package:hackaton_333/core/styles/color.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        FeedLoaderTab(),
        SavedFeedsTab(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: UIColors.background,
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false ,
            showUnselectedLabels: false,
            backgroundColor: UIColors.bottomNavBar,
            selectedItemColor: UIColors.accent,
            unselectedItemColor: UIColors.contentPrimary,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: "Загрузить фид",
                icon: Icon(
                  Icons.download,
                ),
              ),
              BottomNavigationBarItem(
                label: "Сохраненные фиды",
                icon: Icon(
                  Icons.save,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
