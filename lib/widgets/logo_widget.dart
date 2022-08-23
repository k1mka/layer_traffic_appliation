import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  static const _logo = 'CryptoBank';
  static const _title = 'Benefit Trade';
  static const _description = 'Risk-free investment, your reliable broker';
  static const _description2 = 'don`t miss your chance!';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                _title,
                style:
                    TextStyle(fontSize: 25, fontFamily: 'PTSansNarrow-Regular'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                _logo,
                style: TextStyle(fontSize: 50, fontFamily: 'BebasNeue-Regular'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              _description,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(
            height: 12,
            thickness: 2,
            indent: 2,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              _description2,
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
