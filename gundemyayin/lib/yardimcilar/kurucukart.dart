import 'package:flutter/material.dart';

class KurucuKart extends StatelessWidget {
  final String kurucu;

  const KurucuKart({Key? key, required this.kurucu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Color(0xFF2F2C7F),
      child: Container(
        height: 120.0,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
        child: Center(
          child: Text(
            kurucu,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
