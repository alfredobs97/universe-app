import 'package:flutter/material.dart';

class PlanetDetail extends StatelessWidget {
  final String name;
  final String location;
  final String urlImage;
  final int number;

  const PlanetDetail(
      {Key key, this.name, this.location, this.urlImage, this.number})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.blueAccent),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  child: Hero(
                    tag: this.name,
                    child: Material(
                      color: Colors.transparent,
                      child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            top: -40,
                            left: 160,
                            child: Container(
                              width: 200,
                              height: 200,
                              child: Image.network(this.urlImage,
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Text(this.number.toString(),
                                style: TextStyle(
                                    fontSize: 180,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF99E8E8EA))),
                          ),
                          Positioned(
                            top: 180,
                            left: 30,
                            child: Text(
                              this.name,
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 230,
                            left: 30,
                            child: Text(
                              this.location,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(color: Colors.grey),
                Text(
                    "Aquí va la descripción de cada planeta, utilizando alguna API. El texto será mas largo y con el singlescrollview nos permitira desplazarnos por la pantalla"),
                Divider(color: Colors.grey),
                Text(
                  'Galeria',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 250,
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/NASA_Mars_Rover.jpg/1200px-NASA_Mars_Rover.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
