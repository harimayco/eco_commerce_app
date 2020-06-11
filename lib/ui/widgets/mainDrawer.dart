import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                DrawerHeader(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color(0xFFC4C4C4),
                      child: Text(
                        'AM',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFE0E0E0),
                            fontSize: 22),
                      ),
                    ),
                    margin: EdgeInsets.all(0),
                    accountName: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                      child: Text(
                        "Hello, Akshay",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF000000),
                            fontSize: 22),
                      ),
                    ),
                    accountEmail: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text(
                        "akshaymaurya3006@gmail.com",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF000000),
                            fontSize: 12),
                      ),
                    ),
                    decoration: BoxDecoration(color: Color(0xFFE0E0E0)),
                  ),
                ),
                Container(
                  color: Color(0xFFE0E0E0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                        child: ListTile(
                          title: Text(
                            'Home',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Categories',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Wishlist',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 20),
                        child: Container(
                          color: Color(0xFF929292).withOpacity(0.53),
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Terms and Conditions',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Contact us',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'About us',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 20),
                        child: Container(
                          color: Color(0xFF929292).withOpacity(0.53),
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Help',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Share with friends',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Rate us',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 20),
                        child: Container(
                          color: Color(0xFF929292).withOpacity(0.53),
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          title: Text(
                            'Logout',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                LineAwesomeIcons.facebook,
                                size: 36,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                LineAwesomeIcons.instagram,
                                size: 36,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                LineAwesomeIcons.linkedin_square,
                                size: 36,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                LineAwesomeIcons.twitter_square,
                                size: 36,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ListTile(
                          dense: true,
                          title: Text(
                            'All rights reserved XYZ Pvt Ltd.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF000000),
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
