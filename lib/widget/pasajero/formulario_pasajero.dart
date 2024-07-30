import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/pasajero.dart';
import 'package:tarea_flutter_sin_web_service/services/pasajero_service.dart';


class FormularioPasajero extends StatefulWidget {
  final Pasajero pasajero;
  const FormularioPasajero({super.key, required this.pasajero});

  @override
  State<FormularioPasajero> createState() => _FormularioPasajeroState();
}

class _FormularioPasajeroState extends State<FormularioPasajero> {

  final ctlid = TextEditingController();
  final ctlNombre = TextEditingController();
  final ctlApellido = TextEditingController();
  

  void clickBoton() {
    PasajeroService.agregarPasajero(widget.pasajero);
    Navigator.pop(
      context,
    ); // vuelvo atras.
  }

  @override
  void initState() {
    super.initState();

    ctlid.text         = widget.pasajero.idPasajero.toString();
    ctlNombre.text     = widget.pasajero.nombre;
    ctlApellido.text   = widget.pasajero.apellido;
    

    ctlid.addListener(() {
      setState(() {
        widget.pasajero.idPasajero = int.parse(ctlid.text);
      });
    });
    ctlNombre.addListener(() {
      setState(() {
        widget.pasajero.nombre=ctlNombre.text;
      });
    });
    ctlApellido.addListener(() {
      setState(() {
        widget.pasajero.apellido=ctlApellido.text;
      });
    });
    
  }

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        const Text("ID:"),
        TextField(controller: ctlid),
        const Text("Nombre:"),
        TextField(controller: ctlNombre),
        const Text("Apellido:"),
        TextField(controller: ctlApellido),
        

        ElevatedButton(onPressed: clickBoton, child: const Text("ok"))
      ],
    );
  }
}