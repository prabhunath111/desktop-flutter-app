import 'package:desktop_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameControl = new TextEditingController();
  final TextEditingController _emailControl = new TextEditingController();
  final TextEditingController _passwordControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
      child:
          ListView(padding: EdgeInsets.only(left: 100, right: 100), children: [
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 25.0,
          ),
          child: Text(
            "Create an account",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Card(
          elevation: 3.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Username",
                prefixIcon: Icon(
                  Icons.perm_identity,
                  color: Colors.black,
                ),
                hintStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _usernameControl,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Card(
          elevation: 3.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Email",
                prefixIcon: const Icon(
                  Icons.mail_outline,
                  color: Colors.black,
                ),
                hintStyle: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _emailControl,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Card(
          elevation: 3.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Password",
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                hintStyle: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              obscureText: true,
              maxLines: 1,
              controller: _passwordControl,
            ),
          ),
        ),
        const SizedBox(height: 40.0),
        SizedBox(
          height: 50.0,
          child: RaisedButton(
            child: Text(
              "Register".toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return MyHomePage(title: "Restaurant App UI");
                  },
                ),
              );
            },
            color: Theme.of(context).accentColor,
          ),
        ),
        const SizedBox(height: 10.0),
        Divider(color: Theme.of(context).accentColor),
        const SizedBox(height: 10.0),
      ]),
    );
  }
}
