import 'package:flutter/material.dart';

class MySliverAppBarScreen extends StatefulWidget {
  @override
  _MySliverAppBarScreenState createState() => _MySliverAppBarScreenState();
}

class _MySliverAppBarScreenState extends State<MySliverAppBarScreen> {

  List<String> listSoccerPlayers;

  @override
  Widget build(BuildContext context) {

    listSoccerPlayers = [];
    listSoccerPlayers.add("Cristiano Ronaldo");
    listSoccerPlayers.add("Lionel Messi");
    listSoccerPlayers.add("Robert Lewandowski");
    listSoccerPlayers.add("Neymar Jr.");
    listSoccerPlayers.add("Kylian Mbappé");
    listSoccerPlayers.add("Mohamed Salah");
    listSoccerPlayers.add("Sadio Mane");
    listSoccerPlayers.add("Kevin de Brune");
    listSoccerPlayers.add("Antoine Griezmann");
    listSoccerPlayers.add("Sergio Ramos");
    listSoccerPlayers.add("Luis Surez");

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            elevation: 50,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Soccer Players",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )),
                background: Image.network(
                  "https://wallpapercave.com/wp/wp139791.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Column(
                    children: [
                      ListTile(
                        tileColor: Colors.white,
                        title: Center(
                          child: Text(listSoccerPlayers[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 40,
                                  color: Colors.green) //TextStyle
                          ), //Text
                        ), //Center
                      ),
                      Divider(height: 3,)
                    ],
                  ), //ListTile
              childCount: 11,
            ), //SliverChildBuildDelegate
          ),
        ],
      ),
    );
  }
}
