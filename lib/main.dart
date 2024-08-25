import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Practise_UI/AspectRatioUI.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([]);
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow
        ),
        useMaterial3: true,
      ),
      //home: const Flexible_Expanded_UI(),
      home: const AspectRatioUI(),
    );
  }
}


