import 'package:flutter/material.dart';

class EndDrawerPerso extends StatefulWidget {
  const EndDrawerPerso({super.key});

  @override
  State<EndDrawerPerso> createState() => _EndDrawerPersoState();
}

class _EndDrawerPersoState extends State<EndDrawerPerso> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(

            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration( 
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text("Menu"),
              ),
          ),
          Divider(color: Theme.of(context).colorScheme.primary,thickness: 2),

             ListTile(
            leading: Icon(Icons.home),
            tileColor: Theme.of(context).colorScheme.secondary,

            title: Text("Accueil"),
            
            onTap: (){
              Navigator.restorablePushNamedAndRemoveUntil(
              context,
            "/page-accueil",
            (predicate) => false,
          );
            } 
            
          ),

          Divider(color: Theme.of(context).colorScheme.primary,thickness: 2),// thickness c'est pour gérer la taille du divider
          ListTile(
            leading: Icon(Icons.countertops),
            tileColor: Theme.of(context).colorScheme.primary,
            title: Text("Compteur"),
            
            onTap: (){
              Navigator.restorablePushNamedAndRemoveUntil(
              context,
            "/page-compteur",
            (predicate) => false,
          );
            } 
            
          ),

          Divider(color: Theme.of(context).colorScheme.primary,thickness: 2),

          ListTile(
            leading: Icon(Icons.home),
            tileColor: Theme.of(context).colorScheme.tertiary,
            title: Text("Détails-profils"),
            
            onTap: (){
              Navigator.restorablePushNamedAndRemoveUntil(
              context,
            "/page-accueil",
            (predicate) => false,
          );
            } 
            
          ),

          Divider(color: Theme.of(context).colorScheme.primary,thickness: 2),

         ListTile(
            leading: Icon(Icons.home),
            tileColor: Theme.of(context).colorScheme.primary,
            title: Text("Bienvenue"),
            
            onTap: (){
              Navigator.restorablePushNamedAndRemoveUntil(
              context,
            "/page-bienvenue",
            (predicate) => false,
          );
            } 
            
          ),
        ],
      ),
    );
  }
}