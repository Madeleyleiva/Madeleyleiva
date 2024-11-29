void main() {
  // Datos de entrada
  String tipoProducto = 'P3'; 
  int cantidad = 50;       
  double precioProducto(String tipo) =>
      tipo == 'P1' ? 15.0 :
      tipo == 'P2' ? 17.5 :
      tipo == 'P3' ? 20.0 : 0.0;
  String regaloPorCantidad(int cantidad) =>
      cantidad < 26 ? 'Un lapicero' :
      cantidad <= 50 ? 'Un cuaderno' : 'Una agenda';
  double precioUnitario = precioProducto(tipoProducto);
  double importeTotal = precioUnitario * cantidad;
  String regalo = regaloPorCantidad(cantidad);
  print('Tipo de producto: $tipoProducto');
  print('Cantidad de unidades: $cantidad');
  print('Precio unitario: S/. ${precioUnitario.toStringAsFixed(2)}');
  print('Importe total a pagar: S/. ${importeTotal.toStringAsFixed(2)}');
  print('Regalo: $regalo');
}
