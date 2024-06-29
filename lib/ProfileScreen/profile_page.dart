import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white70,
          ),
          child: Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/images/leo.jpg'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.black,
                  ),
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
