import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/vuelo.dart';

class FilaVuelo extends StatefulWidget {

  final Vuelo vuelo;

  const FilaVuelo({super.key, required this.vuelo});

  @override
  State<FilaVuelo> createState() => _FilaVueloState();
}

class _FilaVueloState extends State<FilaVuelo> {
  @override
  Widget build(BuildContext context) {
     return Card(
      child: Column(
        children: [
          InkWell(
            child: ListTile(
              title: Text("${widget.vuelo.idVuelo} ${widget.vuelo.nombreAvion}",textAlign: TextAlign.center,),
              subtitle: Text(widget.vuelo.nombreAerolinea,textAlign: TextAlign.center),
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