import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_ml_kit_example/screens/easteregg.dart';
import 'package:google_ml_kit_example/screens/menu.dart';
import 'package:google_ml_kit_example/screens/splashscreen.dart';
import 'package:google_ml_kit_example/theme.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle());
  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      title: 'Visual IA',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? ThemeMode
              .dark // Si el dispositivo está en modo oscuro, usa el tema oscuro
          : ThemeMode.light, // De lo contrario, usa el tema claro
      initialRoute: 'splash',
      routes: {
        'menu': (BuildContext context) => Menu(),
        'splash': (BuildContext context) => SplashScreen(),
        'easteregg': (BuildContext context) => Easteregg(),
      },
    );
  }
}
