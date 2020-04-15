import 'package:flutter/material.dart';
import 'package:primer_video/planet_detail.dart';

class PlanetCard extends StatelessWidget {
  final String name;
  final String location;
  final String urlImage;
  final int number;

  const PlanetCard(
      {Key key, this.name, this.location, this.urlImage, this.number})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PlanetDetail(
                    name: this.name,
                    location: this.location,
                    number: this.number,
                    urlImage: this.urlImage,
                  )),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Hero(
          tag: this.name,
          child: Material(
                      color: Colors.transparent,
                      child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
                  top: -50,
                  left: 30,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.network(this.urlImage, fit: BoxFit.contain),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 120,
                  child: Text(
                    this.number.toString(),
                    style: TextStyle(
                        fontSize: 200,
                        fontWeight: FontWeight.w800,
                        color: Color(0x99E8E8EA)),
                  ),
                ),
                Positioned(
                    top: 150,
                    left: 20,
                    child: Text(
                      this.name,
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  top: 190,
                  left: 20,
                  child: Text(
                    this.location,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
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
