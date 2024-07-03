import 'question.dart';

class QuizBrain {

      int _questionNumber = 0;


   List<Question> _questionBank = [
    Question('In Flutter, the StatefulWidget\'s state is automatically preserved when the widget is removed from the widget tree and then reinserted into the tree.', false),
    Question('In Flutter, the build method of a widget can be called multiple times during the widget\'s lifecycle.',true),
    Question('In Flutter, setState can be called synchronously inside the build method.', false),
    Question('In Flutter, every widget is either a StatefulWidget or a StatelessWidget.', true),
    Question('In Flutter, the initState method of a StatefulWidget is called only once.', true),
    Question('In Flutter, you must dispose of all controllers and focus nodes in the dispose method.', true),
    Question('In Flutter, the main function is the entry point of a Flutter application.', true),
    Question('In Flutter, a StatelessWidget can maintain state.', false),
    Question('In Flutter, the context parameter in the build method is unique for each widget.', true),
    Question('In Flutter, hot reload preserves the state of your app.', true),
    Question('In Flutter, you can only have one Scaffold widget in an application.', false),
    Question('In Flutter, keys are used to preserve the state of widgets when they are moved in the widget tree.', true),
    Question('In Flutter, the paint method is called directly to draw widgets on the screen.', false),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

}