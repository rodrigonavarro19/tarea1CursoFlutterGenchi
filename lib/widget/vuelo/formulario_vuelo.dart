import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/vuelo.dart';
import 'package:tarea_flutter_sin_web_service/services/vuelo_service.dart';

class FormularioVuelo extends StatefulWidget {
  final Vuelo vuelo;
  const FormularioVuelo({super.key, required this.vuelo});

  @override
  State<FormularioVuelo> createState() => _FormularioVueloState();
}

class _FormularioVueloState extends State<FormularioVuelo> {

  final ctlid = TextEditingController();
  final ctlNombreAvion = TextEditingController();
  final ctlNombreAerolinea = TextEditingController();
  final ctlModeloAvion = TextEditingController();

  void clickBoton() {
    VueloService.agregarVuelo(widget.vuelo);
    Navigator.pop(
      context,
    ); // vuelvo atras.
  }

  @override
  void initState() {
    super.initState();

    ctlid.text              = widget.vuelo.idVuelo.toString();
    ctlNombreAvion.text     = widget.vuelo.nombreAvion;
    ctlNombreAerolinea.text = widget.vuelo.nombreAerolinea;
    ctlModeloAvion.text     = widget.vuelo.modeloAvion;

    ctlid.addListener(() {
      setState(() {
        widget.vuelo.idVuelo = int.parse(ctlid.text);
      });
    });
    ctlNombreAvion.addListener(() {
      setState(() {
        widget.vuelo.nombreAvion=ctlNombreAvion.text;
      });
    });
    ctlNombreAerolinea.addListener(() {
      setState(() {
        widget.vuelo.nombreAerolinea=ctlNombreAerolinea.text;
      });
    });
    ctlModeloAvion.addListener(() {
      setState(() {
        widget.vuelo.modeloAvion= ctlModeloAvion.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        const Text("ID:"),
        TextField(controller: ctlid),
        const Text("Nombre Avion:"),
        TextField(controller: ctlNombreAvion),
        const Text("Nombre AeroLinea:"),
        TextField(controller: ctlNombreAerolinea),
        const Text("Nombre Avion:"),
        TextField(controller: ctlModeloAvion),
        // Text("id: ${widget.libro.idLibro} libro: ${widget.libro.titulo} autor: ${widget.libro.autor} precio: ${widget.libro.precio}"),

        ElevatedButton(onPressed: clickBoton, child: const Text("ok"))
      ],
    );
  }
}