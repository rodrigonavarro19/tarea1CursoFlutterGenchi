import 'package:tarea_flutter_sin_web_service/models/pasajero.dart';

class PasajeroService {

  static List<Pasajero> pasajeros=[
    Pasajero(idPasajero: 1, nombre: 'nombre1', apellido: 'apellido1'),
    Pasajero(idPasajero: 2, nombre: 'nombre2', apellido: 'apellido2'),
    Pasajero(idPasajero: 3, nombre: 'nombre3', apellido: 'apellido3'),
    Pasajero(idPasajero: 4, nombre: 'nombre4', apellido: 'apellido4'),
  ];
  
  static void agregarPasajero(Pasajero pasajero) {
    pasajeros.add(pasajero);
  }
  
  static Pasajero obtenerPasajero(int idPasajero) {
    return pasajeros[idPasajero];
  }
  
  static void modificarPasajero(Pasajero pasajero) {
    //todo:
  }
  
  static void eliminarPasajero(int idPasajero) {
    //todos:
  }
  
  static List<Pasajero> obtenerPasajeros() {
    return pasajeros;
  }
  
}