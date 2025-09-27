import 'package:flutter/material.dart';
import 'widgets/custom_header.dart';
import 'widgets/hero_section2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChocoArte',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Poppins', // Fonte padrão
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'DancingScript', fontSize: 48, fontWeight: FontWeight.bold), // Para o slogan
          displayMedium: TextStyle(fontFamily: 'DancingScript', fontSize: 36, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
        ),
      ),
      home: const ChocoArteHomePage(),
    );
  }
}

class ChocoArteHomePage extends StatelessWidget {
  const ChocoArteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView( // Para permitir rolagem se o conteúdo for maior que a tela
        child: Column(
          children: [
            CustomHeader(),
            HeroSection(),
            // Futuras seções como "Produtos em Destaque" viriam aqui
          ],
        ),
      ),
    );
  }
}