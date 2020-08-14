import 'package:flutter/material.dart';
import 'package:mostafood_app/src/pages/accueil_page.dart';
import 'package:mostafood_app/src/pages/se_connecter_page.dart';
import 'package:mostafood_app/src/scoped-model/main_model.dart';
import 'package:mostafood_app/src/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class MostaFoodApp extends StatelessWidget {
  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
        model: mainModel,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "MostaFood Livraison à domicile",
          theme: ThemeData(
            primaryColor: Colors.blueAccent,
            fontFamily: 'Poppins',
          ),
          routes: {
            // "/": (BuildContext context) => AccueilPage(),
            "/": (BuildContext context) => MainScreen(
                  model: mainModel,
                )
          },
        ));
  }
}
