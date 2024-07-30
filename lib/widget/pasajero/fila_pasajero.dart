import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/pasajero.dart';


class FilaPasajero extends StatefulWidget {

  final Pasajero pasajero;

  const FilaPasajero({super.key, required this.pasajero});

  @override
  State<FilaPasajero> createState() => _FilaPasajeroState();
}

class _FilaPasajeroState extends State<FilaPasajero> {
  @override
  Widget build(BuildContext context) {
     return Card(
      child: Column(
        children: [
          InkWell(
            child: ListTile(
              title: Text("${widget.pasajero.idPasajero} ${widget.pasajero.nombre}",textAlign: TextAlign.center,),
              subtitle: Text(widget.pasajero.apellido,textAlign: TextAlign.center),
              leading:  const Icon( Icons.access_alarms_sharp),
              trailing: const Icon( Icons.access_alarms_sharp),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PaginaFormularioLibroEditar(widget.libro)),
              // ).then((_) => setState(() {}));
            },
          ),

        ],
      ),
    );
  }
}