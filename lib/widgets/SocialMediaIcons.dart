import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Nursy Social Media',
            style: TextStyle(color: Color(0xff757576)),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xff6F7384),
            child: Icon(
              FontAwesomeIcons.facebookF,
              size: 20,
              color: Color(0xffE8EAF3),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xff6F7384),
            child: Icon(
              FontAwesomeIcons.googlePlusG,
              size: 20,
              color: Color(0xffE8EAF3),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xff6F7384),
            child: Icon(
              FontAwesomeIcons.linkedin,
              size: 20,
              color: Color(0xffE8EAF3),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xff6F7384),
            child: Icon(
              FontAwesomeIcons.twitter,
              size: 20,
              color: Color(0xffE8EAF3),
            ),
          ),
        ),
      ],
    );
  }
}
