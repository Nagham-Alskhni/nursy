import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: RaisedButton(
        padding: EdgeInsets.all(14),
        color: Color(0xff28A745),
        child: Text(
          'New ORDER',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        onPressed: () {},
      ),
    );
  }
}
