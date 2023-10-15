import 'package:flutter/material.dart';
import 'package:habit_tracker/model/data_model.dart';
import 'package:habit_tracker/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';


void main() async {
  // initialize hive
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(datamodelAdapter());
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
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
