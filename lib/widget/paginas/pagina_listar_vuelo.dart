import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/vuelo.dart';
import 'package:tarea_flutter_sin_web_service/services/vuelo_service.dart';
import 'package:tarea_flutter_sin_web_service/widget/paginas/pagina_formulario_vuelo.dart';
import 'package:tarea_flutter_sin_web_service/widget/paginas/pagina_listar_pasajero.dart';
import 'package:tarea_flutter_sin_web_service/widget/vuelo/listar_vuelo.dart';

class PaginaListarVuelo extends StatefulWidget {
  const PaginaListarVuelo({super.key});

  @override
  State<PaginaListarVuelo> createState() => _PaginaListarVueloState();
}

class _PaginaListarVueloState extends State<PaginaListarVuelo> {
  @override
  Widget build(BuildContext context) {

    List<Vuelo> vuelos=  VueloService.obtenerVuelos();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Listado de vuelos"),
        leading: const Icon(Icons.menu),
      ),
      body: ListarVuelo(vuelos: vuelos,),
      bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Agregar Vuelo"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Listar Pasajos"),
            
          ],
        onTap: (int boton) {
          if(boton==0){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaginaFormularioVuelo()),
            ).then((_) => setState(() {}));
          }
          if(boton ==1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaginaListarPasajero()),
            ).then((_) => setState(() {}));

          }
        },
      ),
    );
  }
}