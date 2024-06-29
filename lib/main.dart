import 'package:flutter/material.dart';

import 'main_scaffold.dart';

void main() {
  runApp(const YetiApp());
}

class YetiApp extends StatelessWidget {
  const YetiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Your desired AppBar color
          elevation: 4.0, // Set the elevation for the AppBar
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          elevation: 4.0, // Set the same elevation for the BottomSheet
          backgroundColor:
              Colors.white, // Set the background color for the BottomSheet
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScaffold(),
    );
  }
}
