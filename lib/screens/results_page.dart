import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  // final Calculator calculator;
  final String resultText;
  final String bmiResult;
  final String interpretation;

  // ResultsPage({@required this.calculator});
  ResultsPage(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'RESULT',
                      style: kResultTextStyle,
                    ),
                    Text(
                      // calculator.calculateBMI(),
                      bmiResult,
                      style: kResultBMI,
                    ),
                    Text(
                      // calculator.getResult(),
                      resultText,
                      style: kLabelTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          // calculator.getInterpretation(),
                          interpretation,
                          style: kResultsBody,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          BottomButton(
            title: 'Recalculate',
            onTap: () {
              Navigator.pop(
                context,
              );
            },
          )
        ],
      ),
    );
  }
}
