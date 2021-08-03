import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_detay.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 9,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: listelenenBurc)));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline6,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.blue.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
