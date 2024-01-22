import 'package:flutter/material.dart';
import 'package:task_flutter/pages/account_page.dart';

class AccountVerification extends StatefulWidget {
  const AccountVerification({super.key});

  @override
  State<AccountVerification> createState() => _AccountVerificationState();
}

class _AccountVerificationState extends State<AccountVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: userButton(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: textTitle(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: spendButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row spendButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                side: MaterialStatePropertyAll(BorderSide(color: Colors.grey))),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Harcamaya Başla',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column textTitle() {
    return Column(
      children: [
        title("Hesabın Doğrulandı"),
        subtitle(
            "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir."),
      ],
    );
  }

  ElevatedButton userButton() {
    return ElevatedButton.icon(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.grey),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.supervised_user_circle,
        size: 42,
      ),
      label: title(""),
    );
  }
}
