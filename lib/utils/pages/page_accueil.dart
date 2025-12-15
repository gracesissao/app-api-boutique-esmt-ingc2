import 'dart:convert';
import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:app_api_rest_boutique/services/api_services.dart';
import 'package:flutter/material.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  List<Map<String, dynamic>> data = [];

  bool _isloading = false; //création de la variable de type booléen et initialisation à "fa
  @override
  void initState() { // ne s'exécute qu'une seule fois lorsque la page est lancée et on appelle l'api et on recupère les valeurs dans cette methode
    // TODO: implement initState
    super.initState();
    
    ApiServices apiServices = ApiServices(); //il n'y aura qu'une instance à cause de single qu'on a déclarée
    _isloading = true;
    //final result = await apiServices.getData("https://jsonholder.typicode.com/users");
         apiServices.getData("https://jsonplaceholder.typicode.com/users").then((
          result,
          ){
        print(jsonEncode(result));
        setState(() {
          _isloading = false; //chargement terminé on le remet à false
          data = List<Map<String, dynamic>>.from(result);
        });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page d'accueil"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),

          // child: condition ? (valeur si vrai) : (valeur si faux) : ((si données non vide) ? (affivhage) : (affichage texte aucune données)),//définir une condition ternaire,
                     child: _isloading 
                        ? CircularProgressIndicator() :
                      ((data.length > 0) ?  
                      ListView.separated ( 
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: 
                            NetworkImage("https://i.pravatar.cc/150?img=${data[index]["id"]}"),
                            radius: 60,
                          ),
                          title: Text(data[index]["name"].toString()),
                          subtitle: Text(data[index]["email"].toString()),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 4,
                        );
                      },
                      itemCount: data.length,
                     ): (Text("Liste vide !!", style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,)
                     )
                     )
                     )
                     //définir une condition ternaire,
                     )

        )
      );
  }
}