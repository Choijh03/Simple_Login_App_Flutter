import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //화면에 보이는 영역
        appBar: AppBar(
          title: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ), //use ctrl + space to see what widget available
        body: SingleChildScrollView(
          //Email 입력시 가려지는걸방지
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            //up,down,left,right all same padding
            //EdgeInsets.only can be used to handle each direction
            //EdgeInsets.symmetric can be used to handle vertical & horizontal
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  obscureText: true, //hide password
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                Container(
                  width: double
                      .infinity, //maximize its size depending on screen size
                  margin: const EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
