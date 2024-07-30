import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/vuelo.dart';
import 'package:tarea_flutter_sin_web_service/widget/paginas/pagina_listar_vuelo.dart';
import 'package:tarea_flutter_sin_web_service/widget/vuelo/formulario_vuelo.dart';

class PaginaFormularioVuelo extends StatefulWidget {
  const PaginaFormularioVuelo({super.key});

  @override
  State<PaginaFormularioVuelo> createState() => _PaginaFormularioVueloState();
}

class _PaginaFormularioVueloState extends State<PaginaFormularioVuelo> {
  @override
  Widget build(BuildContext context) {
   var vuelo = Vuelo(idVuelo: 0 , modeloAvion: '', nombreAerolinea: '', nombreAvion: '');
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Formulario de Agregar Vuelo"),
        leading: const Icon(Icons.menu),
      ),
      body: FormularioVuelo(vuelo: vuelo,),
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Listar Vuelos"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Listar Pasajeros"),
        ],
        onTap: (int boton) {
          if(boton==0){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaginaListarVuelo()),
            );

          }
          if(boton==1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaginaListarVuelo()),
            );

          }
        },
      ),
    );
  }
}