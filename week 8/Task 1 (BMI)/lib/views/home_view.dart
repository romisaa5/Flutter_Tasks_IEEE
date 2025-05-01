import 'package:bmi/constants/enum.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:bmi/widgets/age_and_weight_container.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:bmi/widgets/gender_selection.dart';
import 'package:bmi/widgets/height_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Gender? selectedGender;
  double height = 170;
  int weight = 60;
  int age = 20;
  String selectedHeightUnit = 'Cm';

  double calculateBMI() {
    double heightInMeters;

    switch (selectedHeightUnit) {
      case 'In':
        heightInMeters = height * 0.0254;
        break;
      case 'Ft':
        heightInMeters = height * 0.3048;
        break;
      default:
        heightInMeters = height / 100;
    }

    return weight / (heightInMeters * heightInMeters);
  }

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
              HeightContainer(
                onUnitChanged: (unit) {
                  setState(() {
                    selectedHeightUnit = unit;
                  });
                },
                height: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AgeAndWeightContainer(
                    title: 'Weight',
                    unit: 'Kg',
                    value: weight,
                    onChanged: (val) {
                      setState(() {
                        weight = val;
                      });
                    },
                  ),
                  AgeAndWeightContainer(
                    onChanged: (val) {
                      setState(() {
                        age = val;
                      });
                    },
                    value: age,
                    title: 'Age',
                    unit: 'Year',
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {
                  double bmi = calculateBMI();
                  Navigator.pushNamed(context, '/result', arguments: bmi);
                },
                text: 'Calculate',
                icon: Icons.calculate_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
