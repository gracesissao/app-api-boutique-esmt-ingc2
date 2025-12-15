import 'dart:convert';

import 'package:http/http.dart' as http; //importation du package pour gérer les liens des sites http 

class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();

  ApiServices._internal(); // Un Constructeur privé

  factory ApiServices() => _singleton; // pour gagner en performance car il seront mis dans la même case mémoire

  Future<dynamic> getData (String url) async {// la fonction async qui retourne un résultat et ce résultat est appelé un "future"
      try {
        final response = await http.get(Uri.parse(url));
        if (response.statusCode == 200){
            return jsonDecode(response.body); //le json contient une liste de map string dynamique (utilisateurs)
        }else{
          throw ("Erreur de chargement : code : ${response.statusCode}. Raison : ${response.reasonPhrase}");
        }
      } catch(e, stackTrace){
        print("$e ----- $stackTrace"); //le stackTrace sert à mettre les détails de l'erreur
      }
  }
}


