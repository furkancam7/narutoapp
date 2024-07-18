import 'package:flutter/material.dart';
import 'package:naruto/data/strings.dart';
import 'package:naruto/model/naruto.dart';
import 'package:naruto/model/naruto_item.dart';

class narutoHome extends StatelessWidget {
  late final List<Naruto> allChar;
  narutoHome() {
    allChar = dataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          "Naruto Characters",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return NarutoItem(
              listedNaruto: allChar[index],
            );
          },
          itemCount: allChar.length,
        ),
      ),
    );
  }

  List<Naruto> dataSource() {
    List<Naruto> temp = [];
    for (int i = 0; i < 17; i++) {
      var name = Strings.nameCharacters[i];
      var location = Strings.location[i];
      var speciality1 = Strings.speciality[i];
      var smallImage = Strings.nameCharacters[i].toLowerCase() + '${i + 1}.png';
      var bigImage =
          Strings.nameCharacters[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Naruto addC = Naruto(name, location, speciality1, smallImage, bigImage);
      temp.add(addC);
    }
    return temp;
  }
}
