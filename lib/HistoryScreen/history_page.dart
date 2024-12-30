import 'package:flutter/material.dart';

import '../SearchScreen/Model/search_result_model.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        toolbarHeight: 90,
        title: Text(
          'Ride History',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text(
                        'Ride Taken',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      onPressed: () {},
                      child: const Text(
                        'Ride Given',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return historyList[index];
                  },
                  separatorBuilder: (BuildContext context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: historyList.length),
            ],
          ),
        ),
      ),
    );
  }
}

List<SearchResultModel> historyList = [
  SearchResultModel(
    profilePicture:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSsiD8jTk4t-fkPNIukUGw1sLZp9bsmbbsssCCzEsCnka_a7zWp',
    driver: 'Jack',
    phoneNumber: '123456789',
    isCompleted: true,
    isHistoryPage: true,
  ),
  SearchResultModel(
      isHistoryPage: true,
      isCompleted: false,
      profilePicture:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQgByBT5IiAT_a2x9pUVb4VMoOrlzHH7Jrzj-HB5jzHlR4lNLMS',
      driver: 'Rose',
      phoneNumber: '123334456789'),
  SearchResultModel(
      isHistoryPage: true,
      isCompleted: true,
      profilePicture:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQgByBT5IiAT_a2x9pUVb4VMoOrlzHH7Jrzj-HB5jzHlR4lNLMS',
      driver: 'Rose',
      phoneNumber: '123334456789'),
];
