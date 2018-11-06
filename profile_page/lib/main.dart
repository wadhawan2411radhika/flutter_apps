import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var card = new SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.account_box,color: Colors.blue,size: 26.0,),
            title: new Text("Radhika Wadhawan",
            style: new TextStyle(fontWeight: FontWeight.w400),),
            subtitle: new Text("Student"),
          ),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.email,color: Colors.blue,size: 26.0,),
            title: new Text("abc@gmail.com",
            style: new TextStyle(fontWeight: FontWeight.w400),),
          ),
          new ListTile(
            leading: new Icon(Icons.phone,color: Colors.blue,size: 26.0,),
            title: new Text("+91-9898989898",
            style: new TextStyle(fontWeight: FontWeight.w400),),
          ),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.shopping_cart,color: Colors.blue,size: 26.0,),
            title: new Text("My orders",
            style: new TextStyle(fontWeight: FontWeight.w400),),),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.credit_card,color: Colors.blue,size: 26.0,),
            title: new Text("My wallet and cards",
              style: new TextStyle(fontWeight: FontWeight.w400),),),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.rate_review,color: Colors.blue,size: 26.0,),
            title: new Text("My reviews",
              style: new TextStyle(fontWeight: FontWeight.w400),),),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.question_answer,color: Colors.blue,size: 26.0,),
            title: new Text("My question and answers",
              style: new TextStyle(fontWeight: FontWeight.w400),),),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.home,color: Colors.blue,size: 26.0,),
            title: new Text("My address",
              style: new TextStyle(fontWeight: FontWeight.w400),),),

  ],


      ),
    );

    final sizedBox = new Container(
      margin: new EdgeInsets.only(left: 10.0,right: 10.0),
      child: new SizedBox(
        height: 220.0,
          child: card,
      ),
    );
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('My profile'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset('images/index.png',
            fit: BoxFit.cover
            ),
            sizedBox
          ],
        )
      ),
    );
  }

}
