import 'package:flutter/material.dart';

Widget selectGender({
  required Map data,
  required Color color,
  required onTab,
}) =>
    Expanded(
      child: InkWell(
        onTap: onTab,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(data['image']),
                width: 70,
                height: 70,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['title'],
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );

Widget height({required onChange, required double value}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff17182F),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Height',
              style: TextStyle(color: Colors.white54, fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "${value.round()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'cm',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Slider(
              value: value,
              onChanged: onChange,
              max: 200,
              min: 50,
              activeColor: Colors.white,
              inactiveColor: Colors.white54,
              thumbColor: const Color(0xffE62E53),
            ),
          ],
        ),
      ),
    );

Widget defaultButton({required VoidCallback onPressed, required title}) =>
    SizedBox(
      width: double.infinity,
      child: MaterialButton(
        height: 50,
        onPressed: onPressed,
        color: const Color(0xffE62E53),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );

Widget weightAndAge({
  required title,
  required variable,
  required onTapOne,
  required onTapTwo,
}) =>
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff17182F),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 25,
              ),
            ),
            Text(
              '$variable',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: onTapOne,
                  icon: const Icon(
                    Icons.add,
                  ),
                  color: Colors.white,
                  iconSize: 30,
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white54)),
                ),
                IconButton(
                  onPressed: onTapTwo,
                  icon: const Icon(
                    Icons.remove,
                  ),
                  color: Colors.white,
                  iconSize: 30,
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white54)),
                ),
              ],
            )
          ],
        ),
      ),
    );

Widget card({required Map json, required double bim}) => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff17182F),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                json['title'],
                style: TextStyle(
                    color: json['color'],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                bim.toStringAsFixed(1),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${json['title']} BMI Range :',
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${json['subtitle']} kg/m2',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(30),
                child: Text(
                  textAlign: TextAlign.center,
                  json['description'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
                  backgroundColor:
                      const WidgetStatePropertyAll(Color(0xff181A2E)),
                  padding: const WidgetStatePropertyAll(
                      EdgeInsetsDirectional.symmetric(
                          horizontal: 40, vertical: 15)),
                ),
                onPressed: () {},
                child: const Text(
                  'Save Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
