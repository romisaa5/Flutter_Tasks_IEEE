import 'package:bmi/constants/enum.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:bmi/widgets/age_and_weight_container.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:bmi/widgets/gender_selection.dart';
import 'package:bmi/widgets/hight_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: AppBar(
            leading: Image.asset(
              'assets/images/Logo.png',
              width: 45,
              height: 45,
            ),
            title: Text('BMI Calculator', style: TextStyles.textStyle20),
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenderSelection(
                    icon: Icons.male,
                    text: 'Male',
                    isSelected: selectedGender == Gender.male,
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                  GenderSelection(
                    icon: Icons.female,
                    text: 'Female',
                    isSelected: selectedGender == Gender.female,
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ],
              ),
              HightContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AgeAndWeightContainer(title: 'Weight',),
                  AgeAndWeightContainer(title: 'Age',)
                ],
              ),
              CustomButton(onPressed: (){}, text: 'Calculate', icon: Icons.calculate_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
