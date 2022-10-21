import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Hakkimizda extends StatefulWidget {
  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ustYapi(),
          icerik(),
        ],
      ),
    );
  }

  Widget ustYapi() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: kapakResmi(),
        ),
        Positioned(
          top: top,
          child: profilResmi(),
        ),
      ],
    );
  }

  Widget kapakResmi() => Container(
    color: Colors.grey,
    child: Image.network(
      'https://media4.s-nbcnews.com/j/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.nbcnews-fp-1024-512.png',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget profilResmi() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: NetworkImage(
      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/06/15/Chris-Pratt.jpg?quality=75&width=982&height=726&auto=webp',
    ),
  );

  Widget icerik() => Column(children: [
    const SizedBox(height: 8),
    Text(
      'Mert Yılmaz',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 8),
    Text(
      'Gündem Yayıncılık Yazarı',
      style: TextStyle(fontSize: 20, color: Colors.black),
    ),
    const SizedBox(height: 16),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SosyalIcon(FontAwesomeIcons.github),
        const SizedBox(width: 12),
        SosyalIcon(FontAwesomeIcons.instagram),
        const SizedBox(width: 12),
        SosyalIcon(FontAwesomeIcons.twitter),
        const SizedBox(width: 12),
        SosyalIcon(FontAwesomeIcons.linkedin),
      ],
    ),
    const SizedBox(height: 16),
    Divider(),
    const SizedBox(height: 16),
    hakkimizdaOlustur(),
    const SizedBox(height: 32),
  ]);
  Widget hakkimizdaOlustur() => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hakkımızda',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          'Amacımız sizi gün içinde yaşanan olaylardan haberdar etmek ve gelişenleri sıcağı sıcağına aktarmaktır.',
          style: TextStyle(fontSize: 18, height: 1.4),
        ),
      ],
    ),
  );

  Widget SosyalIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(icon, size: 32)),
      ),
    ),
  );
}
