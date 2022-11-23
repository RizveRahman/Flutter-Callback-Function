import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppHome();
  }
}

class MyAppHome extends State< MyApp > {

  var msg = 'Clicked the button to see how call back function works';
  void callBack () {
    setState(() {
      msg = "Yes!!! It works";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.blueAccent,
          child: const Center(child: Text('CallBack Function')),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(msg, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              ElevatedButton(onPressed:

              callBack, child: const Text('Click Me')),
            ],
          ),
        ),
      ),
    );
  }

}




