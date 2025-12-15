import 'package:app_api_rest_boutique/utils/pages/page_accueil.dart';
import 'package:app_api_rest_boutique/utils/pages/page_compteur.dart';
import 'package:flutter/widgets.dart';

abstract class Routeur {
  static const String routeInitiale = '/page-compteur'; // tiret de six sur le nom des routes sans problèmes
  static final Map<String, WidgetBuilder> routes = {
    "/page-compteur": (context) => PageCompteur(),
    "/page-accueil": (context) => PageAccueil(),
  };

}

