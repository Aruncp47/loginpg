import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GridUi(),
  ));
}

class GridUi extends StatelessWidget {
  const GridUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Grid")),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkDwz6tW-Nj5oFVCLlUahc7-Ui6NvkOtGmEQ&usqp=CAU"),
                            fit: BoxFit.cover)),
                    child: const Text("USA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.planetware.com/wpimages/2020/03/england-top-rated-cities-london.jpg"),
                            fit: BoxFit.cover)),
                    child: const Text("ENGLAND",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
                              fit: BoxFit.cover)),
                      child: const Text("France",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)))),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.natgeofe.com/k/415419c5-3768-4c8f-8697-f90de7a6075b/russia-st-basils_16x9.jpg?w=1200"),
                              fit: BoxFit.cover)),
                      child: const Text("RUSSIA",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)))),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://a.cdn-hotels.com/gdcs/production159/d204/01ae3fa0-c55c-11e8-9739-0242ac110006.jpg"),
                              fit: BoxFit.cover)),
                      child: const Text("CANADA",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)))),
            ]));
  }
}
