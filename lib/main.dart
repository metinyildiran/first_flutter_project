import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is an app bar"),
      ),
      body: Center(
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
    );
  }
}
