import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yeti_yatra/RideDetailsScreen/ride_details_page.dart';

import 'Widget/search_result_list.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const Text(
                      'Search Results',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RideDetailsPage(
                                        searchResultPerson:
                                            searchResultModelList[index],
                                      ),
                                    ),
                                  );
                                },
                                child: searchResultModelList[index]);
                          },
                          separatorBuilder: (BuildContext context, index) {
                            return SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: searchResultModelList.length),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
