import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'HomeScreen.dart';
import 'ProfileScreen.dart';
import 'GalleryScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock the app orientation to portrait mode only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Set the design size based on the UI mockup (e.g., Figma/XD)
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.deepPurple),

          // Define named routes for navigation between screens
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
            '/profile': (context) => const ProfileScreen(),
            '/gallery': (context) => const GalleryScreen(),
          },
        );
      },
    );
  }
}
