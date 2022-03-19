import 'package:flutter/material.dart';

class FinanceAppHome extends StatefulWidget {
  const FinanceAppHome({Key? key}) : super(key: key);

  @override
  State<FinanceAppHome> createState() => _FinanceAppHomeState();
}

class _FinanceAppHomeState extends State<FinanceAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 9, 54, 121),
                padding: const EdgeInsets.only(
                  top: 60.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "R\$ 2.589,50",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Image(
                              image: AssetImage("assets/bell2.png"),
                              height: 50.0,
                              width: 50.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 45.0,
                              margin: const EdgeInsets.only(left: 4.0),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 2),
                                      blurRadius: 6.0),
                                ],
                                image: DecorationImage(
                                  image: AssetImage('assets/profile'),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Text(
                      "Available Balance",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      height: 100.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imagens.length,
                        itemBuilder: (context, int i) {
                          return Column(
                            children: [
                              containerHome(AssetImage(imagens[i])),
                              Text(
                                text[i],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 189, 185, 185)),
                              )
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0,
              bottom: 5.0,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 320,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  final List text = ["Send", "Request", "Loan", "Topup"];

  final List imagens = [
    "assets/cards",
    "assets/cards",
    "assets/cards",
    "assets/cards",
  ];

  Widget containerHome(AssetImage image) {
    return Container(
      height: 50.0,
      width: 50.0,
      margin: const EdgeInsets.only(
          left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        color: Colors.blueGrey,
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
