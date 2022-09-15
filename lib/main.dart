import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/tile_masters_details.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'models/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Projects(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Danmore Mutumbami',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.syneTextTheme(Theme.of(context).textTheme).copyWith(
            headline6: const TextStyle(
              fontSize: 22,
            ),
            bodyText1: const TextStyle(
              fontSize: 15,
              height: 1.5,
            ),
          ),
        ),
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => const HomeScreen()),
          GetPage(name: TileMastersDetails.routeName, page: () => const TileMastersDetails())
        ],
      ),
    );
  }
}


