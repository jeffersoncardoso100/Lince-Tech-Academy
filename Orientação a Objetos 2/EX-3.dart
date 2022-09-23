
import 'dart:math' as math;

void main() {
  final biblioteca = BibliotecaMusica;

}

class BibliotecaMusica {
  BibliotecaMusica (this.musicasDisponiveis);

  List<Musica> musicasDisponiveis;

  void imprimir() {
    for (final musica in musicasDisponiveis) {
      print('> $musica');
    }
  }
}
class Musica {
  Musica(this.titulo, this.nome, this.album, this.duracao);

  String titulo;
  String nome;
  String album;
  int duracao;
}
 class Musicas01 {
   List<String> nomeMusica = [
     'Sweet child o mine',
     'Acima do Sol',
     'Anjo',
     'Ilha',
   ];
   List <String> nomeArtista = [
     'Guns n Roses ',
     'Skank',
     'Rappa',
     'Armandinho'
   ];
   List <String> nomeAlbum = [
     'Appetite for Destructions',
     'MTV',
     'Ao Vivo',
     'Acustico',
   ];
   List <int> duracao = [ 203, 189, 178, 218];

   int duracaoTotal = 0;

   void imprimir() {
     int duracaoTotal = 0;
     for (int i = 0; i < nomeMusica.length; i ++) {
       duracaoTotal += duracao[i];
       print('Título: { $nomeMusica [ i ]} \n '
           'Artista: { $nomeArtista [ i ]} \n '
           'Álbum: { $nomeAlbum [ i ]} \n '
           'Duração em Segundos: { $duracao [ i ]} \n ');
     }
     print('Duração total: ${(duracaoTotal / 1000).toStringAsFixed(
         1)} em horas \n ');
   }
 }
 // SEGUI O PASSO A PASSO CONFORME NA MENTORIA POREM NAO CONSEGUI PROCEGUIR...
