import 'package:flutter/material.dart';

abstract class ThemePerso {
  static final modeClair = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      primary: Colors.pink,
      secondary: Colors.pinkAccent,
      tertiary: Colors.amber,
      error: Colors.red,
      ),
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ), //titre utilisé dans le corps d'une page
       titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,

        ),
        headlineSmall: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold, // .bold pour mettre le texte en gras pour que ce soit plus important on peut mettre fontweigh 900

        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal,

        ),
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,

              )
        )

  );
  static final modeSombre = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
      primary: Colors.pink,
      secondary: Colors.pinkAccent,
      tertiary: Colors.amber,
      error: Colors.red,
      ),
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,

        ), //titre utilisé dans le corps d'une page
       titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal,

        ),
        headlineSmall: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,

        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.normal, // .bold pour mettre le texte en gras pour que ce soit plus important on peut mettre fontweigh 900

        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal,

        ),
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,

              )
        )

  );

}