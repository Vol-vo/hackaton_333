import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/data/lines.dart';
import 'package:hackaton_333/core/features/feed_loader/presentation/feed_loader_screen.dart';
import 'package:hackaton_333/core/features/history_change_feed/presenter/history_change_feed_screen.dart';
import 'package:hackaton_333/core/features/home/presentation/home_screen.dart';
import 'package:hackaton_333/core/features/saved_feeds/presentation/saved_feeds_screen.dart';
import 'package:hackaton_333/core/features/settings/presentation/settings_screen.dart';

import '../../features/server_input/presentation/server_input_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: 'feed-loader-tab',
              initial: true,
              page: FeedLoaderTab.page,
              children: [
                AutoRoute(
                  path: 'feed-loader',
                  initial: true,
                  page: FeedLoaderRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'saved-feeds-tab',
              page: SavedFeedsTab.page,
              children: [
                AutoRoute(
                  path: 'saved-feeds',
                  initial: true,
                  page: SavedFeedsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'settings-tab',
              page: SettingsTab.page,
              children: [
                AutoRoute(
                  path: 'settings',
                  initial: true,
                  page: SettingsRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/server-input',
          initial: false,
          page: ServerInputRoute.page,
        ),
        AutoRoute(
          initial: false,
          page: HistoryChangeFeedRoute.page,
          path: '/history-change-feed',
        )
      ];
}

@RoutePage(name: 'FeedLoaderTab')
class FeedLoaderTabPage extends AutoRouter {
  const FeedLoaderTabPage({super.key});
}

@RoutePage(name: 'SavedFeedsTab')
class SavedFeedsTabPage extends AutoRouter {
  const SavedFeedsTabPage({super.key});
}

@RoutePage(name: 'SettingsTab')
class SettingsTabPage extends AutoRouter {
  const SettingsTabPage({super.key});
}
