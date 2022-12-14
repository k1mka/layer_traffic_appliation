import 'package:flutter/material.dart';
import 'package:layer_traffic_appliation/presentation/screens/main_screen.dart';

class TrafficApplication extends StatelessWidget {
  const TrafficApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SafeArea(
        child: LoginScreen(),
      ),
    );
  }
}
