import 'package:flutter/material.dart';

// 1- La key(Palabra clave ) es un tipo de dato string
// 2- La data que retorna en un iconData
final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.blue,
  );
}
