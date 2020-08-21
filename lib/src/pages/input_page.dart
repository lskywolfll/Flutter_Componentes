import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = ' ';
  String _email = ' ';
  String _password = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearPassword() {
    return TextField(
      autocorrect: true,
      // autofocus: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          helperText: 'Contraseña',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
      cursorColor: Colors.pink,
      textCapitalization: TextCapitalization.sentences,
      obscureText: true,
    );
  }

  Widget _crearInput() {
    return TextField(
      autocorrect: true,
      // autofocus: true,
      decoration: InputDecoration(
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
      cursorColor: Colors.pink,
      maxLength: 13,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.name,
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      autocorrect: true,
      // autofocus: true,
      decoration: InputDecoration(
          hintText: 'Email',
          labelText: 'Email',
          helperText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
      cursorColor: Colors.pink,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
