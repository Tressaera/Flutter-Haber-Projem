import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YanMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20.0,
      ),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.blueGrey.shade50,
              child: Image.asset('assets/gundem.jpg'),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.all_inclusive),
                    title: Text('Gündem'),
                    onTap: () {
                      Navigator.pop(context);
                      _urlAc('https://www.gercekgundem.com');
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),
                  ListTile(
                    leading: Icon(Icons.airplay),
                    title: Text('Haberler'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/haberler');
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),
                  ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('Kurucu Üyeler'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/kurucuyeler');
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text('Hakkımızda'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/hakkimizda');
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    color: Color(0xFF2F2C7F),
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_phone,
                      ),
                      title: Text(
                        'İletişim',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/iletisim');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future _urlAc(String link) async {
  // ignore: deprecated_member_use
  if (await canLaunch(link)) {
    // ignore: deprecated_member_use
    await launch(link);
    debugPrint('Gönderilen linke gidiyorum!');
  }
}
