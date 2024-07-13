import 'package:flutter/material.dart';
import 'package:stackedpt2/app/app.locator.dart';
import 'package:stackedpt2/screens/home/home_view.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



//PACKAGES USED : 
// flutter pub run build_runner build ---For creating locator
// stacked: ^3.4.2
// stacked_services: ^1.5.0
// stacked_generator: ^1.6.1
// dev dependency : build_runner: ^2.4.11
