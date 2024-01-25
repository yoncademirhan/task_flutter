import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task_flutter/pages/register_page.dart';

class LoginPassActivePage extends StatefulWidget {
  const LoginPassActivePage({super.key});

  @override
  State<LoginPassActivePage> createState() => _LoginPassActivePageState();
}

class _LoginPassActivePageState extends State<LoginPassActivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 120.0),
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
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: 6,
      validator: (s) {
        return s == '123456' ? null : 'Şifre hatalı';
      },
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Onayla"),
            ),
          ),
        ),
      ],
    );
  }

  Column header() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      title("Şifeni Gir"),
      subtitle("Lorem ipsum"),
    ]);
  }

  Widget subtitle(String subtitle) => Text(
        subtitle,
        style: const TextStyle(
          color: Color(0xFF707B81),
          fontSize: 16,
          fontFamily: 'Poppins',
        ),
      );

  Widget title(String title) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 32,
            fontFamily: 'Raleway',
          ),
        ),
      );
}
