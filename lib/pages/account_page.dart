import 'package:flutter/material.dart';

Scaffold AccountPage() {
  return Scaffold(
    body: Container(
      margin: EdgeInsets.only(top: 120.0),
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
            actionField(),
          ],
        ),
      ),
    ),
  );
}

Column actionField() => Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: loginButton(),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: afterButton(),
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

Widget loginButton() => Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 180, 180, 180)),
                side: MaterialStatePropertyAll(BorderSide(color: Colors.grey))),
            onPressed: () {},
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
Widget afterButton() => Row(
      children: [
        Expanded(
          child: OutlinedButton(
            style: const ButtonStyle(
                side:
                    MaterialStatePropertyAll(BorderSide(color: Colors.black))),
            onPressed: () {},
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
