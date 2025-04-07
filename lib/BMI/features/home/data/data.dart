import 'package:flutter/material.dart';

List genderData = [
  {'image': 'assets/images/male.png', 'title': 'Male'},
  {'image': 'assets/images/female.png', 'title': 'Female'},
];


List<Map<String,dynamic>>  bmiCalculate  = [
  {
    'color': Colors.yellow,
    'title':'Underweight',
    'subtitle':'BMI < 18.5',
    'description':'your weight may be too low for your height. Being underweight could be a sign of malnutrition'
  },{
    'color':Colors.green,
    'title':'Normal',
    'subtitle':'18.5 - 24.9',
    'description':'You have a normal body weight. Good job!'
  },{
    'color':Colors.orange,
    'title':'Overweight',
    'subtitle':'25 - 29.9',
    'description':'you might have excess body weight for your height.'
  },{
    'color':Colors.deepOrange,
    'title':'Moderate obesity',
    'subtitle':'30 - 34.9',
    'description':'It\'s associated with a higher risk of health issues such as heart disease'
  },{
    'color':Colors.red,
    'title':'Severe obesity',
    'subtitle':'35 - 39.9',
    'description':'t\'s associated with a very high risk of severe health problems'
}
];