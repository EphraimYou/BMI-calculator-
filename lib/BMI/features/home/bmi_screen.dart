import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/BMI/features/auth/data/models/data.dart';
import 'package:to_do_app/BMI/features/auth/presentation/screens/bmi_result_screen.dart';
import 'package:to_do_app/BMI/features/auth/presentation/widgets/compnent.dart';
import 'dart:math';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool selected = true;
  double heightValue = 60;
  String gender = '';
  int age = 12;
  int weight = 50;
  double BMI = 0.0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff03041B),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    selectGender(
                        data: genderData[0],
                        color: selected
                            ? const Color(0xffE62E53)
                            : const Color(0xff17182F),
                        onTab: () {
                          setState(() {
                            selected = true;
                            gender = 'male';
                            print(gender);
                          });
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    selectGender(
                        data: genderData[1],
                        color: selected
                            ? const Color(0xff17182F)
                            : const Color(0xffE62E53),
                        onTab: () {
                          setState(() {
                            selected = false;
                            gender = 'female';
                            print(gender);
                          });
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
                child: height(
                    onChange: (val) {
                      setState(() {
                        heightValue = val;
                        print(heightValue.round());
                      });
                    },
                    value: heightValue)),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  weightAndAge(
                      title: 'Weight',
                      variable: weight,
                      onTapOne: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onTapTwo: () {
                        setState(() {
                          weight--;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  weightAndAge(
                      title: 'Age',
                      variable: age,
                      onTapOne: () {
                        setState(() {
                          age++;
                        });
                      },
                      onTapTwo: () {
                        setState(() {
                          age--;
                        });
                      }),
                ],
              ),
            )),
            defaultButton(
              title: 'Calculate',
              onPressed: () {
                BMI = weight / pow(heightValue / 100, 2);
                print(BMI);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (contex) => BmiResultScreen(BMI)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
