import 'package:flutter/material.dart';

class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _bas(context),
              _girisalan(context),
              _parolaunutma(context),
              _uyeol(context),
            ],
          ),
        ),
      ),
    );
  }

  _bas(context) {
    return Column(
      children: [
        Text(
          "Hoş Geldiniz!",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("Giriş Yapmak için bilgilerinizi giriniz"),
      ],
    );
  }

  _girisalan(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Kullanıcı Adı:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
              hintText: "Şifre:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.password)),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Giriş",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ],
    );
  }

  _parolaunutma(context) {
    return TextButton(onPressed: () {}, child: Text("Parolanızı mı unuttunuz"));
  }

  _uyeol(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hesabınız yok mu?"),
        TextButton(onPressed: () {}, child: Text("Üye Ol")),
      ],
    );
  }
}