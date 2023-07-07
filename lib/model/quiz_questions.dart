class QuizQuestion {
  const QuizQuestion(this.question, this.choices);
  final String question;
  final List<String> choices;

  List<String> getShuffledChoices() {
    var shuffledChoices = List.of(choices);
    shuffledChoices.shuffle();
    return shuffledChoices;
  }
}
