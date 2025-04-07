
import 'package:flutter/material.dart';
import 'package:to_do_app/BMI/features/auth/data/models/data.dart';
import 'package:to_do_app/BMI/features/auth/presentation/widgets/compnent.dart';

class BmiResultScreen extends StatelessWidget {

  Color backgroundColor = const Color(0xff03041B);
  Color primaryColor = const Color(0xffE62E53);
  Color secondaryColor = const Color(0xff17182F);

  double BMI;

  BmiResultScreen(this.BMI);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 10,
        shadowColor: Colors.black,
        leading: const Icon(null),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 20),
            child: Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          card(bim: BMI,json: bmiCalculate[logic(bmi: BMI)]),
          defaultButton(onPressed: (){Navigator.pop(context);}, title: 'RE-CALCULATE YOUR BMI!')
        ],
      ),
    );
  }

/*
Example
* 1 => 1.75/45 = 14.7
* 2 => 1.75/65 = 21.2
* 3 => 1.75/80 = 26.2
* 4 => 1.75/95 = 31.2
* 5 => 1.75/110 = 36.1
* */

  int logic({required double bmi}){
    int index;
    if(bmi <= 18.5) {
      index = 0;
    } else if(bmi > 18.5 && bmi <= 24.9){
      index = 1;
    } else if(bmi >= 25 && bmi <= 29.9){
      index = 2;
    } else if(bmi >= 30 && bmi <= 34.9){
      index = 3;
    } else if(bmi >= 35 && bmi <= 39.9){
      index = 4;
    }else{
    index = 4;
  }
    return index;
  }

}
