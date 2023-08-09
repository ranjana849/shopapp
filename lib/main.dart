import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/providers/theme_provider.dart';
import 'package:flutterfirebase_app/root_screen.dart';
import 'package:flutterfirebase_app/screen/HomePage.dart';
import 'package:flutterfirebase_app/widgets/products/product_widget.dart';
import 'package:provider/provider.dart';

import 'consts/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_)=>ThemeProvider())
      ],
      child: Consumer<ThemeProvider>(
        builder: (context,themeProvider,child) {
          return MaterialApp(
            title: 'Shop',
            debugShowCheckedModeBanner: false,
            theme:Styles.themeData(
               isDarkTheme: themeProvider.getIsDarkTheme,
              context:context,
            ),
            home: RootScreen(),
          );
        }
      ),
    );
  }
}

