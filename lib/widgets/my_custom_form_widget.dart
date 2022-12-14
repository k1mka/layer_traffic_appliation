import 'package:flutter/material.dart';
import 'package:layer_traffic_appliation/widgets/button_widget.dart';

class MyCustomFormWidget extends StatefulWidget {
  const MyCustomFormWidget({Key? key}) : super(key: key);

  @override
  State<MyCustomFormWidget> createState() => MyCustomFormWidgetState();
}

class MyCustomFormWidgetState extends State<MyCustomFormWidget> {
  final formKey = GlobalKey<FormState>();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter your data',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            const Text(
              'Here to get!',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            const SizedBox(
              height: 14,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[a-z A-Z]+ $').hasMatch(value)) {
                  return 'Please, Enter correct name';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your phone',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+ $')
                        .hasMatch(value)) {
                  return 'Please, Enter correct phone';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your mail',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                        .hasMatch(value)) {
                  return 'Please, Enter correct email';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 6,
            ),
            Center(
              child: ButtonWidget(onPressed: () {
                if (formKey.currentState!.validate()) {}
              }),
            ),
          ],
        ),
      ),
    );
  }
}
