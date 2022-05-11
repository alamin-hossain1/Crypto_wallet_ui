import 'dart:html';

import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_crypto/pages/content.dart';

Widget wallet() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 40),
                bottomRight: Radius.elliptical(200, 40),
              )),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Wallet",
              style: GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
        Transform(
          transform: Matrix4.translationValues(0, -45, 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    tabBar(Icons.send, "SEND"),
                    VerticalDivider(
                      thickness: 2,
                    ),
                    tabBar(Icons.call_received, "Recived"),
                  ],
                ),
              ),
            ),
          ),
        ),
        Text(
          "Balance",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        listView(CryptoFontIcons.BTC, "BTC 0.00", " MYR 0.00", Colors.yellow),
        listView(CryptoFontIcons.ETH, "ETH 0.00", " MYR 00", Colors.blue),
        listView(CryptoFontIcons.DOGE, "DOGE 0.00", " MYR 0.00", Colors.purple),
        listView(CryptoFontIcons.XRP, "XRP 0.00", " MYR 0.00", Colors.red),
        listView(CryptoFontIcons.USDT, "USDT 0.00", " MYR 00.00", Colors.green),
        listView(Icons.add, "Add Crypto", " Creat wallet to store Crypto",
            Colors.teal),
      ],
    ),
  );
}

Widget listView(
    IconData icon, String title, String subtitle, Color backgroundcolor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25, 2, 25, 9),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.white,
        leading: Container(
          height: double.infinity,
          child: Icon(icon, color: backgroundcolor),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
        ),
      ),
    ),
  );
}
