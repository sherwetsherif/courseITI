import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isShowed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close, color: Color(0xa75db097)),
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff5db075),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: _isShowed,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    suffixIcon: TextButton(
                      onPressed: () {
                        setState(() {
                          _isShowed = !_isShowed;
                        });
                      },
                      child: Text(
                        _isShowed ? 'Show' : 'Hide',
                        style: TextStyle(color: Color(0xff4caf50)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  Expanded(
                    child: Text(
                      'I would like to receive your newsletter and other promotional information.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9e9e9e)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 43),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff4caf50)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4caf50)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
