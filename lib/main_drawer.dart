import 'dart:io';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text('More Options',
                style: TextStyle(
                    fontFamily: 'baloo',
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Color.fromARGB(255, 243, 117, 33))),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text('Meals',
                style: TextStyle(
                  fontFamily: 'baloo',
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                )),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text('Filters',
                style: TextStyle(
                  fontFamily: 'baloo',
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                )),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
