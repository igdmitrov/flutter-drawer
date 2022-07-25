import 'package:flutter/material.dart';

import 'my_page_state.dart';

class Notifications extends StatefulWidget {
  static String routeName = '/notifications';
  const Notifications({Key? key}) : super(key: key);

  @override
  MyPageState<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends MyPageState<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const Text("HI USER"),
            ...drawerItems(context),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Notifications page',
            ),
          ],
        ),
      ),
    );
  }
}
