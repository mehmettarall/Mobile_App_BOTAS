import 'package:flutter/material.dart';

import 'home_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isLoading = false;

  Future<void> _signInAnonymously() async {
    setState(() {
      _isLoading = true;
    });

    final user =
        //await Provider.of<Auth>(context, listen: false).signInAnonymously();
        setState(() {
      _isLoading = false;
    });

    //print(user!.uid);
  }

  Future<void> _signInWithGoogle() async {
    setState(() {
      _isLoading = true;
    });

    final user =
        //await Provider.of<Auth>(context, listen: false).signInWithGoogle();
        setState(() {
      _isLoading = false;
    });

    //print(user!.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              //Provider.of<Auth>(context, listen: false).signOut();
              //await FirebaseAuth.instance.signOut();
              print("logout tıklandı");
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Giriş Sayfası",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 30),
            RaisedButton(
              color: Colors.red,
              child: Text("Anonymously Giriş"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
            ),
            RaisedButton.icon(
              icon: Icon(
                Icons.contacts,
                size: 24.0,
              ),
              label: Text("Email - Password Giriş"),
              color: Colors.yellow,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
            ),
            RaisedButton.icon(
              icon: Icon(
                Icons.email,
                size: 24.0,
              ),
              label: Text("Gmail Giriş"),
              color: Colors.greenAccent,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
