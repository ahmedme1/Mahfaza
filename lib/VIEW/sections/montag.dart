import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mahfaza/CONTROLLER/textform_controller.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../component.dart';

class Montag extends StatelessWidget {

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
        title: Text(' اضافة منتج',style: GoogleFonts.cairo(color: Colors.black),),),
      body: Stack(
        children: [
          Elwave(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GetBuilder<MontagController>(
              init: MontagController(),
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
                        Text('${
                            DateFormat.yMEd()
                                .add_jms()
                                .format(controller.dateTime)
                        }',style: GoogleFonts.cairo(fontSize: 20),),
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
                          labelText: 'اسم المنتج ',
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
                      onChanged: (String? value)
                      {
                       controller.detail = value;
                      },
                      maxLines: 10,
                      decoration: InputDecoration(
                          labelText: 'تفاصيل المنتج (اختياري) ',
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
                        controller.kemya = value as double;
                      },
                      decoration: InputDecoration(

                          labelText: ' الكمية  ',
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
                        controller.price = value as double ;
                      },
                      decoration: InputDecoration(
                          labelText: ' السعر   ',
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
                        Text('${controller.sum}',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(width: 20,),
                        Container(
                          child: MaterialButton(
                            onPressed: ()
                            {
                              controller.getSum();
                            },
                            child: Text('سعر البضاعة  ',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
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
                          controller.addMontag();
                          controller.clearText();
                          Get.defaultDialog(
                            title: 'تمت الاضافة بنجاح',
                            titleStyle: GoogleFonts.cairo(fontSize: 15),
                            middleText: 'تمت اضافه المنتج بنجاح',
                            middleTextStyle: GoogleFonts.cairo(fontSize: 20),

                          );
                        },
                        child: Text('اضافة المنتج',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
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
