import 'package:flutter/material.dart';
import 'package:flutter_di_things/views/logic/main_logic.dart';
import 'package:flutter_di_things/views/main_view.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Provider<MainLogic>(
          create: (context) => MainLogic(),
          dispose: (context, value) {},
          child: const MainScreen()),
    );
  }
}
