import 'package:flutter/material.dart';
import 'package:tarea_flutter_sin_web_service/models/pasajero.dart';
import 'package:tarea_flutter_sin_web_service/widget/paginas/pagina_listar_vuelo.dart';
import 'package:tarea_flutter_sin_web_service/widget/pasajero/formulario_pasajero.dart';


class PaginaFormularioPasajero extends StatefulWidget {
  const PaginaFormularioPasajero({super.key});

  @override
  State<PaginaFormularioPasajero> createState() => _PaginaFormularioPasajeroState();
}

class _PaginaFormularioPasajeroState extends State<PaginaFormularioPasajero> {
  @override
  Widget build(BuildContext context) {
   var pasajero = Pasajero(idPasajero: 0 , nombre: '', apellido: '',);
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Formulario de Agregar Vuelo"),
        leading: const Icon(Icons.menu),
      ),
      body: FormularioPasajero(pasajero: pasajero,),
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