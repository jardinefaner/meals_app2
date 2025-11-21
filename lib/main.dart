import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_app2/homepage.dart';
import 'package:meals_app2/themes/app_themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: AppThemes.light,
     darkTheme: AppThemes.dark,
     themeMode: ThemeMode.system,
     title: 'Meals App',
     home: const Homepage(),
   );
 }
}