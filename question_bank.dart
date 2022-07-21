import 'package:quiz_app/question.dart';

class question_bank {
  int question_number = 0;

  List<question> bank = [
    question('Some cats are actually allergic to humans.', true),
    question('You can lead a cow down stairs but not up stairs.', false),
    question('A slug\'s blood is green.', true),
    question('A house fly has two feathers.', true),
    question('Buzz Aldrin\' mother\'s maiden name was \"Moon"\.', true),
    question('It is legal to pee in the Ocean in Portugal.', true),
    question('Sir Sayyed was the founder of Pakistan.', false),
    question('AI\'s full for is Arya IN.', false)
  ];

  question_bank() {}

  void next_question() {
    if (question_number < bank.length - 1) {
      question_number++;
    }
  }

  String getquestion() {
    return bank[question_number].text;
  }

  bool getanswer() {
    return bank[question_number].answer;
  }

  bool isFinished() {
    if (question_number >= bank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    question_number = 0;
  }
}
