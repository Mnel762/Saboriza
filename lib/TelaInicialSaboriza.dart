import 'package:flutter/material.dart';

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
      home: const TelaInicialSaboriza(), // Tela inicial
    );
  }
}

class TelaInicialSaboriza extends StatefulWidget {
  const TelaInicialSaboriza({super.key});

  @override
  State<TelaInicialSaboriza> createState() => _TelaInicialSaborizaState();
}

class _TelaInicialSaborizaState extends State<TelaInicialSaboriza> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🍽️ Imagem de fundo
          Positioned.fill(
            child: Image.network(
              'https://i0.wp.com/moonbh.com.br/wp-content/uploads/2022/04/boulevard-shopping-festival-4990.jpg?fit=1572%2C1104&ssl=1',
              fit: BoxFit.cover,
            ),
          ),

          // 🔐 Caixa de login centralizada
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85, // 🔧 Responsivo
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.orange[100]?.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Saboriza',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'Preencha o e-mail' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _senhaController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'Preencha a senha' : null,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 48,
                          vertical: 16,
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Ação futura
                        }
                      },
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Não tem uma conta?',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // Navegação futura
                      },
                      child: const Text('Cadastrar'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
