import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  String _pinCode = '';

  void _addDigit(String digit) {
    setState(() {
      if (_pinCode.length < 4) {
        _pinCode += digit;
      }
    });
  }

  void _deleteDigit() {
    setState(() {
      if (_pinCode.length > 0) {
        _pinCode = _pinCode.substring(0, _pinCode.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Hi, it's good to see you again",
              style: TextStyle(
                  color: Color(0xFF25242A),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Provide your pin code for sign in",
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.bottomCenter,
              child: Text(
                _pinCode.padRight(4, '_ '),
                style: TextStyle(fontSize: 75),
              ),
            ),
            // SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              children: [
                for (int i = 1; i <= 9; i++)
                  GestureDetector(
                    onTap: () => _addDigit(i.toString()),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        i.toString(),
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                GestureDetector(
                  onTap: () => _addDigit('0'),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _deleteDigit,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Icon(Icons.backspace),
                  ),
                ),
              ],
            ),
            InkWell(
                child: Container(
              alignment: Alignment.center,
              child: Text(
                "Forgot PIN?",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Color(0xFF1D36D9)),
              ),
            ))
          ],
        ),
      )),
    );
  }
}

// class PinScreen extends StatefulWidget {
//   const PinScreen({super.key});

//   @override
//   _PinScreen createState() => _PinScreenState();

// }


