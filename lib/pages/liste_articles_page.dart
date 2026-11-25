import 'package:flutter/material.dart';

class ListeArticlePage extends StatefulWidget {
  const ListeArticlePage({super.key});

  @override
  State<ListeArticlePage> createState() => _ListeArticlePageState();
}

class _ListeArticlePageState extends State<ListeArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des articles'),
      ),
      body: const Center(
        child: Text('Page Liste des articles !'),
      ),
    );
  }
}