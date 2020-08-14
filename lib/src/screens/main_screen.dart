import 'package:flutter/material.dart';

//scoped-model
import 'package:mostafood_app/src/scoped-model/main_model.dart';

// pages
import 'package:mostafood_app/src/pages/accueil_page.dart';
import 'package:mostafood_app/src/pages/parcourir_page.dart';
import 'package:mostafood_app/src/pages/commande_page.dart';
import 'package:mostafood_app/src/pages/profile_page.dart';

// widgets

class MainScreen extends StatefulWidget {
  final MainModel model;

  MainScreen({this.model});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;

  // Pages
  AccueilPage accueilPage;
  ParcourirPage parcourirPage;
  CommandePage commandePage;
  ProfilePage profilePage;

  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    accueilPage = AccueilPage();
    commandePage = CommandePage();
    parcourirPage = ParcourirPage();
    profilePage = ProfilePage();
    pages = [accueilPage, parcourirPage, commandePage, profilePage];

    currentPage = accueilPage;
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            currentTab == 0
                ? "MostaFood"
                : currentTab == 1
                    ? "Tous les produits"
                    : currentTab == 2 ? "Commandes" : "Profil",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none,
                  color: Theme.of(context).primaryColor),
              onPressed: () {},
            ),
            IconButton(
              icon: _buildShoppingCart(),
              onPressed: () {},
            ),
          ],
        ),
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepOrangeAccent,
          currentIndex: currentTab,
          onTap: (index) {
            setState(() {
              currentTab = index;
              currentPage = pages[index];
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Accueil',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                color: Colors.white,
              ),
              title: Text(
                'Parcourir',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              title: Text(
                'Achats',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Profil',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: currentPage,
      ),
    );
  }

  Widget _buildShoppingCart() {
    return Stack(
      children: [
        Icon(
          Icons.shopping_cart,
          color: Theme.of(context).primaryColor,
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: Container(
            height: 13.0,
            width: 13.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                "10",
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
