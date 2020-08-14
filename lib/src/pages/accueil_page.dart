import 'package:flutter/material.dart';
import 'package:mostafood_app/src/models/food_model.dart';
import 'package:mostafood_app/src/scoped-model/main_model.dart';
import 'package:mostafood_app/src/widgets/food_card_nearby.dart';

//Widget
import 'package:mostafood_app/src/widgets/food_categorie.dart';
import 'package:mostafood_app/src/widgets/food_card_populaire.dart';
import 'package:mostafood_app/src/widgets/recherche_box.dart';
import 'package:scoped_model/scoped_model.dart';

class AccueilPage extends StatefulWidget {
  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F6F6F6),
        body: ListView(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            RechercheField(),
            SizedBox(
              height: 20.0,
            ),
            FoodCategorie(),
            Divider(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Populaires',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Voir Tout pressed');
                  },
                  child: Text(
                    'Voir Tout',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                FoodCardPopulaire(
                  imageChemin: 'images/pizza.jpg',
                  categorieNom: 'Marguerite',
                  prix: '250,00DA',
                  pizzeria: 'Le Select',
                ),
//                FoodCard(
//                  imageChemin: 'images/burger.jpg',
//                  categorieNom: 'Hamburger',
//                  prix: '150,00DA',
//                  pizzeria: 'QuickBurger',
//                ),
              ],
            ),
            Divider(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Près de chez vous',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Voir Tout pressed');
                  },
                  child: Text(
                    'Voir Tout',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            FoodCardNearby(
              imageChemin: 'images/burger.jpg',
              categorieNom: 'Hamburger',
              prix: '150,00DA',
              pizzeria: 'QuickBurger',
            ),
            ScopedModelDescendant<MainModel>(
                builder: (BuildContext context, Widget child, MainModel model) {
              return Column(
                children: [
                  // model.foods.map(_buildFoodItems).toList(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return GestureDetector(
      onTap: () {},
//      child: Container(
//        margin: EdgeInsets.only(bottom: 20.0),
////        child: Populaires(
////          id: food.id,
////          nom: food.nom,
////          imagePath: "",
////          categorie: food.categorie,
////          prix: food.prix,
////          ratings: food.ratings,
////        ),
//      ),
    );
  }
}
