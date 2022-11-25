import 'questions.dart';

class QuizBrain {
  int _number = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Goa is famous for not producing coconut.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('Ostrich\'s eyes are smaller than its brain.', false),
    Question('Plants observe oxygen from atmosphere.', false),
    Question('Google was originally called \"Backrub\".', true),
    Question('Sound waves travel faster than light.', false),
    Question(' The sound of ape is chatter.', false),
    Question('Oology is study of bird\'s sound.', false),
    Question('The tomb of Akbar is in New Delhi.', false),
    Question('Quit India (Bharat Chodo) Movement was launched by Bhagat Singh.',
        false),
  ];

  void nextQuestion() {
    if (_number < _questionBank.length - 1) {
      _number++;
    }
  }

  String getQuestionText() {
    return _questionBank[_number].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_number].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_number >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _number = 0;
  }
}