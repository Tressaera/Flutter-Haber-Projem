import 'package:flutter/material.dart';

class Iletisim extends StatefulWidget {
  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF03A9F4),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "İletişim",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Gündem Yayıncılık İletişim Kısmıdır"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Ad",
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "E-Mail",
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Mesaj",
                      ),
                    ),
                    SizedBox(height: 8.0),
                    MaterialButton(
                      height: 60.0,
                      minWidth: double.infinity,
                      color: Color(0xffeeeeee),
                      onPressed: () {},
                      child: Text(
                        "Gönder",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
