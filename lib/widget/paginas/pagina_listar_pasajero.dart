import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/pasajero.dart';
import 'package:tarea_flutter_sin_web_service/services/pasajero_service.dart';
import 'package:tarea_flutter_sin_web_service/widget/paginas/pagina_formulario_pasajero.dart';
import 'package:tarea_flutter_sin_web_service/widget/paginas/pagina_listar_vuelo.dart';
import 'package:tarea_flutter_sin_web_service/widget/pasajero/listar_pasajero.dart';


class PaginaListarPasajero extends StatefulWidget {
  const PaginaListarPasajero({super.key});

  @override
  State<PaginaListarPasajero> createState() => _PaginaListarPasajeroState();
}

class _PaginaListarPasajeroState extends State<PaginaListarPasajero> {
  @override
  Widget build(BuildContext context) {

    List<Pasajero> pasajeros=  PasajeroService.obtenerPasajeros();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Listado de Pasajeros"),
        leading: const Icon(Icons.menu),
      ),
      body: ListarPasajero(pasajeros: pasajeros,),
      bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Agregar Pasajero"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Listar Vuelos"),
            
          ],
        onTap: (int boton) {
          if(boton==0){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaginaFormularioPasajero()),
            ).then((_) => setState(() {}));
          }
          if(boton ==1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaginaListarVuelo()),
            ).then((_) => setState(() {}));

          }
        },
      ),
    );
  }
}