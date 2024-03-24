import 'package:flutter/material.dart';
import '../presentation/first_page_screen/first_page_screen.dart';
import '../presentation/leadership_board_screen/leadership_board_screen.dart';
import '../presentation/friends_screen/friends_screen.dart';
import '../presentation/game_screen/game_screen.dart';
import '../presentation/game_roll_seven_screen/game_roll_seven_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String firstPageScreen = '/first_page_screen';

  static const String leadershipBoardScreen = '/leadership_board_screen';

  static const String friendsScreen = '/friends_screen';

  static const String gameScreen = '/game_screen';

  static const String gameRollSevenScreen = '/game_roll_seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        firstPageScreen: FirstPageScreen.builder,
        leadershipBoardScreen: LeadershipBoardScreen.builder,
        friendsScreen: FriendsScreen.builder,
        gameScreen: GameScreen.builder,
        gameRollSevenScreen: GameRollSevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: FirstPageScreen.builder
      };
}
