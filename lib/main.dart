import 'package:flutter/material.dart';
import 'package:safefail_project/secondpremiumpage.dart';
import 'cards.dart';
import 'listtiles.dart';
void main() {
  runApp(TruecallerPremiumPage());
}

class TruecallerPremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Truecaller Premium',
      home: Scaffold(
          body: SafeArea(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center
              ,
              children: [
                Padding(padding: EdgeInsets.all(16),
                child:Text("Choose a Plan",textAlign: TextAlign.center,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
                PremiumPromoCard(),
                SizedBox(height: 15,),
                Center(child: Text("Discover features and compare plans",style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),),
                Secondpremiumpage(),
                SizedBox(height: 7,),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Upgrade Now", // <-- Your button label
                    style: TextStyle(
                      color: Colors.blueAccent, // Customize color
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                ,
                SizedBox(height: 7,),
                Listtiles(),
              ],
            ),
          )),
      ),);
  }
}