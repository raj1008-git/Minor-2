import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yeti_yatra/SearchScreen/Widget/slider_container_list.dart';
import 'package:yeti_yatra/SearchScreen/search_result.dart';

class SearchPage extends StatelessWidget {
  final VoidCallback onSearchPressed;
  final VoidCallback onSearchPressed2;
  const SearchPage(
      {super.key,
      required this.onSearchPressed,
      required this.onSearchPressed2});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(
              items: sliderContainerList,
              options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                pauseAutoPlayOnTouch: true,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: onSearchPressed,
                          child: TextFormField(
                            enabled: false,
                            decoration:
                                InputDecoration(hintText: 'Leaving From'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: onSearchPressed2,
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(hintText: 'Going To'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Set your Date'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people_alt_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'No. of Passengers'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 15, bottom: 15),
                    //
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchResult(),
                        ),
                      );
                    },
                    color: Colors.blue,
                    child: Text(
                      'Search',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
