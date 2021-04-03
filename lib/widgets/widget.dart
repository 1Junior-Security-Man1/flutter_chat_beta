import 'package:flutter/material.dart';
import 'package:flutter_chat_beta/helper/constants.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Text(
      'Chat',
      style: TextStyle(fontSize: 25),
    ),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  );
}

TextStyle simpleTextFieldStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 20,
  );
}

Drawer drawerStyle() {
  return Drawer(
    child: ListView(
      children: <Widget>[
        Container(
          color: Color(0xff282727),
          child: DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color(0xff6495ed),
                  const Color(0xff1e90ff),
                  const Color(0xff00bfff),
                ]),
                //borderRadius: BorderRadius.circular(40),
              ),
              //margin: EdgeInsets.symmetric(horizontal: 15),
              accountName: Container(
                alignment: Alignment.bottomLeft,
                child: Text(Constants.myName, style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              accountEmail:  Text("home@dartflutter.ru"),
              currentAccountPicture: Container(
                margin: EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.network(
                            'https://www.zastavki.com/pictures/1920x1200/2011/Animals_Cats_Cat_in_the_glasses_032992_.jpg')
                        .image,
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Color(0xff282727),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 10),
            title: Text("Баланс", style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            leading: Icon(Icons.monetization_on, color: Colors.white, size: 28),
            // onTap: () {
            // Navigator.of(context).push(
            // MaterialPageRoute(
            // // Временно
            // builder: (context) => AuthorrizationPageState()),
            // );
            // }
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          title: Text("О себе", style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          leading: Icon(Icons.account_box, color: Colors.white, size: 28),
          // onTap: () {
          // Navigator.of(context).push(
          // MaterialPageRoute(
          // builder: (context) => AboutMe()),
          // );
          // }
        ),
        ListTile(
            title: Text("Настройки", style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            leading: Icon(Icons.settings, color: Colors.white, size: 28),
            contentPadding: EdgeInsets.only(left: 10),
            onTap: () {}),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          title: Text("Выход", style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          leading: Icon(Icons.exit_to_app, color: Colors.white, size: 28,),
          // onTap: () {
          // Navigator.of(context).push(
          // MaterialPageRoute(
          // builder: (context) => AuthorrizationPageState()),
          // );
          // }
        ),
      ],
    ),
  );
}