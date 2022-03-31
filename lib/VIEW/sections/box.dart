import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mahfaza/CONTROLLER/textform_controller.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../component.dart';

class Box extends StatelessWidget {

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
        title: Text('الصندوق ',style: GoogleFonts.cairo(color: Colors.black),),),
      body: Stack(
        children: [
          Elwave(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GetBuilder<BoxController>(
              init: BoxController(),
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
                      controller: controller.mycontroller2,
                      onChanged: (String? value)
                      {
                        controller.price = value;
                      },
                      decoration: InputDecoration(
                          labelText: 'المبلغ المودع ',
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
                      controller: controller.mycontroller3,
                      onChanged: (String? value)
                      {
                          controller.detail = value;
                      },
                      maxLines: 10,
                      decoration: InputDecoration(
                          labelText: 'تفاصيل اضافية ',
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

                    Container(
                      child: MaterialButton(
                        onPressed: ()
                        {
                          controller.addBox();
                          controller.clearText();
                          Get.defaultDialog(
                            title: 'تمت الاضافة بنجاح',
                            titleStyle: GoogleFonts.cairo(fontSize: 15),
                            middleText: '   تمت اضافة مبلغ ${controller.price}  بنجاح  ',
                            middleTextStyle: GoogleFonts.cairo(fontSize: 20),

                          );
                        },
                        child: Text('اضافة المبلغ الى الصندوق ',style: GoogleFonts.cairo(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
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
