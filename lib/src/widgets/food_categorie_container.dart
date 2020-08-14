import 'package:flutter/material.dart';

class FoodCategorieContainer extends StatelessWidget {
  final String imageChemin;
  final String categorieNom;

  const FoodCategorieContainer({this.imageChemin, this.categorieNom});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 75.0,
      margin: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            child: Image(
              image: AssetImage(imageChemin),
              width: 100.0,
              height: 66.0,
              fit: BoxFit.cover,
            ),
          ),
          Text('$categorieNom'),
        ],
      ),
    );
  }
}
