import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageCompteur extends StatefulWidget {
  const PageCompteur({super.key});

  @override
  State<PageCompteur> createState() => _PageCompteurState();
}
 //un statefull widget rappelle la méthode build (il fait la gestion d'état interne de la page)
//le statefull widget comporte une classe principale et une classe d'état
//page principale : page compteur
//à partir de pageCompteur c'est la page d'état de la page principale
class _PageCompteurState extends State<PageCompteur> {
   int _compteur = 0; // est maintenant dans la classe d'état
  @override
  Widget build(BuildContext context) {
    print("Construction de la page compteur");
   
   
    return Scaffold( // on peut remplacer scaffold par safearea pour éviter de cacher les icones qui sont en haut de la page 
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page Compteur"),
      ),
      body: Center(
      
        child: SafeArea(child: Container(
          
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,// pour récupérer la taille de l'écran (largeur)
          //pour ajouter une décoration
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 3,
            
            ),
            // borderRadius: BorderRadius.circular(10),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Valeur : ",
              style: Theme.of(context).textTheme.titleLarge,
              ),
              Text("$_compteur",
              style: Theme.of(context).textTheme.titleMedium,),
              Text("Cliquer sur le bouton en bas pour incrémenter",
              style: Theme.of(context).textTheme.bodySmall),
              
            ],
          ),
        ),
        )
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // print("Vous avez cliquez sur le bouton");
          setState(() { // pour dire à la méthode build de se reconstruire, de se redessiner la page 
            _compteur ++;
          });
           print("La valeur du compteur est : $_compteur");
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}