void main() {
  // Datos de entrada
  String tipoChocolate = 'Dulzura'; 
  int cantidad = 20;              
  double precioChocolate(String tipo) =>
      tipo == 'Primor' ? 8.5 :
      tipo == 'Dulzura' ? 10.0 :
      tipo == 'Tentación' ? 7.0 :
      tipo == 'Explosión' ? 12.5 : 0.0;
  double descuentoPorCantidad(int cantidad) =>
      cantidad < 5 ? 0.04 :
      cantidad < 10 ? 0.065 :
      cantidad < 15 ? 0.09 : 0.115;
  int caramelosPorChocolate(double importe) =>
      importe >= 250 ? 3 : 2;
  double precioUnitario = precioChocolate(tipoChocolate);
  double importeCompra = precioUnitario * cantidad;
  double descuento = importeCompra * descuentoPorCantidad(cantidad);
  double importeFinal = importeCompra - descuento;
  int caramelosObsequio = caramelosPorChocolate(importeFinal) * cantidad;

  print('Tipo de chocolate: $tipoChocolate');
  print('Cantidad de chocolates: $cantidad');
  print('Precio unitario: S/. ${precioUnitario.toStringAsFixed(2)}');
  print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
  print('Descuento aplicado: S/. ${descuento.toStringAsFixed(2)}');
  print('Importe final a pagar: S/. ${importeFinal.toStringAsFixed(2)}');
  print('Caramelos de obsequio: $caramelosObsequio');
}
