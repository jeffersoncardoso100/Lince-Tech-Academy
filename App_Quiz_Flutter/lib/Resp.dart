
// ignore_for_file: file_names

class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Qual Empresa criou o Flutter?",
    [
      Answer("Nokia", false),
      Answer("Samsung", false),
      Answer("Google", true),
      Answer("Apple", false),
    ],
  ));

  list.add(Question(
    "Em qual ano foi lançado a primeira versão de Flutter?",
    [
      Answer("2017", true),
      Answer("1996", false),
      Answer("2007", false),
      Answer("2014", false),
    ],
  ));

  list.add(Question(
    "Qual é a liguagem usada pelo Flutter?",
    [
      Answer("Java", false),
      Answer("Swift.", false),
      Answer("Go", false),
      Answer("Dart", true),
    ],
  ));

  list.add(Question(
    "Flutter é um framework de desenvolvimento com foco multiplataforma em dispositivos móveis.",
    [
      Answer("Verdadeiro", true),
      Answer("Falso", false),
    ],
  ));

  list.add(Question(
    " Os elementos estruturais no Flutter, como menus, opções de layout, botões São chamados de:",
    [
      Answer("Bibliotecas", true),
      Answer("Grid", false),
      Answer("Widgets", true),
      Answer("Map", false),
    ],
  ));
  return list;
}
