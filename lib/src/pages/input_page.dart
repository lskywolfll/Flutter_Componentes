import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        children: <Widget>[
          _crearInput(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autocorrect: true,
      autofocus: true,
      cursorColor: Colors.pink,
      maxLength: 13,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
    );
  }
}
