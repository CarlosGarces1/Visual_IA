import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Easteregg extends StatelessWidget {
  const Easteregg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              about('Felicidades',
                  'Econtraste un easterEgg', context),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20.0, top: 2, right: 20.0, bottom: 2),
                child: Text(
                  'A continuación podras encontrar todo sobre el aplicativo: ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Cosas Extras:      ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      redes(
                          'Github',
                          'https://github.com/CarlosGarces1/Visual_IA',
                          FaIcon(FontAwesomeIcons.github),
                          context),
                      redes(
                          'Drive',
                          'https://drive.google.com/drive/folders/1-1NKwuTASvxJy0Tuj2I_F-USH4m1Y8fz?usp=share_link',
                          FaIcon(FontAwesomeIcons.hardDrive),
                          context),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget redes(texto, link, FaIcon logo, BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Column(
              children: [
                Text(
                  texto,
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
                      launchURL(context, link);
                    },
                    child: logo),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget about(String name, asd, BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          GestureDetector(
            onLongPress: () {},
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Container(
                height: media.height * 0.2,
                width: media.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 20, 20, 20),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/fotos/banner.png',
                    height: 600,
                    width: 999,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    asd,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
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
