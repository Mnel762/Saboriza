import 'package:flutter/material.dart';
import 'TelaInicialSaboriza.dart';
import 'cadastro_receita_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saboriza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const CadastroReceitaScreen(), // Tela inicial
    );
  }
}
