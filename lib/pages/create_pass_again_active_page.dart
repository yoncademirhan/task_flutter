import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task_flutter/pages/account_page.dart';

class CreatePassAgainActivePage extends StatefulWidget {
  const CreatePassAgainActivePage({super.key});

  @override
  State<CreatePassAgainActivePage> createState() =>
      _CreatePassAgainActivePageState();
}

class _CreatePassAgainActivePageState extends State<CreatePassAgainActivePage> {
  @override
  Widget build(BuildContext context) {
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
              approveButton(context),
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
      validator: (s) {
        return s == '123456' ? null : 'Şifre hatalı';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }

  Row approveButton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Doğrula"),
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
        subtitle("Lorem ipsum dolore"),
      ],
    );
  }
}
