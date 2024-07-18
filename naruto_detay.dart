import 'package:flutter/material.dart';
import 'package:naruto/model/naruto.dart';
import 'package:palette_generator/palette_generator.dart';

class NarutoDetay extends StatefulWidget {
  final Naruto choosenOne;
  const NarutoDetay(Naruto listedNaruto, {super.key, required this.choosenOne});

  @override
  State<NarutoDetay> createState() => _NarutoDetayState();
}

class _NarutoDetayState extends State<NarutoDetay> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    super.initState();
    appbarColorFind();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              backgroundColor: appbarColor,
              title: Text(
                widget.choosenOne.narutoName,
                style: const TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.black,
                    fontSize: 40),
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  "images/" + widget.choosenOne.narutoBuyukResim,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    widget.choosenOne.narutoSpeciality,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void appbarColorFind() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.choosenOne.narutoBuyukResim}'));
    appbarColor = _generator.vibrantColor!.color;
    setState(() {});
  }
}
