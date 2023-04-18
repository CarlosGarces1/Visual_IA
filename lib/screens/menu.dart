import 'package:flutter/material.dart';
import 'package:google_ml_kit_example/screens/about.dart';
import 'package:google_ml_kit_example/screens/developers.dart';
import 'package:google_ml_kit_example/vision_detector_views/text_detector_view.dart';

import '../vision_detector_views/object_detector_view.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  // ignore: unused_field
  int _selectedIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ObjectDetectorView(),
            TextRecognizerView(),
            Developers(),
            AboutPage(),
          ],
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        drawer: GestureDetector(
          onHorizontalDragStart: (details) {
            print('onHorizontalDragStart');
          },
          child: Drawer(
            backgroundColor: Theme.of(context).hintColor,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset("assets/fotos/logo.png"),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Detectar Objetos",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.emoji_objects_sharp,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.jumpToPage(_selectedIndex = 0);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Detectar Texto",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.text_fields_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.jumpToPage(_selectedIndex = 1);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Desarrolladores",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.jumpToPage(_selectedIndex = 2);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Acerca de: ",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.jumpToPage(_selectedIndex = 3);
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Visual IA',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
