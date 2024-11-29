import 'dart:io';

// Función para obtener la pensión de acuerdo a la categoría
double obtenerPension(String categoria) {
  List<double> pensiones = [550.0, 500.0, 460.0, 400.0];
  Map<String, int> categorias = {
    'A': 0,
    'B': 1,
    'C': 2,
    'D': 3
  };
  
  return pensiones[categorias[categoria] ?? 0];
}

// Función para obtener el porcentaje de descuento basado en el promedio
double obtenerDescuento(double promedio) {
  if (promedio >= 0 && promedio <= 13.99) {
    return 0.0;
  } else if (promedio >= 14.00 && promedio <= 15.99) {
    return 10.0;
  } else if (promedio >= 16.00 && promedio <= 17.99) {
    return 12.0;
  } else if (promedio >= 18.00 && promedio <= 20.00) {
    return 15.0;
  } else {
    return 0.0;
  }
}

void main() {
  // Entrada de datos
  stdout.write('Ingrese la categoría del estudiante (A, B, C, D): ');
  String categoria = stdin.readLineSync()!;

  stdout.write('Ingrese el promedio ponderado del ciclo anterior: ');
  double promedio = double.parse(stdin.readLineSync()!);

  // Obtener la pensión correspondiente a la categoría
  double pensionActual = obtenerPension(categoria);

  // Obtener el porcentaje de descuento según el promedio
  double porcentajeDescuento = obtenerDescuento(promedio);

  // Calcular el importe de descuento
  double descuento = (porcentajeDescuento / 100) * pensionActual;

  // Calcular la nueva pensión
  double nuevaPension = pensionActual - descuento;

  // Mostrar los resultados
  print('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}');
  print('Descuento aplicado: S/. ${descuento.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
