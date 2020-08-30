import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nursy/widgets/FirstParagraph.dart';
import 'package:nursy/widgets/OrderButton.dart';
import 'package:nursy/widgets/SecondPargraph.dart';
import 'package:nursy/widgets/SocialMediaIcons.dart';
import 'package:nursy/widgets/TopOrdersCard.dart';
import 'package:nursy/widgets/UserDailyProjectCard.dart';
import 'package:nursy/widgets/MainDrawer.dart';
import 'package:nursy/widgets/UserStatus.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:nursy/widgets/card.dart';
import 'package:nursy/models/Charts.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Color mainColor = Color(0xffF4465E);
  List<dynamic> listViewExample = [
    'user name',
    'hours work',
    'icon value',
    'graph'
    'test',
  ];
  List<charts.Series<Tasks, String>> _seriesPieData;
  _generateData() {
    var pieData = [
      Tasks(task: 'work', chartsValue: 35.8, color: Colors.blue),
      Tasks(task: 'nursy', chartsValue: 30.8, color: Colors.blue),
      Tasks(task: 'medication', chartsValue: 15.8, color: Colors.blue),
      Tasks(task: 'time', chartsValue: 40.8, color: Colors.blue),
    ];

    _seriesPieData.add(charts.Series(
      data: pieData,
      domainFn: (Tasks tasks, _) => tasks.task,
      measureFn: (Tasks tasks, _) => tasks.chartsValue,
      colorFn: (Tasks tasks, _) => charts.ColorUtil.fromDartColor(tasks.color),
      id: 'Daily Task',
    ));
  }

  @override
  void initeState() {
    super.initState();
    _seriesPieData = List<charts.Series<Tasks, String>>(); // what that?
    _generateData();
  }

  Icon actionButton = Icon(Icons.search);
  Icon actionButtonPerson = Icon(Icons.person);
  Color _iconColor = Colors.white;

//  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
//      key: _scaffoldKey, // whay i did this???
//
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF4465E),
        actions: [
          IconButton(
            icon: actionButton,
            color: _iconColor,
            onPressed: () {
              setState(() {
                if (_iconColor == Colors.white) {
                  _iconColor = Colors.blue;
                } else {
                  _iconColor = Colors.white;
                }
              });
            },
          ),
          IconButton(
            icon: actionButtonPerson,
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // not understanding this container
            Container(
              color: Color(0xffF4465E),
              height: size.height / 4,
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusedCard(),
                        ReusedCard(),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    OrderButton(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Text(
                        'last Orders',
                        style: TextStyle(
                            color: Color(0xffE54B60),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserDailyProjectCard(),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserDailyProjectCard(),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserDailyProjectCard(),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserDailyProjectCard(),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 270, top: 20),
                        child: Text(
                          'Latest Narses',
                          style: TextStyle(
                              color: mainColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserStatues(),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserStatues(),
                    Divider(
                      color: Colors.grey,
                    ),
                    UserStatues(),
                    Divider(
                      color: Colors.grey,
                    ),
                    TopOrdersCard(mainColor: mainColor),
                    Divider(
                      color: Colors.grey,
                    ),
                    Center(
                      child: Text(
                        'About Us',
                        style: TextStyle(color: mainColor),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        'We are Nursy',
                        style: TextStyle(
                          letterSpacing: 1.0,
                          wordSpacing: 5,
                          fontSize: 25,
//                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 220,
                          child: Column(
                            children: [
                              FirstParghraph(),
                              SizedBox(height: 15),
                              SecondPargraph(),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        NurseImage(),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(color: Color(0xffE8EAF3)),
                            child: SocialMediaIcons(),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(color: Color(0xffA8AAB9)),
                            child: Center(
                              child: Text(
                                'Copyright © 2020, Nursy',
                                style: TextStyle(color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}

class NurseImage extends StatelessWidget {
  const NurseImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 230, right: 15),
      child: Container(
//                          decoration: BoxDecoration(
//                            image: DecorationImage(
//                              image: NetworkImage(
//                                  'https://tm-women.org/wp-content/uploads/2017/07/nurse-791x1024.jpg'),
//                            ),
//                          ),
        child: Image(
          image: NetworkImage(
            'https://tm-women.org/wp-content/uploads/2017/07/nurse-791x1024.jpg',
          ),
          fit: BoxFit.cover,
          width: 150,
          height: 280,
        ),
      ),
    );
  }
}
