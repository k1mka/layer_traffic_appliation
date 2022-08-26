import 'package:flutter/material.dart';
import 'package:layer_traffic_appliation/widgets/logo_widget.dart';
import 'package:layer_traffic_appliation/widgets/my_custom_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.10, 3, 0.5],
                colors: [
                  Colors.lightGreenAccent,
                  Colors.white,
                  Colors.lightGreenAccent,
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  LogoWidget(),
                  SizedBox(height: 100),
                  MyCustomFormWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
