import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/pasajero.dart';
import 'package:tarea_flutter_sin_web_service/widget/pasajero/fila_pasajero.dart';

class ListarPasajero extends StatefulWidget {

  final List<Pasajero> pasajeros;
  const ListarPasajero({super.key, required this.pasajeros});

  @override
  State<ListarPasajero> createState() => _ListarPasajeroState();
}

class _ListarPasajeroState extends State<ListarPasajero> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
        itemBuilder:(BuildContext build,int fila) {
          return FilaPasajero(pasajero: widget.pasajeros[fila]);
        },
      itemCount: widget.pasajeros.length,
    );
  }
}