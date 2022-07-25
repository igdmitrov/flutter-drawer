import 'package:flutter/material.dart';

import 'my_page_state.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  MyPageState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends MyPageState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
              'Home page',
            ),
          ],
        ),
      ),
    );
  }
}
