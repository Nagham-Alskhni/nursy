import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ReusedCard extends StatelessWidget {
  const ReusedCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: kElevationToShadow[3],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text('complited'),
            ),
            Text(
              'May 2020',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('6 /8 orders'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: CircularPercentIndicator(
                    radius: 25.0,
                    lineWidth: 3.0,
                    percent: 0.4,
                    progressColor: Colors.green,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
