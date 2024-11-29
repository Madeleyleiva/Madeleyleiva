import 'dart:io';

// Función para obtener el puntaje por puntualidad
int obtenerPuntajePuntualidad(int minutosTardanza) {
  List<int> puntajes = [10, 8, 6, 4, 0]; // Puntajes para cada rango de minutos
  if (minutosTardanza == 0) {
    return puntajes[0]; // 0 minutos de tardanza
  } else if (minutosTardanza >= 1 && minutosTardanza <= 2) {
    return puntajes[1]; // 1 a 2 minutos
  } else if (minutosTardanza >= 3 && minutosTardanza <= 5) {
    return puntajes[2]; // 3 a 5 minutos
  } else if (minutosTardanza >= 6 && minutosTardanza <= 9) {
    return puntajes[3]; // 6 a 9 minutos
  } else {
    return puntajes[4]; // Más de 9 minutos
  }
}

// Función para obtener el puntaje por rendimiento
int obtenerPuntajeRendimiento(int observaciones) {
  List<int> puntajes = [10, 8, 5, 1, 0]; // Puntajes para cada cantidad de observaciones
  if (observaciones == 0) {
    return puntajes[0]; // 0 observaciones
  } else if (observaciones == 1) {
    return puntajes[1]; // 1 observación
  } else if (observaciones == 2) {
    return puntajes[2]; // 2 observaciones
  } else if (observaciones == 3) {
    return puntajes[3]; // 3 observaciones
  } else {
    return puntajes[4]; // Más de 3 observaciones
  }
}

// Función para calcular la bonificación
double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) {
    return puntajeTotal * 2.5;
  } else if (puntajeTotal >= 11 && puntajeTotal <= 13) {
    return puntajeTotal * 5.0;
  } else if (puntajeTotal >= 14 && puntajeTotal <= 16) {
    return puntajeTotal * 7.5;
  } else if (puntajeTotal >= 17 && puntajeTotal <= 19) {
    return puntajeTotal * 10.0;
  } else {
    return puntajeTotal * 12.5;
  }
}

void main() {
  // Entrada de datos
  stdout.write('Ingrese los minutos de tardanza: ');
  int minutosTardanza = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el número de observaciones: ');
  int observaciones = int.parse(stdin.readLineSync()!);

  // Calcular puntajes
  int puntajePuntualidad = obtenerPuntajePuntualidad(minutosTardanza);
  int puntajeRendimiento = obtenerPuntajeRendimiento(observaciones);

  // Calcular puntaje total
  int puntajeTotal = puntajePuntualidad + puntajeRendimiento;

  // Calcular bonificación
  double bonificacion = calcularBonificacion(puntajeTotal);

  // Mostrar resultados
  print('Puntaje por puntualidad: $puntajePuntualidad');
  print('Puntaje por rendimiento: $puntajeRendimiento');
  print('Puntaje total: $puntajeTotal');
  print('Bonificación anual: S/. ${bonificacion.toStringAsFixed(2)}');
}
