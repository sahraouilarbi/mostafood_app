import 'package:flutter/material.dart';

class FoodCardNearby extends StatelessWidget {
  final String categorieNom;
  final String imageChemin;
  final String prix;
  final String pizzeria;

  const FoodCardNearby({
    this.categorieNom,
    this.imageChemin,
    this.prix,
    this.pizzeria
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      color: Color(0xFFF8F6F6F6),
      child: Card(
        color: Colors.white,
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                child: Image(
                  image: AssetImage(imageChemin),
                  height: 100.0,
                  width: 220.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                pizzeria,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                categorieNom,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                prix,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
