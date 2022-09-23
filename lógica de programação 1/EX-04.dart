oid  main (){


  Lista < int > num  = [ 10 , 35 , 999 , 126 , 95 , 7 , 348 , 462 , 43 , 109 ];
  int i = 10 ,soma = 0 ;

  print ( "for: ${ forMode ( num , i , soma )} " );
  print ( "while: ${ whileMode ( num , i , soma )} " );
  print ( "recursão: ${ recursionMode ( num , i )} " );
  print ( "lista: ${ listMode ( num , i , soma )} " );
}

int  forMode ( List < int > num , int i, int soma){

  for (i = 0 ;i < num .length;i ++ ){
    soma +=  num [i];
  }

  retornar soma;
}

int  whileMode ( List < int > num , int i, int soma){

  e = 9 ;
  enquanto (i > - 1 ){
    soma +=  num [i];
    eu -- ;
  }

  retornar soma;
}

int  recursionMode ( List < int > num , int i){

  if (i == 0 ){
    retorna  0 ;
  }
  senão {
    return  num [i - 1 ] +  recursionMode ( num , i - 1 );
  }

}

int  listMode ( List < int > num , int i, int soma){

  soma +=  num . reduzir ((i, j) => i + j);

  retornar soma;
}