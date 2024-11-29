void main() {
  int minutosTardanza = 10;  
  int observaciones = 1;   
  int puntajePuntualidad(int minutosTardanza) =>
      minutosTardanza == 0 ? 10 :
      minutosTardanza <= 2 ? 8 :
      minutosTardanza <= 5 ? 6 :
      minutosTardanza <= 9 ? 4 : 0;
  int puntajeRendimiento(int observaciones) =>
      observaciones == 0 ? 10 :
      observaciones == 1 ? 8 :
      observaciones == 2 ? 5 :
      observaciones == 3 ? 1 : 0;
  double bonificacion(int puntajeTotal) =>
      puntajeTotal == 20 ? 12.5 * puntajeTotal :
      puntajeTotal >= 17 ? 10.0 * puntajeTotal :
      puntajeTotal >= 14 ? 7.5 * puntajeTotal :
      puntajeTotal >= 11 ? 5.0 * puntajeTotal :
      puntajeTotal < 11 ? 2.5 * puntajeTotal : 0;
  int puntajeP = puntajePuntualidad(minutosTardanza);
  int puntajeR = puntajeRendimiento(observaciones);
  int puntajeTotal = puntajeP + puntajeR;
  double bonificacionTotal = bonificacion(puntajeTotal);


  print('Minutos de tardanza: $minutosTardanza');
  print('Observaciones: $observaciones');
  print('Puntaje por puntualidad: $puntajeP');
  print('Puntaje por rendimiento: $puntajeR');
  print('Puntaje total: $puntajeTotal');
  print('Bonificación total: S/. $bonificacionTotal');
}
