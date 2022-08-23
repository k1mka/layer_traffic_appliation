import 'package:flutter/material.dart';
import 'package:layer_traffic_appliation/widgets/logo_widget.dart';
import 'package:layer_traffic_appliation/widgets/my_custom_form_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.green),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 100),
              LogoWidget(),
              SizedBox(height: 100),
              MyCustomFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
