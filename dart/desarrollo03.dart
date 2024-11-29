import 'dart:io';

// Clase para almacenar la información de los chocolates
class Chocolate {
  String tipo;
  double precio;

  Chocolate(this.tipo, this.precio);
}

// Función para obtener el descuento basado en la cantidad de chocolates
double obtenerDescuento(int cantidad) {
  if (cantidad < 5) {
    return 0.04; // 4%
  } else if (cantidad >= 5 && cantidad < 10) {
    return 0.065; // 6.5%
  } else if (cantidad >= 10 && cantidad < 15) {
    return 0.09; // 9%
  } else {
    return 0.115; // 11.5%
  }
}

// Función para determinar la cantidad de caramelos de obsequio
int obtenerCaramelos(double importe, int cantidad) {
  return (importe >= 250) ? cantidad * 3 : cantidad * 2;
}

void main() {
  // Crear un conjunto (Set) para almacenar los tipos de chocolate
  Set<Chocolate> chocolates = {
    Chocolate('Primor', 8.5),
    Chocolate('Dulzura', 10.0),
    Chocolate('Tentación', 7.0),
    Chocolate('Explosión', 12.5),
  };

  // Mostrar los tipos de chocolate
  print('Tipos de chocolate disponibles:');
  chocolates.forEach((choco) => print('${choco.tipo} - S/. ${choco.precio}'));

  // Entrada de datos
  stdout.write('Ingrese el tipo de chocolate: ');
  String tipoChocolate = stdin.readLineSync()!;

  stdout.write('Ingrese la cantidad de unidades adquiridas: ');
  int cantidadUnidades = int.parse(stdin.readLineSync()!);

  // Obtener el precio del chocolate seleccionado
  Chocolate? chocolateSeleccionado = chocolates.firstWhere(
    (choco) => choco.tipo == tipoChocolate,
    orElse: () => Chocolate('Desconocido', 0.0), // Valor por defecto
  );

  // Calcular el importe total de la compra
  double importeTotal = chocolateSeleccionado.precio * cantidadUnidades;

  // Calcular el porcentaje de descuento
  double descuentoPorcentaje = obtenerDescuento(cantidadUnidades);
  double importeDescuento = importeTotal * descuentoPorcentaje;

  // Calcular el importe a pagar
  double importeAPagar = importeTotal - importeDescuento;

  // Calcular la cantidad de caramelos obsequiados
  int cantidadCaramelos = obtenerCaramelos(importeAPagar, cantidadUnidades);

  // Mostrar los resultados
  print('Importe de la compra: S/. ${importeTotal.toStringAsFixed(2)}');
  print('Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
  print('Cantidad de caramelos de obsequio: $cantidadCaramelos');
}
