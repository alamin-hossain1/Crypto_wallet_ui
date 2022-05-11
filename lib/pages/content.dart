import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_crypto/pages/wallet.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(250, 40),
                      bottomRight: Radius.elliptical(250, 40))),
              height: 200,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Coin Caves",
                  style: GoogleFonts.varelaRound(
                      fontSize: 60, color: Colors.white),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0, -45, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        tabBar(CryptoFontIcons.BTC, "Buy"),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: VerticalDivider(
                            thickness: 2,
                          ),
                        ),
                        tabBar(Icons.money, "Sell"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            listView(CryptoFontIcons.BTC, "BTC 0.2365", " MYR 981256.00",
                Colors.blue),
            listView(CryptoFontIcons.ETH, "ETH 0.8978", " MYR 653487.00",
                Colors.yellow),
            listView(CryptoFontIcons.DOGE, "DOGE 0.9845", " MYR 670987.00",
                Colors.purple),
            listView(
                CryptoFontIcons.XRP, "XRP 0.5645", " MYR 12875600", Colors.red),
            listView(CryptoFontIcons.USDT, "USDT 0.2365", " MYR 981256.00",
                Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget listView(
    IconData data, String title, String subtitle, Color backgroundColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 20, 30, 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.white,
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          child: Icon(data),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.stacked_line_chart),
            Icon(Icons.info_outline_rounded)
          ],
        ),
      ),
    ),
  );
}

Widget tabBar(IconData data, String title) {
  return Expanded(
    child: Column(
      children: [Icon(data), Text(title)],
    ),
  );
}
