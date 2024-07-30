import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/vuelo.dart';
import 'package:tarea_flutter_sin_web_service/widget/vuelo/fila_vuelo.dart';

class ListarVuelo extends StatefulWidget {

  final List<Vuelo> vuelos;
  const ListarVuelo({super.key, required this.vuelos});

  @override
  State<ListarVuelo> createState() => _ListarVueloState();
}

class _ListarVueloState extends State<ListarVuelo> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
        itemBuilder:(BuildContext build,int fila) {
          return FilaVuelo(vuelo: widget.vuelos[fila]);
        },
      itemCount: widget.vuelos.length,
    );
  }
}