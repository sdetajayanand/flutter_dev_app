import 'package:first_project/pages/logOut.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 42, 9, 48));

var kDarkColorScheme = ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: const Color.fromARGB(255, 9, 99, 125));

void main() => runApp(MaterialApp(

  darkTheme: ThemeData.dark().copyWith(
    colorScheme: kDarkColorScheme,
    appBarTheme: AppBarTheme(
      backgroundColor: kDarkColorScheme.onPrimaryContainer,
      foregroundColor: kDarkColorScheme.primaryContainer,
    ),
    cardTheme: const CardTheme().copyWith(
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: kDarkColorScheme.primaryContainer,
      foregroundColor: kDarkColorScheme.onPrimaryContainer,
    )),
    textTheme: GoogleFonts.latoTextTheme(),),


    theme: ThemeData().copyWith(
      colorScheme: kColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: kColorScheme.primaryContainer),
        ),),
    debugShowCheckedModeBanner: false,
    home: const Starter()
  ),
);

