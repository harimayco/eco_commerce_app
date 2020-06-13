import 'dart:math';
// import 'package:eco_commerce_app/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ProductListTileDynamic extends StatefulWidget {
  final List<String> arguements;
  ProductListTileDynamic({this.arguements});

  @override
  _ProductListTileDynamicState createState() => _ProductListTileDynamicState();
}

class _ProductListTileDynamicState extends State<ProductListTileDynamic> {
  String image;
  String name;
  String desc;
  String price;
  var images = [
    "assets/images/papers.jpg",
    "assets/images/mugs.jpg",
    "assets/images/cups.jpg",
    "assets/images/pencils.jpg",
    "assets/images/pens.jpg",
    "assets/images/erasers.jpg",
    "assets/images/rulers.jpg",
    "assets/images/spoons.jpg",
    "assets/images/picture_frames.jpg",
    "assets/images/calendars.jpg",
    "assets/images/mousepads.jpg",
  ];
  String getImage() {
    final _random = new Random();
    var element = images[_random.nextInt(images.length)];
    return element;
  }

  @override
  void initState() {
    super.initState();
    image = widget.arguements[0];
    name = widget.arguements[1];
    desc = widget.arguements[2];
    price = widget.arguements[3].toString();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 10, 17, 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: FlatButton(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          onPressed: () {
            print('card');
            // Navigator.pushNamed(context, LoginRoute);
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: Color(0xFFFFFFFF),
          child: SizedBox(
            height: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      width: height * 0.16,
                      height: height * 0.16,
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 15),
                      child: Container(
                        width: width * 0.45,
                        child: Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF004445),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: SizedBox(
                        width: width * 0.435,
                        child: Text(
                          desc,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF7A7A7A),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.514,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              child: Text(
                                ' ₹$price',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF004445),
                                ),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                icon: Icon(LineAwesomeIcons.bookmark_o),
                                onPressed: () {
                                  print('heart');
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
