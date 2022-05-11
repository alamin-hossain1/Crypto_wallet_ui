import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_crypto/pages/content.dart';
import 'package:wallet_crypto/pages/profile.dart';
import 'package:wallet_crypto/pages/wallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Widget> widgets = [Content(), wallet(), profile()];
  List<Widget> widgets = [Content(), wallet(), profile()];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(1.0),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: new Icon(Icons.account_balance_wallet), label: "Wallet"),
            BottomNavigationBarItem(
                icon: new Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: widgets[selectedIndex]

        // wallet(),
        );
  }
}
