import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tele_birr_ui/utils/MarqueeUtil.dart' as m;
import 'package:tele_birr_ui/utils/util.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> language = [
    'English',
    'Amharic',
    'Affan Orommoo',
    'Tigrgna',
    'Af Somali'
  ];
  @override
  Widget build(BuildContext context) {
    final Color mainColor = Color.fromARGB(255, 141, 198, 63);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'images/ethio_tele_logo.png',
          fit: BoxFit.fill,
          height: 40,
          width: 100,
        ),
        actions: [
          Image.asset(
            'images/telebirr_logo.png',
            height: 40,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 140,
                alignment: Alignment.centerRight,
                child: DropdownButtonFormField(
                  dropdownColor: white,
                  alignment: Alignment.centerLeft,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  items: language.map((String? value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value!,
                          style: boldTextStyle(color: black),
                        ));
                  }).toList(),
                  value: language[0],
                  onChanged: ((value) {}),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.only(top: 5, left: 50, right: 50),
            // decoration: boxDecorationRoundedWithShadow(),
            child: m.Marquee(
              text: 'Welcome to Telebirr super app',
              style: boldTextStyle(size: 19),
              startPadding: 10.0,
              blankSpace: 20.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'All-in-One',
            style: boldTextStyle(),
          ).center(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Login',
            style: boldTextStyle(
              decoration: TextDecoration.underline,
              decorationColor: mainColor,
              size: 18,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              margin: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              child: Text("Mobile Number", style: boldTextStyle(size: 14))),
          8.height,
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: AppTextField(
              decoration: FormInputDecoration(
                  hint: 'Enter the number', padding: const EdgeInsets.all(10)),
              keyboardType: TextInputType.number,
              textFieldType: TextFieldType.PHONE,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: AppButton(
                text: "Next",
                color: Colors.blueAccent,
                textColor: Colors.white,
                shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                width: context.width(),
                onTap: () {}),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Don`t have an account?'),
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Create new account',
                  style: TextStyle(fontWeight: FontWeight.bold, color: grey),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Help",
          ),
          Expanded(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                      '@2023 Ethio telecom.All rights reserved 1.0.0 version')))
        ],
      ),
    );
  }
}
