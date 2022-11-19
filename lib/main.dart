import 'package:flutter/material.dart';
import 'package:hng_task4/src/general_widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Column(
            children: [
              AppTextField(
                hintText: 'Nmae',
                labelText: 'labe',
              ),
            ],
          ),
        ));
  }
}
