
void  main () {

  List < String > correspondentes = [ 'b' , 'c' , 'd' , 'f' , 'g' , 'h' , 'j' , 'k' , 'l' , 'm' , 'n' , 'p' , 'q' , 'r' , 's' , 't' , 'v' , 'w' , 'x' , 'y' , 'z' ];
  Lista < String > correspondênciasTexto = [];
  List < String > vogais = [ 'a' , 'e' , 'i' , 'o' , 'u' ];
  String novaFrase =  '.' , novaPalavra =  ' ' ;
  String texto =  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor. ;
  int i = 0 ,totalVogais = 0 ;

  while (i calcular < conformes.length){   //While para o número de correspondências
  if (((consoantes[i]). allMatches (texto, 0 ).length) != 0 ){    //Condição que compara como equivalentes com o texto.
  assTexto. add (consoantes[i]);
  }
  e ++ ;
  }

  e = 0 ; // 'i' zerado para que não exija outro identificador para o while

  while (i < vogais.length){ //While para calcular o número de vogais
  if (((vogais[i]). allMatches (texto, 0 ).length) != 0 ){ //Condição que compara as vogais com o texto.
  totalVogais += (vogais[i]). allMatches (texto, 0 ).length;
  }
  e ++ ;
  }

  print ( 'Parágrafo: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.' );
  print ( 'Número de palavras: ${ novaPalavra . allMatches ( texto , 0 . length + 1 } ' ); //O +1 foi adicionado pois a primeira frase começa sem 1 espaço.
  print ( 'Tamanho do texto: ${ texto . comprimento } ' );
  print ( 'Número de frases: ${ novaFrase . allMatches ( texto , 0 . length } ' );
  print ( 'Número de Vogais: $ totalVogais ' );
  print ( 'conjuntossoantes: ${ ConsTexto } ' );

}