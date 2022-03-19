import 'package:flutter/material.dart';
import 'package:transacao/finance.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavNarItem("Home", "assets/home.png", 0),
            buildNavNarItem("History", "assets/money.png", 1),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 45.0,
                width: 45.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xFF050073)),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            buildNavNarItem("Cards", "assets/cards.png", 2),
            buildNavNarItem("Profile", "assets/profile.png", 3),
          ],
        ),
      ),
      body: const FinanceAppHome(),
    );
  }

  Widget buildNavNarItem(
    String name,
    String imagem,
    int index,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          color: Color(0xffEBEDF0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.only(top: 10),
        child: Column(children: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image(
              image: AssetImage(imagem),
            ),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          )
        ]),
      ),
    );
  }
}
