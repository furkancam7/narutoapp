import 'package:flutter/material.dart';
import 'package:naruto/model/naruto.dart';
import 'package:naruto/naruto_detay.dart';

class NarutoItem extends StatelessWidget {
  final Naruto listedNaruto;
  const NarutoItem({super.key, required this.listedNaruto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      NarutoDetay(listedNaruto, choosenOne: listedNaruto)));
            },
            leading: Image.asset(
              "images/" + listedNaruto.narutoKucukResim,
            ),
            title: Text(
              listedNaruto.narutoName,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            subtitle: Text(listedNaruto.narutoLocation),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
