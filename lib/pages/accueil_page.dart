import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    const indigo = Color(0xFF312E81);
    const violet = Color(0xFF6D28D9);
    const menthe = Color(0xFF99F6E4);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: indigo,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFEDE9FE),
              Color(0xFFDBEAFE),
              Color(0xFFCCFBF1),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 8,
                shadowColor: const Color(0x55312E81),
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 36,
                      ),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [indigo, violet],
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: menthe,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Icon(
                              Icons.layers_rounded,
                              size: 48,
                              color: indigo,
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            'Gestion des articles',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Bienvenue dans votre application !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFEDE9FE),
                              fontSize: 16,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFFFE4C7),
                            foregroundColor: Color(0xFF92400E),
                            child: Text(
                              'MMC',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Auteur',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF475569),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Maouchi Mohamed Chafik',
                                  style: TextStyle(
                                    color: indigo,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}