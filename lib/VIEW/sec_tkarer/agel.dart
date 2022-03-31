import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahfaza/CONTROLLER/textform_controller.dart';

import '../component.dart';

class AgelT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AgelTaqController>(
      init: AgelTaqController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
                Column(
                  children:[
                    Container(
                      padding: EdgeInsets.only(right: 20),
                        child: Text(' اجمالي الفواتير  ',style: GoogleFonts.cairo(fontSize: 15,color: Colors.black))),
                    Text('${controller.agel.length}',style: GoogleFonts.cairo(fontSize: 15,color: Colors.black)),
                  ]
                ),
            ],
            centerTitle: true,
            title: Text('تقارير الفواتير الاجله',style: GoogleFonts.cairo(fontSize: 20,color: Colors.black)),
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

                    return Cust_Container5(
                        date:' التاريخ : ${controller.agel[index]['date']}',
                        name:' الاسم  : ${controller.agel[index]['name']}',
                        address:'${controller.agel[index]['address']}',
                        detail:' تفاصيل الفاتورة : ${controller.agel[index]['detail']}',
                        koli:' المجموع :${controller.agel[index]['koli']}',
                        madfoa:' المدفوع :${controller.agel[index]['madfoa']}',
                        baki:' الباقي :${controller.agel[index]['baki']}',
                        phone:'tel:${controller.agel[index]['phone']}',
                        onTap: (){

                        });
                  },
                  itemCount: controller.agel.length,

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