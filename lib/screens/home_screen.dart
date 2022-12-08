import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherapp/screens/search_screen.dart';
import 'package:weatherapp/utils/app_navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('helloWorld!'),
        actions: [IconButton(onPressed: () {
          AppNavigator.appNavigator(context, false, SearchScreen());
        }, icon: Icon(Icons.search))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'there is no Weather  Start',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'Searching now ',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
