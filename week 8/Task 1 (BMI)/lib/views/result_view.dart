import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:bmi/views/home_view.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:bmi/widgets/result_container.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    final double bmi = ModalRoute.of(context)!.settings.arguments as double;

    Map<String, dynamic> getBMICategory(double bmi) {
      if (bmi < 18.5) {
        return {
          'label': 'Underweight',
          'color': Colors.blueGrey.shade700,
          'message': 'Try to eat more nutritious food and build muscle.',
          'description':
              'Being underweight means you may not have enough body fat for optimal health.',
          'risks': [
            'Fatigue',
            'Weak immune system',
            'Osteoporosis',
            'Fertility issues',
          ],
        };
      } else if (bmi < 25) {
        return {
          'label': 'Normal',
          'color': Colors.green.shade700,
          'message': 'Great job! Keep maintaining your healthy lifestyle.',
          'description':
              'A BMI between 18.5 and 24.9 is considered healthy for your height.',
          'risks': ['Maintain your health to avoid future risks.'],
        };
      } else if (bmi < 30) {
        return {
          'label': 'Overweight',
          'color': Colors.orange.shade700,
          'message':
              'Try a healthy diet and regular exercise to lose weight and feel better.',
          'description':
              'Being overweight means having more body fat than is considered healthy for your height. It’s often measured using the Body Mass Index (BMI). A BMI between 25 and 29.9 is considered overweight.',
          'risks': [
            'High blood pressure',
            'Heart disease',
            'Type 2 diabetes',
            'Joint pain',
            'Sleep disorders',
          ],
        };
      } else {
        return {
          'label': 'Obese',
          'color': Colors.red.shade900,
          'message': 'Seek professional help to manage your weight safely.',
          'description': 'A BMI of 30 or higher is considered obese.',
          'risks': [
            'Heart disease',
            'Diabetes',
            'Stroke',
            'Certain cancers',
            'Low mobility',
          ],
        };
      }
    }

    final bmiCategory = getBMICategory(bmi);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: AppBar(
            backgroundColor: AppColors.blackColor,
            elevation: 0,
            title: Text('Results', style: TextStyles.textStyle20),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              ResultContainer(
                bmi: bmi,
                bmiCategory: bmiCategory['label'],
                massege: bmiCategory['message'],
                color: bmiCategory['color'],
              ),
              SizedBox(height: 24),
              Text(
                "What is ${bmiCategory['label']}?",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                bmiCategory['description'],
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 16),
              Text(
                "⚠️ Health Risks of Being ${bmiCategory['label']}:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...bmiCategory['risks'].map<Widget>(
                (risk) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    "• $risk",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),

              CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Re-calculate',
                icon: Icons.refresh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
