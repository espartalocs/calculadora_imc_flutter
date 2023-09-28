import 'package:calculadora/src/localwidget/custom_textformfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Bem Vindo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text('Alterar nome'),
              ),
              onTap: () {
                print('teste');
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text('Histórico'),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Informe seu peso e sua altura',
              style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 400,
            child: CustomTextField(
              controller: controller,
              label: 'Peso',
            ),
          ),
          SizedBox(
            width: 400,
            child: CustomTextField(
              controller: controller,
              label: 'Altura',
            ),
          ),
          SizedBox(width: 400, height: 50, child: ElevatedButton(onPressed: () {}, child: const Text('Calcular')))
        ]),
      ),
    );
  }
}
