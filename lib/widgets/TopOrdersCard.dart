import 'package:flutter/material.dart';

class TopOrdersCard extends StatelessWidget {
  const TopOrdersCard({
    Key key,
    @required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Column(
        // whay this line didnt work
//                        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 290,
            ),
            child: Text(
              'TOP ORDERS',
              style: TextStyle(color: mainColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: kElevationToShadow[3],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                        ),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'User name',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '\n My view Is to Creat great things',
                                style: TextStyle(color: Colors.grey)),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 16,
                        ),
                        child: Text(
                          'Complited',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.star,
                          color: Color(0xffFFC107),
                        ),
                      ),
                      Text('4.9'),
                      Text(
                        '(45)',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      Text('4.9'),
                      Text(
                        '(hours)',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.monetization_on,
                        color: Colors.grey,
                      ),
                      Text('4.9'),
                      Text(
                        '&',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
