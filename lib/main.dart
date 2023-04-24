import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:habittrackertute/pages/home_page.dart';
import 'package:habittrackertute/screens/signin_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // initialize hive
  await Hive.initFlutter();

  // open a box
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
  
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
