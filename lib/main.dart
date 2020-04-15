import 'package:flutter/material.dart';
import 'package:primer_video/planet_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter universe',
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.white, size: 40)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _planets = [
    PlanetCard(name: 'Mercurio', location: 'Sistema Solar', number: 1, urlImage: 'https://www.simichildrensdentalgroup.com/wp-content/uploads/sites/13/2017/08/orangeplanet.png',),
    PlanetCard(name: 'Venus', location: 'Sistema Solar', number: 2, urlImage: 'https://img4.wikia.nocookie.net/__cb20130425175412/scribblenauts/images/d/dc/Venus.png',),
    PlanetCard(name: 'Tierra', location: 'Sistema Solar', number: 3, urlImage: 'https://cdn.pixabay.com/photo/2017/02/23/13/34/earth-2092185_640.png',),
    PlanetCard(name: 'Marte', location: 'Sistema Solar', number: 4, urlImage: 'https://cdn.clipart.email/4235a7d0375524cc396e07afe1bb5fe8_mars-public-domain-transparent-png-clipart-free-download-ywd_504-503.png',),
    PlanetCard(name: 'Júpiter', location: 'Sistema Solar', number: 5, urlImage: 'https://www.freepngimg.com/thumb/universe/29214-5-jupiter-clipart.png',),
    PlanetCard(name: 'Saturno', location: 'Sistema Solar', number: 6, urlImage: 'https://i.ya-webdesign.com/images/cartoon-saturn-png-6.png',),
    PlanetCard(name: 'Urano', location: 'Sistema Solar', number: 7, urlImage: 'https://images.vexels.com/media/users/3/152680/isolated/preview/22e162e0d0066ad0881e1ee797574680-icono-de-planeta-urano-by-vexels.png',),
    PlanetCard(name: 'Neptuno', location: 'Sistema Solar', number: 8, urlImage: 'https://images.vexels.com/media/users/3/152570/isolated/preview/425035eea8f0d97015ac66c6763d58e8-icono-de-planeta-neptuno-by-vexels.png',),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF1B50A7), Color(0xFF624084)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.7])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Explorar', style: TextStyle(
                  fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold
                ),),
                Row(
                  children: <Widget>[
                    Text('Sistema Solar', style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300
                    ),),
                    Icon(Icons.keyboard_arrow_down, color: Color(0xFFF06106)),
                  ],
                ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _planets.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:50.0, horizontal: 20),
                      child: _planets[index],
                    );
                  },
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  color: Color(0xFF3F3670),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.language),
                    Icon(Icons.search),
                    Icon(Icons.person_outline)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
