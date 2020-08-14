import 'package:flutter/material.dart';

class RechercheField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20.0,
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 14),
            suffixIcon: Icon(Icons.search, color: Colors.black),
            border: InputBorder.none,
            hintText: "Rechercher ..."),
      ),
    );
  }
}
