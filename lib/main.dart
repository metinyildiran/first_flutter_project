import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["Engin Demir", "Kerem Varış", "Berkay Bilgin"];

    return Scaffold(
      appBar: AppBar(
        title: Text("This is an app bar"),
      ),
      body: buildBody(context, ogrenciler),
    );
  }

  Widget buildBody(BuildContext context, var ogrenciler) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: ogrenciler.length,
                itemBuilder: (BuildContext context, int index) {
                  // This block runs for the number of itemCount
                  return Text(ogrenciler[index]);
                })),
        Center(
          child: ElevatedButton(
            onPressed: () {
              var alert = AlertDialog(
                title: Text("Sınav sonucu"),
                content: Text("Geçti"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Tamam"),
                  )
                ],
              );

              showDialog(
                  context: context, builder: (BuildContext context) => alert);
            },
            child: Text("Sonucu gör"),
          ),
        ),
      ],
    );
  }
}
