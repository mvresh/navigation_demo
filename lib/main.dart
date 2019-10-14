import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    initialRoute: '/',
    routes: {
      '/': (context) => LoginPage(),
      '/second': (context) => HomePage(),
      '/third': (context) => SettingsPage(),
      '/fourth': (context) => ProfilePage(),
    },
  ));
}
// TASK - Create navigation paths and screens as shown in the video using namedParameters
// LoginPage - First Page
// HomePage - Second Page
// Settings - Third Page which has two buttons 'logout' which takes you to LoginPage and 'Update Profile' which takes you to profile page
// ProfilePage - Fourth Page which has button as center to take you back to settings page

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: RaisedButton(
          child: Text('Home'),
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
          child: Text('Settings'),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Logout'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
              child: Text('Update Profile'),
            )
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Profile"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
          child: Text('Settings'),
        ),
      ),
    );
  }
}

