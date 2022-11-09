import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Provider(
        create: (context) {},
        dispose: (context, value) {},
        child: Text(""),
      ),
    );
  }
}
