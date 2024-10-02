import 'dart:math';

class GeradorDeNumeroAleatorio {

  static  int gerarNumeroAleatorio(int numeromaximo) {
    Random numeroGerado = Random();
    return numeroGerado.nextInt(numeromaximo);
  }
}
