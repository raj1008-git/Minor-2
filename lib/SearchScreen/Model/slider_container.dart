import 'package:flutter/cupertino.dart';

class SliderContainer extends StatelessWidget {
  String image;
  SliderContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          )),
    );
  }
}
