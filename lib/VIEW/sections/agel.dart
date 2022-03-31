import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mahfaza/CONTROLLER/const.dart';
import 'package:mahfaza/CONTROLLER/textform_controller.dart';
import 'package:mahfaza/VIEW/component.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../CONTROLLER/const.dart';
import '../../CONTROLLER/const.dart';

class Agel extends StatelessWidget {

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
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('فاتورة بالاجل',style: GoogleFonts.cairo(color: Colors.black),),),
      body: Stack(
        children: [
          Elwave(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GetBuilder<TextController>(
              init: TextController(),
              builder: (controller) {
                return ListView(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.date_range,size: 40,color: Colors.redAccent,),
                        SizedBox(
                          width: 20,
                        ),
                        Text('${controller.dateTime}',style: GoogleFonts.cairo(fontSize: 20),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.mycontroller4,
                      onChanged: (String? value)
                      {
                        controller.name = value;

                      },
                      decoration: InputDecoration(
                          labelText: 'الاسم ',
                          labelStyle: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.mycontroller5,
                      onChanged: (String value)
                      {
                        controller.phone = value ;
                      },
                      decoration: InputDecoration(
                          labelText: 'رقم الموبايل ',
                          labelStyle: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.mycontroller6,
                      onChanged: (String? value)
                      {
                        controller.address = value as ImageProvider<Object>?;
                      },
                      decoration: InputDecoration(
                          labelText: 'العنوان ',
                          labelStyle: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.mycontroller7,
                      onChanged: (String? value)
                      {
                           controller.detail = value;
                      },
                      maxLines: 10,
                      decoration: InputDecoration(
                          labelText: 'تفاصيل الفاتورة ',
                          labelStyle: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller:  controller.mycontroller1,
                      keyboardType: TextInputType.number,
                      onChanged: ( value)
                      {
                       controller.koli = value as double;
                      },
                      decoration: InputDecoration(

                          labelText: ' المبلغ الكلي ',
                          labelStyle: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.mycontroller2,
                      keyboardType: TextInputType.number,
                      onChanged: (value)
                      {
                       controller.madfoa = value as double ;
                      },
                      decoration: InputDecoration(
                          labelText: ' المبلغ المدفوع ',
                          labelStyle: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('${controller.baki} ',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(width: 20,),
                       Container(
                         child: MaterialButton(
                           onPressed: ()
                           {
                             controller.getSum();
                           },
                           child: Text('المبلغ المتبقي',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                         ),
                         decoration: BoxDecoration(
                           color: Colors.deepPurpleAccent,
                           borderRadius: BorderRadius.circular(12),
                         ),

                       ),
                     ],
                   ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: ()
                        {
                            controller.addAgel();
                            controller.clearText();
                            Get.defaultDialog(
                              title: 'تمت الاضافة بنجاح',
                              titleStyle: GoogleFonts.cairo(fontSize: 15),
                              middleText: '   تمت اضافة ${controller.name}  بنجاح و متبقي عليه  ${controller.baki}   جنيه ',
                              middleTextStyle: GoogleFonts.cairo(fontSize: 20),

                            );

                        },
                        child: Text('اضافة الفاتورة',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                      ),
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
