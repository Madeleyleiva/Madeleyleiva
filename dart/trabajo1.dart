void main() {
 
  String categoria = 'D';  
  double promedio = 16.5;  

 
  double obtenerPension(String categoria) =>
      categoria == 'A' ? 550 :
      categoria == 'B' ? 500 :
      categoria == 'C' ? 460 :
      categoria == 'D' ? 400 : 0;


  double obtenerDescuento(double promedio) =>
      promedio >= 18 ? 0.15 :
      promedio >= 16 ? 0.12 :
      promedio >= 14 ? 0.10 :
      promedio >= 0 ? 0 : 0;

  double pensionBase = obtenerPension(categoria);
  double descuento = obtenerDescuento(promedio);

 
  double rebaja = pensionBase * descuento;
  double nuevaPension = pensionBase - rebaja;

  
  print('Categoría: $categoria');
  print('Promedio: $promedio');
  print('Pensión base: S/. $pensionBase');
  print('Rebaja: S/. $rebaja');
  print('Nueva pensión: S/. $nuevaPension');
}


