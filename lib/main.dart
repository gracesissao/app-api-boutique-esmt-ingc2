import 'package:app_api_rest_boutique/utils/app_constants.dart';
import 'package:app_api_rest_boutique/utils/pages/page_accueil.dart';
import 'package:app_api_rest_boutique/utils/pages/page_compteur.dart';
import 'package:app_api_rest_boutique/utils/routeur.dart';
import 'package:flutter/material.dart';

import 'utils/theme_perso.dart';



void main (){
  runApp(MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) { // La méthode build permet de construire l'interface
    return MaterialApp(
      title: AppConstants.nomDeApplication,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
        theme: ThemePerso.modeClair, //L'attribut theme est utilisé por le mode clair
        darkTheme: ThemePerso.modeSombre, //L'attribut "darkTheme" pour mode sombre

        initialRoute: Routeur.routeInitiale, //ici on pouvait appeler explicitement la route "/accueil" mais on a préféré passer par un appel implicite (c'est à dire création de variable)

        

        onUnknownRoute: (settings) => 
        MaterialPageRoute(builder: (context) => const PageAccueil()),
                          routes: Routeur.routes,
    );
   
}
 
}

