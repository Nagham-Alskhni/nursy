import 'package:flutter/material.dart';

class UserStatues extends StatelessWidget {
  const UserStatues({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://ps.w.org/wp-user-avatar/assets/icon-256x256.png?rev=1755722'),
                  radius: 20.0,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'User name',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: '\n My view Is to Creat great things',
                          style: TextStyle(color: Colors.grey)),
                    ]),
                  )),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
