import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pokemon_app/pokemon.dart';
import 'package:pokemon_app/pokemondetail.dart';


main() => runApp(MaterialApp(
  title: "Poke App",
  home: HomePage(),
    debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  var url = "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&ved=2ahUKEwjku-my1szeAhUKWCsKHeC6Dp4QFjABegQIBBAB&url=https%3A%2F%2Fgithub.com%2FBiuni%2FPokemonGO-Pokedex%2Fblob%2Fmaster%2Fpokedex.json&usg=AOvVaw2eFfu9FhnnCPjuhE35E1pw";
  PokeHub pokeHub;

  @override
  void initState(){
    super.initState();

    fetchData();

  }

  fetchData() async {
  var res= await http.get(url);
  var decodedJson = jsonDecode(res.body);
  pokeHub = PokeHub.fromJson(decodedJson);
  print(pokeHub.toJson());
  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title: Text("Poke App"),
      backgroundColor: Colors.red,
    ),

     body: pokeHub==null
      ? Center(
          child: CircularProgressIndicator(),
     )
     : GridView.count(
       crossAxisCount: 2,
       children: pokeHub.pokemon
           .map((poke) => Padding(
             //padding: const EdgeInsets.all(2.0),
             //child: InkWell(
               //onTap: (){
                 //Navigator.push(context, MaterialPageRoute(
                     //builder: (context)=>PokeDetail(
                   //pokemon:poke,
                     //)));},

               child: Card(
                 elevation: 3.0,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Container(
                       height: 100.0,
                       width: 100.0,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage(poke.img))),
                     ),
                     Text(
                       poke.name,
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,),
                     )
                   ],
                 ),
               ),
             )).toList(),
           ),


      drawer: Drawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child: Icon(Icons.refresh),),
    );
  }
}
