import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0), // 🔧 Espaçamento externo da tela
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Saboriza',
                style: TextStyle(
                  fontSize: 32, // 🔧 Tamanho do título
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 32), // 🔧 Espaço entre título e caixa
              Container(
                padding: const EdgeInsets.all(24), // 🔧 Espaço interno da caixa
                decoration: BoxDecoration(
                  color: Colors.orange[100], // 🔧 Cor da caixa
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300, // 🔧 Largura do campo de e-mail
                        child: TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) =>
                              value!.isEmpty ? 'Preencha o e-mail' : null,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 300, // 🔧 Largura do campo de senha
                        child: TextFormField(
                          controller: _senhaController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) =>
                              value!.isEmpty ? 'Preencha a senha' : null,
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 200, // 🔧 Largura do botão
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16, // 🔧 Altura do botão
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Ação futura
                            }
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(fontSize: 18), // 🔧 Tamanho do texto do botão
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
