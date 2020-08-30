import 'package:flutter/material.dart';

class FirstParghraph extends StatelessWidget {
  const FirstParghraph({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        '''  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ''',
        style: TextStyle(
          color: Colors.grey,
          height: 1.5,
        ),
      ),
    );
  }
}
