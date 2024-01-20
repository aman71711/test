import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(title: 'My App', home: Homepage()));
}
// to create statefull page - type stf
// to create stateless - type stl

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text('My First Page', style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Text('Hello'),
            TextField(),
            ElevatedButton(
                onPressed: () {
                  print('Button Clicked');
                },
                child: Text('Click Me')),
            Container(
              height: 30,
            ),
            Image.network(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg')
          ],
        ));
  }
}
