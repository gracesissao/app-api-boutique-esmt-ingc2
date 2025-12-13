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
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,

              ),
              child: Text("Menu"),
              ),
          )
,          ListTile(
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
          Divider(color: Theme.of(context).colorScheme.tertiary,thickness: 2),//taille du divider
          ListTile(
            leading: Icon(Icons.countertops),
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text("Compteur"),
            
            onTap: (){
              Navigator.restorablePushNamedAndRemoveUntil(
              context,
            "/page-compteur",
            (predicate) => false,
          );
            } 
            
          ),
          ListTile(
            leading: Icon(Icons.home),
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text("Détails-profils"),
            
            onTap: (){
              Navigator.restorablePushNamedAndRemoveUntil(
              context,
            "/page-accueil",
            (predicate) => false,
          );
            } 
            
          ),
         ListTile(
            leading: Icon(Icons.home),
            tileColor: Theme.of(context).colorScheme.secondary,
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