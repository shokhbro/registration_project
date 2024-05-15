import 'package:flutter/material.dart';

class WelcomeBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome back',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Text(
                'Let\'s Login to Connect your email',
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'name@example.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text('Forget your password?'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text('Don\'t have an account? Sign up here'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Log in'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.apple),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'By continuing, you agree to Loana\'s',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Terms of Use'),
                  ),
                  Text(' & '),
                  TextButton(
                    onPressed: () {},
                    child: Text('Privacy Policy'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
