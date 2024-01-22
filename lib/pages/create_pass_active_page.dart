import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task_flutter/pages/login_page.dart';

Scaffold CreatePassActivePage() {
  return Scaffold(
    body: Container(
      margin: EdgeInsets.only(top: 120.0),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                header(),
              ],
            ),
            buildPinPut(),
            approveButton(),
          ],
        ),
      ),
    ),
  );
}

Widget buildPinPut() {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(8),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: Color.fromRGBO(234, 239, 243, 1),
    ),
  );

  return Pinput(
    defaultPinTheme: defaultPinTheme,
    focusedPinTheme: focusedPinTheme,
    submittedPinTheme: submittedPinTheme,
    length: 6,
    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
    showCursor: true,
    onCompleted: (pin) => print(pin),
  );
}

Row approveButton() {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black)),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("İleri"),
          ),
        ),
      ),
    ],
  );
}

Column header() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title("Şifre Tekrar"),
      subtitle("Lorem Ipsum is simply dummy "),
    ],
  );
}
