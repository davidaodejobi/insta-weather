import 'package:flutter/material.dart';

import 'constants.dart';

class OverCast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      width: double.infinity,
      decoration: kRainDecoration,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 100,
            child: Overcast(
              width: size.width / 5,
              height: size.height / 5,
              color: Color(0xFF737175),
            ),
          ),
          Positioned(
            top: 0,
            right: 20,
            child: Overcast(
              width: size.width / 9,
              height: size.height / 9,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Positioned(
            top: 80,
            right: 15,
            child: Overcast(
              width: size.width / 6,
              height: size.height / 6,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Positioned(
            top: 120,
            right: 70,
            child: Overcast(
              width: size.width / 3,
              height: size.height / 3,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Positioned(
            top: 20,
            right: 180,
            child: Overcast(
              width: size.width / 11,
              height: size.height / 11,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Positioned(
            top: 150,
            right: 200,
            child: Overcast(
              width: size.width / 6,
              height: size.height / 6,
              color: Color(0xFF737175),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 200,
            child: Overcast(
              width: size.width / 5,
              height: size.height / 5,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 80,
            child: Overcast(
              width: size.width / 5,
              height: size.height / 5,
              color: Color(0xFF737175),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 30,
            child: Text('Agbarigidoma',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 15,
                  color: Colors.grey,
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Icon(Icons.grain_rounded)),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    'rain',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                Container(
                  child: Text(
                    '20°C',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Overcast extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  Overcast({required this.height, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 4,
        ),
      ),
    );
  }
}
