import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Row(
              children: [
                Icon(Icons.arrow_back),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/route.jpg'),
                ),
                SizedBox(width: 20,),
                Text('Nour Eldien', style: TextStyle(),),
                Spacer(),
                Icon(Icons.video_call),
                SizedBox(width: 20,),
                Icon(Icons.phone),
                SizedBox(width: 20,),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/route.jpg'), radius: 25,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(18))
                    ),
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.only(top: 40),

                      child: Text("This My First Message", style: TextStyle(color: Colors.white),))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(18))
                      ),
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.only(top: 40),

                      child: Text("This My Sending Message", style: TextStyle(color: Colors.white),)),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/route.jpg'), radius: 25,
                    ),
                  )
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: 'Write Your Message Here'
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),

                      padding: EdgeInsets.all(4),
                      child: IconButton(icon: Icon(Icons.send, color: Colors.white,), onPressed: null)
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
