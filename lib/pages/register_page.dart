import 'package:flutter/material.dart';
import 'package:task_flutter/pages/verification_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 120.0),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              header(),
              inputField("e-Posta Adresiniz"),
              actionField(),
            ],
          ),
        ),
      ),
    );
  }

  Column actionField() => Column(children: [
        loginButton(),
        customDivider(),
        googleButton(),
        const Text(""),
        appleButton()
      ]);

  Widget appleButton() => loginBy(
      imagePath: "assets/images/apple.png",
      labelText: "Apple",
      backgroundColor: Colors.black);

  Widget googleButton() => loginBy(
      imagePath: "assets/images/google.png",
      labelText: "Google",
      backgroundColor: Colors.white);

  Widget loginBy(
          {required String imagePath,
          required String labelText,
          required Color backgroundColor}) =>
      Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(backgroundColor)),
                onPressed: () {},
                icon: Image.asset(imagePath, height: 16, width: 16),
                label: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "$labelText ile Devam Et",
                    style: const TextStyle(color: Colors.grey),
                  ),
                )),
          ),
        ],
      );

  Widget customDivider() => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Divider(thickness: 1)),
          Padding(padding: EdgeInsets.all(8.0), child: Text("veya")),
          Expanded(child: Divider(thickness: 1))
        ],
      );

  Column header() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title('Kayıt Ol'),
          subtitle(
              'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.'),
        ],
      );

  Widget loginButton() => Row(
        children: [
          Expanded(
            child: OutlinedButton(
              style: const ButtonStyle(
                  side:
                      MaterialStatePropertyAll(BorderSide(color: Colors.grey))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerificationPage(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Kayıt Ol',
                  style: TextStyle(color: Colors.grey),
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
}
