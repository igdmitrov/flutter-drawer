import 'home_screen.dart';
import 'notifications.dart';

final menuItems = {
  {'menuName': 'HOME', 'route': const HomeScreen()},
  {'menuName': 'NOTIFICATIONS', 'route': const Notifications()},
};

List<bool> isHighlighted = [false, false];
