import 'package:flutter/material.dart';
import 'package:task_flutter/pages/account_verfication.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 120.0),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  header(),
                ],
              ),
              inputField("Ad"),
              inputField("Soyad"),
              inputField("Cep Telefonu"),
              inputField("T.C. Kimlik No"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kabul Etmek için tıkla"),
                  SwitchExample(),
                ],
              ),
              actionField(context),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.blue,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}

Column actionField(BuildContext context) => Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: loginButton(context),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: afterButton(context),
      ),
      const Text(""),
    ]);

Column header() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title('Hesabını Doğrula'),
        subtitle('Lorem Ipsum, dizgi ve baskı endüstrisinde'),
      ],
    );

Widget loginButton(BuildContext context) => Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 180, 180, 180)),
                side: MaterialStatePropertyAll(BorderSide(color: Colors.grey))),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AccountVerification()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Onayla',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
Widget afterButton(BuildContext context) => Row(
      children: [
        Expanded(
          child: OutlinedButton(
            style: const ButtonStyle(
                side:
                    MaterialStatePropertyAll(BorderSide(color: Colors.black))),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AccountVerification()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Giriş Yap',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );

Widget inputField(String hintText) => TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(), hintText: hintText),
    );

Widget subtitle(String subtitle) => Text(
      subtitle,
      style: const TextStyle(
        color: Color(0xFF707B81),
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
    );

Widget title(String title) => Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFF2A2A2A),
          fontSize: 32,
          fontFamily: 'Raleway',
        ),
      ),
    );
