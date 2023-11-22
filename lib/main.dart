import 'package:flutter/material.dart';
import 'package:flutter_todo/ui/home_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // binding ensure
  WidgetsFlutterBinding.ensureInitialized();

  // initialize the Hive
  await Hive.initFlutter();

  // open a hive box
  var box = await Hive.openBox('toDoBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}
