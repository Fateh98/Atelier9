import 'package:flutter/material.dart';

class InfosPage extends StatelessWidget {
  const InfosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infos'),
      ),
      body: const Center(
        child: Text('Application de gestion des articles'),
      ),
    );
  }
}