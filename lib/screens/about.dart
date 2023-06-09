import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
              about('Visual IA',
                  'IA para el reconocimiento de texto y objetos.', context),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20.0, top: 2, right: 20.0, bottom: 2),
                child: Text(
                  'Es una aplicación desarrollada por estudiantes de 9 semestre de ingeniería informática, en el Instituto Universitario De la Paz-UNIPAZ..',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 20.0, top: 2, right: 20.0, bottom: 20),
                child: Text(
                  'Si notas algún error por favor notificar en el correo: jeferson.rolon@unipaz.edu.co .',
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
                      'Redes Sociales: ',
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
                          'Facebook',
                          'https://www.facebook.com/people/Visual-IA-proyecto-App/100091320604919/',
                          FaIcon(FontAwesomeIcons.facebook),
                          context),
                      redes(
                          'Instagram',
                          'https://www.instagram.com/proyecto_visual_ia/?igshid=ZDdkNTZiNTM%3D',
                          FaIcon(FontAwesomeIcons.instagram),
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
            onLongPress: () {
              Navigator.pushNamed(context, 'easteregg');
            },
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
