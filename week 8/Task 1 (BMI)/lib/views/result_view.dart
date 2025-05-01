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
      'message': 'Your weight is below the healthy range. Consider gaining weight through nutritious foods.',
      'description':
          'Being underweight can affect your energy and immune system. A balanced diet with healthy calories and regular meals can help you improve your health.',
      'risks': [
        'You may feel tired or weak more often.',
        'Your immune system might not fight off illness well.',
        'Higher risk of bone fractures due to weaker bones.',
        'Possible hormone imbalances or fertility issues.',
      ],
    };
  } else if (bmi < 25) {
    return {
      'label': 'Normal',
      'color': Colors.green.shade700,
      'message': 'Great! You’re in the healthy range. Keep maintaining your good habits.',
      'description':
          'A normal BMI reduces the risk of health problems. Continue with your healthy lifestyle, including balanced meals and staying active.',
      'risks': [
        'No major risks — just keep up the good work and avoid unhealthy habits.',
      ],
    };
  } else if (bmi < 30) {
    return {
      'label': 'Overweight',
      'color': Colors.orange.shade700,
      'message': 'Try a healthy diet and regular exercise to lose weight and feel better.',
      'description':
          'Being overweight means having more body fat than is considered healthy for your height. It’s often measured using the Body Mass Index (BMI). A BMI between 25 and 29.9 is considered overweight.',
      'risks': [
        'Increased chance of high blood pressure.',
        'More pressure on joints, which can cause pain.',
        'Greater risk of heart-related issues.',
        'Possible sleep troubles like snoring or sleep apnea.',
      ],
    };
  } else {
    return {
      'label': 'Obese',
      'color': Colors.red.shade900,
      'message': 'Your weight is in the obese range. It’s time to make lifestyle changes.',
      'description':
          'Obesity increases the risk of serious health conditions. Even modest weight loss can improve your health significantly. Start with small steps, and consider seeking professional support.',
      'risks': [
        'Higher chance of serious conditions like diabetes and heart disease.',
        'Increased risk of joint pain and mobility issues.',
        'Greater risk of some cancers.',
        'Breathing difficulties and lower energy levels.',
        'Mental health can also be affected by obesity.',
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
              SizedBox(height: 10),
              Text(
                "What is ${bmiCategory['label']}?",
                style: TextStyles.textStyle18,
              ),

              Text(
                bmiCategory['description'],
                style: TextStyles.textStyle16.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 16),
              Text(
                "⚠️ Health Risks of Being ${bmiCategory['label']}:",
                style: TextStyles.textStyle18
              ),
              ...bmiCategory['risks'].map<Widget>(
                (risk) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Text(
                    "• $risk",
                    style: TextStyles.textStyle14,
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
