import 'package:flutter/material.dart';

class CadastroReceitaScreen extends StatefulWidget {
  const CadastroReceitaScreen({super.key});

  @override
  State<CadastroReceitaScreen> createState() => _CadastroReceitaScreenState();
}

class _CadastroReceitaScreenState extends State<CadastroReceitaScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50], // 🔧 Cor de fundo da tela
      appBar: AppBar(
        title: const Text('Cadastrar Receita'),
        backgroundColor: Colors.deepOrange, // 🔧 Cor da AppBar
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9, // 🔧 Responsivo
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white, // 🔧 Cor da caixa
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Nova Receita',
                    style: TextStyle(
                      fontSize: 24, // 🔧 Tamanho do título
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _nomeController,
                    decoration: const InputDecoration(
                      labelText: 'Nome da Receita',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Preencha o nome da receita' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _descricaoController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Descrição',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Preencha a descrição' : null,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange, // 🔧 Cor do botão
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Ação futura
                      }
                    },
                    child: const Text(
                      'Enviar Receita',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
