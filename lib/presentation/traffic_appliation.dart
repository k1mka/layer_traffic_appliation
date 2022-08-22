import 'package:flutter/material.dart';

import '../widgets/logo_widget.dart';

class TrafficApplication extends StatelessWidget {
  const TrafficApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: LogoWidget(),
      ),
    );
  }
}
