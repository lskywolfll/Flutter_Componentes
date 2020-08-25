import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    // Renderizar elementos cuantos sean necesarios por eso se utiliza el builder
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (context, index) {
        final imagen = _listaNumeros[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300?random=$imagen'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}
