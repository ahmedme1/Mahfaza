import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahfaza/VIEW/component.dart';
import 'package:mahfaza/VIEW/sections/agel.dart';
import 'package:mahfaza/VIEW/sections/box.dart';
import 'package:mahfaza/VIEW/sections/masrof.dart';
import 'package:mahfaza/VIEW/sections/montag.dart';
import 'package:mahfaza/VIEW/sections/nakdi.dart';
import 'package:mahfaza/VIEW/sections/tkarer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text('المحفظة',style: GoogleFonts.cairo(color: Colors.grey.shade600,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: Stack(
        children: [
          Elwave(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Custom_Container(icon: Icons.add, text: 'اضافة المنتجات',onTap: ()
                    {
                      Get.to(Montag());
                    },),
                    SizedBox(width: 15,),
                    Custom_Container(icon: Icons.move_to_inbox, text: 'الصندوق ',onTap: ()
                    {
                      Get.to(Box());
                    },),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Custom_Container(icon: Icons.menu, text: ' فاتورة بالاجل',onTap: ()
                    {
                      Get.to(Agel());
                    },),
                    SizedBox(width: 15,),
                    Custom_Container(icon: Icons.attach_money, text: 'فاتورة نقدا ',onTap: ()
                    {
                      Get.to(Nakdi());
                    },),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Custom_Container(icon: Icons.picture_as_pdf_outlined, text: 'التقارير',onTap: ()
                    {
                      Get.to(Tkarer());
                    },),
                    SizedBox(width: 15,),
                    Custom_Container(icon: Icons.money_outlined, text: 'المصروفات ',onTap: ()
                    {
                      Get.to(Masrof());
                    },),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
