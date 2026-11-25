import 'package:flutter/material.dart';

class AjoutArticlePage extends StatefulWidget {
  const AjoutArticlePage({super.key});

  @override
  State<AjoutArticlePage> createState() => _AjoutArticlePageState();
}

class _AjoutArticlePageState extends State<AjoutArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un article'),
      ),
      body: const Center(
        child: Text('Page Liste des articles !'),
      ),
    );
  }
}