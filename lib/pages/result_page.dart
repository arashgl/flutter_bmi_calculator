import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/components/index.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.interpretation,
      required this.resultText,
      required this.color});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                        color: color,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: bmiResult,
                            interpretation: interpretation,
                            resultText: resultText,
                            color: color,
                          )));
            },
            title: "Return to homepage",
          ),
        ],
      ),
    );
  }
}
