import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_ml_kit_example/screens/easteregg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Developers extends StatelessWidget {
  const Developers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20),
              child: Text(
                'Desarrolladores',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            developer1('assets/fotos/carlos.png', 'Carlos Felipe Garcés ',
                'https://github.com/CarlosGarces1', context),
            const SizedBox(
              height: 20,
            ),
            developer4(
                'assets/fotos/mateo.png',
                'Miguel Mateo Mont',
                'Desarrollador BackEnd',
                'https://github.com/Mateo-Mont',
                context),
            const SizedBox(
              height: 20,
            ),
            developer4('assets/fotos/raul.png', 'Jesus Raúl Villalobos',
                'Documentación', 'https://github.com/Jeravima', context),
            const SizedBox(
              height: 20,
            ),
            developer4('assets/fotos/mely.png', 'Ingry Melyssa Olarte',
                'Documentación', 'https://github.com/IngryOlarte', context),
            const SizedBox(
              height: 20,
            ),
            developer2('assets/fotos/jannios.png', '', context),
            const SizedBox(
              height: 20,
            ),
            developer4('assets/fotos/jefer.png', 'Jeferson Rolón Ochoa',
                'Representante', 'https://github.com/jefer15', context),
            const SizedBox(
              height: 20,
            ),
            developer4('assets/fotos/angel.png', 'Angel Manuel Jaimes',
                'Representante', 'https://github.com/angeljaimes2001', context),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Easteregg(), // Replace HomeScreen() with your app's main screen
                  ),
                );
              },
              child: developer4('assets/fotos/profe.jpg', 'Jhoni Rios',
                  'Director del Proyecto', '', context),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }

  Widget developer2(image, github, BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  image,
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Jhannios Jhovanny ',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Morales',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Diseñador Gráfico',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      launchURL(context, github);
                    },
                    child: const FaIcon(FontAwesomeIcons.github)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget developer1(image, String name, github, BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  image,
                  width: 140,
                  height: 140,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Desarrollador BackEnd/',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'FrontEnd',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      launchURL(context, github);
                    },
                    child: const FaIcon(FontAwesomeIcons.github)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget developer4(image, String name, asd, github, BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  image,
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  asd,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      launchURL(context, github);
                    },
                    child: const FaIcon(FontAwesomeIcons.github)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget developer(image, String name, asd, github, BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Container(
                color: Colors.white,
                child: Image.network(
                  image,
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  asd,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      launchURL(context, github);
                    },
                    child: const FaIcon(FontAwesomeIcons.github)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future launchURL(
    BuildContext context,
    String url,
  ) async {
    // final url ;

    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        // Abrir sin navegador
        // mode: LaunchMode.inAppWebView,

        mode: LaunchMode.externalApplication,
        // webOnlyWindowName: '_self',
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
