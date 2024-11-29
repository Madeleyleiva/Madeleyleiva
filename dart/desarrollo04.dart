import 'dart:io';

// Función para determinar el regalo basado en la cantidad de unidades adquiridas
String obtenerRegalo(int cantidad) {
  if (cantidad < 26) {
    return 'Un lapicero';
  } else if (cantidad >= 26 && cantidad <= 50) {
    return 'Un cuaderno';
  } else {
    return 'Una agenda';
  }
}

void main() {
  // Crear un mapa (Map) para almacenar los tipos de productos y sus precios
  Map<String, double> productos = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  // Mostrar los tipos de productos disponibles
  print('Tipos de productos disponibles:');
  productos.forEach((producto, precio) {
    print('$producto - S/. $precio');
  });

  // Entrada de datos
  stdout.write('Ingrese el tipo de producto (P1, P2, P3): ');
  String tipoProducto = stdin.readLineSync()!;

  stdout.write('Ingrese la cantidad de unidades adquiridas: ');
  int cantidadUnidades = int.parse(stdin.readLineSync()!);

  // Verificar si el tipo de producto es válido
  if (productos.containsKey(tipoProducto)) {
    // Calcular el importe total de la compra
    double precioProducto = productos[tipoProducto]!;
    double importeTotal = precioProducto * cantidadUnidades;

    // Determinar el regalo
    String regalo = obtenerRegalo(cantidadUnidades);

    // Mostrar los resultados
    print('Importe a pagar: S/. ${importeTotal.toStringAsFixed(2)}');
    print('Regalo: $regalo');
  } else {
    print('Tipo de producto no válido. Por favor, elija P1, P2 o P3.');
  }
}
