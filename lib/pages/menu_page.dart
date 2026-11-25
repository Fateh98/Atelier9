import 'package:flutter/material.dart';

import 'accueil_page.dart';
import 'ajout_article_page.dart';
import 'liste_articles_page.dart';
import 'infos_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int indexPage = 0;

  final List<Widget> pages = const [
    AccueilPage(),
    AjoutArticlePage(),
    ListeArticlePage(),
    InfosPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexPage],
      bottomNavigationBar: NavigationBar(
        selectedIndex: indexPage,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (int index) {
          setState(() {
            indexPage = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'Ajouter',
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
          NavigationDestination(
            icon: Icon(Icons.info),
            label: 'Infos',
          ),
        ],
      ),
    );
  }
}