import 'package:flutter/material.dart';

void main() => runApp(const MyListacard());

class MyListacard extends StatefulWidget {
  const MyListacard({Key? key}) : super(key: key);

  @override
  State<MyListacard> createState() => _MyListacardState();
}

class _MyListacardState extends State<MyListacard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Listview Hernandez",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Paginainicial(),
    );
  }
}

class Paginainicial extends StatefulWidget {
  const Paginainicial({Key? key}) : super(key: key);

  @override
  State<Paginainicial> createState() => _PaginainicialState();
}

class _PaginainicialState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/balonbasquet.jpg",
    "assets/images/balonnike.jpg",
    "assets/images/chamarra1.jpg",
    "assets/images/gorra1.jpg",
    "assets/images/jordan1.jpg",
    "assets/images/jordan2.jpg",
    "assets/images/playera1.jpg",
    "assets/images/playera2.jpg",
    "assets/images/sudadera1.jpg",
    "assets/images/tenispuma1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Jurado Garcia"),
        ),
        body: ListView.builder(
          // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: const Text("This is title"),
                subtitle: const Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
