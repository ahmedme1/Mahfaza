import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahfaza/CONTROLLER/textform_controller.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../component.dart';

class Box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BoxTaqController>(
      init: BoxTaqController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Column(
                  children:[
                    Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(' اجمالي الصندوق  ',style: GoogleFonts.cairo(fontSize: 15,color: Colors.black))),
                    Text('${controller.box.length}',style: GoogleFonts.cairo(fontSize: 15,color: Colors.black)),
                  ]
              ),
            ],
            centerTitle: true,
            title: Text('تقارير الصندوق',style: GoogleFonts.cairo(fontSize: 20,color: Colors.black)),
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: ()
              {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_rounded,
                color: Colors.black,

              ),
            ),
          ),
          body: Stack(
            children: [
              Elwave(),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                  itemBuilder: (context,index)
                  {

                    return Cust_Container6(
                        date:' التاريخ  : ${controller.box[index]['date']}',
                        name:' المبلغ المودع  : ${controller.box[index]['name']}',
                        detail:' تفاصيل اضافيه : ${controller.box[index]['detail']}',
                        onTap: (){
                        });
                  },
                  itemCount: controller.box.length,

                  physics: BouncingScrollPhysics(),




                ),
              ),
            ],
          ),


        );
      }
    );
  }
}