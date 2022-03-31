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

class Masrof extends StatelessWidget {

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
        title: Text('المصروفات ',style: GoogleFonts.cairo(color: Colors.black),),),
      body: Stack(
        children: [
          Elwave(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GetBuilder<MasrofController>(
              init: MasrofController(),
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
                       controller.name = value;
                      },
                      decoration: InputDecoration(
                          labelText: 'اسم المصروف ',
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
                          labelText: 'تفاصيل المصروف ',
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
                      controller: controller.mycontroller4,
                      keyboardType: TextInputType.number,
                      onChanged: ( value)
                      {
                        controller.price = value;
                      },
                      decoration: InputDecoration(

                          labelText: ' قيمة المصروف ',
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

                    Container(
                      child: MaterialButton(
                        onPressed: ()
                        {
                            controller.addMasrof();
                            controller.clearText();
                            Get.defaultDialog(
                              title: 'تمت الاضافة بنجاح',
                              titleStyle: GoogleFonts.cairo(fontSize: 15),
                              middleText: 'تمت اضافه المصروف بنجاح',
                              middleTextStyle: GoogleFonts.cairo(fontSize: 20),

                            );
                        },
                        child: Text('اضافة المصروف ',style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
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
