import 'package:flutter/material.dart';
import 'package:meals/screens/categorys_screen.dart';
import 'package:meals/screens/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vamos Cozinhar'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategorysScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
