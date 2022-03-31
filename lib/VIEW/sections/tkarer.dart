import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahfaza/VIEW/component.dart';
import 'package:mahfaza/VIEW/sec_tkarer/agel.dart';
import 'package:mahfaza/VIEW/sec_tkarer/box.dart';
import 'package:mahfaza/VIEW/sec_tkarer/nakdi.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../sec_tkarer/masrof.dart';
import '../sec_tkarer/montag.dart';

class Tkarer extends StatelessWidget {
  const Tkarer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: ()
          {
            Get.back();
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('التقارير',style: GoogleFonts.cairo(color: Colors.black),),),
      body: Stack(
        children: [
          WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Colors.red, Color(0xEEF44336)],
                  [Colors.red.shade800, Color(0x77E57373)],
                  [Colors.orange, Color(0x66FF9800)],
                  [Colors.yellow, Color(0x55FFEB3B)]

                ],
                heightPercentages: [
                  3,0.23,0.25,0.30
                ],
                durations: [
                  3500,19440,10800,6000
                ],
              ),
              size: Size(600,600)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Cust_Tkarer(text: 'المنتجات', onTap: ()
                {
                  Get.to(Montag());
                }),
                SizedBox(
                  height: 20,
                ),
                Cust_Tkarer(text: 'الفواتير النقدية', onTap: ()
                {
                  Get.to(Nakdi());
                }),
                SizedBox(
                  height: 20,
                ),
                Cust_Tkarer(text: 'الفواتير الاجله', onTap: ()
                {
                  Get.to(AgelT());
                }),
                SizedBox(
                  height: 20,
                ),
                Cust_Tkarer(text: 'المصروفات', onTap: ()
                {
                  Get.to(Masrof());
                }),
                SizedBox(
                  height: 20,
                ),
                Cust_Tkarer(text: 'الصندوق', onTap: ()
                {
                  Get.to(Box());
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
