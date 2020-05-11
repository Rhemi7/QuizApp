import 'package:quizzlerapp/question.dart';

class QuestionBrain {
  int questionNumber = 0;

  List<Question> questionBank = [
    Question(
        'Who is the president of the United States of America?',
        'Boris Johnson',
        'Donald Trump',
        'Francois Hollande',
        'Emmanuel Macron'),
    Question('What year did Nigeria gain independence?', '1967', '1963', '1960',
        '1977'),
    Question('What is the full meaning of YC?', 'You-Craft', 'Y-Combinator',
        'You-Cursor', 'Youth-Creates'),
    Question('How many Local Government Areas does Lagos have?', '20', '57',
        '37', '23'),
    Question('What is the full meaning of PMS?', 'Premium Motor Spirit',
        'Priced Motor Solute', 'Priced Motor Solvent', 'Premium Motto Spirit'),
    Question('Which of these countries isn\'t part of the United Kingdom',
        'Scotland', 'Northern Ireland', 'Ireland', 'Wales'),
    Question('What is the full meaning of the computer acronym - HP', 'High PC',
        'Hewlett Packard', 'High Patron', 'His PC'),
    Question('Who is the founder of the startup - Uber', 'Trevoh Noah',
        'Travis Kalanick', 'Mark Zuckerberg', 'Elon Musk'),
    Question('Who is the co-founder of Microsoft', 'Paul Allen', 'Sergey Brin',
        'Larry Page', 'Peter Thiel'),
    Question('Which State is the smallest state by land ass in Nigeria?',
        'Ebonyi State', 'Lagos State', 'Nassarawa State', 'Delta State')
  ];

  void nextQuestion() {
    if (questionNumber <= questionBank.length) {
      questionNumber++;
    }
  }

  String getQuestion() {
    return questionBank[questionNumber].questionText;
  }

  String getAnswerA() {
    return questionBank[questionNumber].questionAnswerA;
  }

  String getAnswerB() {
    return questionBank[questionNumber].questionAnswerB;
  }

  String getAnswerC() {
    return questionBank[questionNumber].questionAnswerC;
  }

  String getAnswerD() {
    return questionBank[questionNumber].questionAnswerD;
  }
}
