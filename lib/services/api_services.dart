import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();

  ApiServices._internal(); // Un Constructeur privé

  factory ApiServices() => _singleton; // pour gagner en performance car il seront mis dans la même case mémoire

  Future<dynamic> getData (String url) async {// la fonction async qui retour un résultat est dit qu'elle retourne un future
      try {
        final response = await http.get(Uri.parse(url));
        if (response.statusCode == 200){
            return jsonDecode(response.body); //le json contient une liste de map string dynamique
        }else{
          throw ("Erreur de chargement : code : ${response.statusCode}. Raison : ${response.reasonPhrase}");
        }
      } catch(e, stackTrace){
        print("$e ----- $stackTrace");
      }
  }
}


