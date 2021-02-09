import 'package:flutter/material.dart';
import 'package:platinumbetss/sidebar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _buttonFavorite = false;
  bool _buttonLast = false;
  double _sizeFavorite = 500.0;
  double _sizeLast = 500.0;
  List<String> _lista = [
    "Atlanta Hawks",
    "Milwaukee Bucks",
    "Brooklyn Nets",
    "Los Angeles Lakers",
    "Golden State Warriors",
    "Philadelphia 76ers",
    "Miami Heat",
    "Dallas Mavericks",
    "Houston Rockets"
  ];

  List<String> _listadois = [
    "Jogo",
    "Jogo",
    "Jogo",
    "Jogo",
    "Jogo",
    "Jogo",
    "Jogo",
    "Jogo",
    "Jogo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.menu, size: 32,),
          onPressed: () {},
        ),*/
        title: Text("Dashboard"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, size: 32),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Sidebar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/imagens/comemorar.jpg",
                  fit: BoxFit.cover,
                  height: 400.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Bem-vindo\nnovamente,\nusuário",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontWeight: FontWeight.normal,
                          shadows: [
                            Shadow(
                              offset: Offset(0.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black38,
                            )
                          ]),
                    ),
                    Divider(
                      thickness: 15,
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: RaisedButton(
                          color: Colors.teal[200],
                          onPressed: () {},
                          child: Text("APOSTA RÁPIDA")),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                AppBar(
                  title: Text("Times Favoritos"),
                  centerTitle: true,
                ),
                Container(
                  height: _sizeFavorite,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _lista.length,
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                      itemBuilder: (context, index) {
                        return Column(children: [
                          ListTile(
                              title: Text(_lista[index]),
                              subtitle: Text("adiado"),
                              leading: Icon(Icons.account_box_rounded),
                              trailing: IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () {

                                },
                              )),
                          Divider()
                        ]);
                      }),
                ),
                SizedBox(
                  height: 40.0,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.teal[200],
                    child: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      _buttonFavorite = true;
                    },
                  ),
                )
              ],
            ),
            Column(
              children: [
                AppBar(
                  title: Text("Últimas apostas"),
                  centerTitle: true,
                ),
                Container(
                  height: _sizeLast,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _lista.length,
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                      itemBuilder: (context, index) {
                        return Column(children: [
                          ListTile(
                              title: Text(_listadois[index]),
                              subtitle: Text("adiado"),
                              trailing: Text("acerto")),
                          Divider()
                        ]);
                      }),
                ),
                SizedBox(
                  height: 40.0,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.teal[200],
                    child: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
