import 'package:flutter/material.dart';
import 'package:peliculas/src/paginas/paginainicial.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // oculta banner Debug del emulador Móvil
      title: 'Películas',
      initialRoute: '/',
      routes: {
        '/':(BuildContext context)=>PaginaPrincipal(),
      },
    );
  }
}