import 'package:flutter/material.dart';

class SearchResultModel extends StatelessWidget {
  String profilePicture;
  String driver;
  String phoneNumber;
  bool isHistoryPage;
  bool? isCompleted;

  SearchResultModel({
    super.key,
    required this.profilePicture,
    required this.driver,
    required this.phoneNumber,
    required this.isCompleted,
    required this.isHistoryPage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
      height: 310,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 3,
                        color: Colors.blue,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          size: 30,
                          Icons.place,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Leaving From'),
                      Text(
                        'New Baneshwor, Kathmandu',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Going To'),
                      Text(
                        'LakeSide-7 Pokhara',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('21st June'),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.people,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('3'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: NetworkImage(profilePicture),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              driver,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(phoneNumber),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rating'),
                      Container(
                        child: isHistoryPage
                            ? Container(
                                decoration: isCompleted!
                                    ? BoxDecoration(
                                        color: Colors.green,
                                      )
                                    : BoxDecoration(
                                        color: Colors.red,
                                      ),
                                child: isCompleted!
                                    ? Text(
                                        'Completed',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Text(
                                        'Cancelled',
                                        style: TextStyle(color: Colors.white),
                                      ),
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
