import 'package:flutter/material.dart';
import 'package:mostafood_app/src/data/food_categorie_data.dart';
import 'package:mostafood_app/src/models/categorie_model.dart';
import 'package:mostafood_app/src/widgets/food_categorie_container.dart';

class FoodCategorie extends StatelessWidget {
  final List<Categorie> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodCategorieContainer(
              categorieNom: _categories[index].categorieNom,
              imageChemin: _categories[index].imageChemin,
            );
          }),
    );
  }
}
