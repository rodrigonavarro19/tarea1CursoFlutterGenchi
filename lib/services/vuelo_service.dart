import 'package:tarea_flutter_sin_web_service/models/vuelo.dart';

class VueloService{

  static List<Vuelo> vuelos=[
    Vuelo(idVuelo: 3, nombreAvion: "avion1", nombreAerolinea: 'aerolinea1', modeloAvion: 'modeloAvion1'),
    Vuelo(idVuelo: 2, nombreAvion: "avion2", nombreAerolinea: 'aerolinea2', modeloAvion: 'modeloAvion2'),
    Vuelo(idVuelo: 3, nombreAvion: "avion3", nombreAerolinea: 'aerolinea3', modeloAvion: 'modeloAvion3'),
  ];
  
  static void agregarVuelo(Vuelo vuelo) {
    vuelos.add(vuelo);
  }
  
  static Vuelo obtenerVuelo(int idVuelo) {
    return vuelos[idVuelo];
  }
  
  static void modificarVuelo(Vuelo vuelo) {
    //todo:
  }
  
  static void eliminarVuelo(int idVuelo) {
    //todos:
  }
  
  static List<Vuelo> obtenerVuelos() {
    return vuelos;
  }



  
}