import 'package:flutter/material.dart';
import 'package:flutter_lesson_6/product/provider/app_provider.dart';
import 'package:flutter_lesson_6/views/settings_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppProvider())],
      child: Consumer<AppProvider>(
        builder:
            (context, appProvider, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              themeMode: appProvider.theme,
              theme: ThemeData.light().copyWith(
                // textTheme: TextTheme(  Tüm enumları doldurman gerekir
                //   headlineLarge: TextStyle(
                //     fontSize: 32,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.blue,
                //   ),
                // ),
                appBarTheme: AppBarTheme(backgroundColor: Colors.red),
              ),
              darkTheme: ThemeData.dark().copyWith(
                appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
                colorScheme: ColorScheme.dark().copyWith(
                  primary: Colors.purple,
                ),
              ),
              home: SettingsPage(),
            ),
      ),
    );
  }
}
