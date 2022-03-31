import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Custom_Container extends StatelessWidget {
   Custom_Container({Key? key,required this.icon,required this.text,required this.onTap}) : super(key: key);
IconData icon ;
String text;
VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 150,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(icon,color: Colors.deepPurple,size: 60,),
            ),
            SizedBox(height: 20,),
            Text(text,style: GoogleFonts.cairo(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold ),),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),

        ),
      ),
    );
  }
}




class Cust_Tkarer extends StatelessWidget {
   Cust_Tkarer({Key? key,required this.text,required this.onTap}) : super(key: key);
String text;
VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        child: Text(text,style: GoogleFonts.cairo(fontSize: 25,fontWeight: FontWeight.bold,)),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrangeAccent,
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}



class Cust_Container extends StatelessWidget {
  Cust_Container(
      {Key? key,
        this.name,
        this.date,
        this.detail,
        this.kemya,
        this.sum,
        this.price,
        this.onTap,

      })
      : super(key: key);
  String? name;
  String? price;
  String? date;
  String? detail;
  String? sum;
  String? kemya;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      style: ListTileStyle.list,
      title: Text(
        name!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            detail!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),

          Text(
            price!,
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            sum!,
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            kemya!,
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 5,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.blueGrey,
          ),

        ],
      ),
    );
  }
}




class Cust_Container2 extends StatelessWidget {
  Cust_Container2(
      {Key? key, this.name, this.phone, this.address, this.date, this.detail, this.sum, this.onTap,}) : super(key: key);
  String? name;
  String? date;
  String? detail;
  String? sum;
  String? phone;
  String? address;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      style: ListTileStyle.list,
      title: Text(
        name!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.grey.shade600),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date!,
            style: GoogleFonts.cairo(
              fontSize: 17, color: Colors.grey.shade600
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            address!,
            style: GoogleFonts.cairo(
            color: Colors.grey.shade600,
              fontSize: 15,

            ),
            textAlign: TextAlign.end,
          ),
          Text(
            detail!,
            style: GoogleFonts.cairo(
              fontSize: 15, color: Colors.grey.shade600
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            '${sum!}',
            style: GoogleFonts.cairo(fontSize: 17,color: Colors.grey.shade600,),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 5,),
          Container(
            height: 40,
            width: 150,
            color: Colors.deepOrangeAccent,
            child: MaterialButton(
              onPressed: () async
              {
                if(await canLaunch(phone!))
                {
                await launch(phone!);
                }

              },
              child: Text('اتصال',
                style: GoogleFonts.cairo(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.blueGrey,
          ),


        ],
      ),
    );
  }
}


class Cust_Container3 extends StatelessWidget {
  Cust_Container3(
      {Key? key,
        this.name,
        this.phone,
        this.address,
        this.date,
        this.detail,
        this.koli,
        this.madfoa,
        this.baki,

        this.onTap,

      })
      : super(key: key);
  String? name;
  String? date;
  String? detail;
  String? phone;
  String? address;
  double? koli ;
  double? madfoa ;
  double? baki ;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      style: ListTileStyle.list,
      title: Text(
        name!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            address!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            detail!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            '${koli!}',
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            '${madfoa!}',
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            '${baki!}',
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            phone!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 5,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.blueGrey,
          ),


        ],
      ),
    );
  }
}

class Cust_Container4 extends StatelessWidget {
  Cust_Container4(
      {Key? key,
        this.name,
        this.date,
        this.detail,
        this.price,
        this.onTap,

      })
      : super(key: key);
  String? name;
  String? date;
  String? detail;
  String? price ;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      style: ListTileStyle.list,
      title: Text(
        name!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            detail!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            '${price!}',
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 5,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.blueGrey,
          ),



        ],
      ),
    );
  }
}

class Cust_Container5 extends StatelessWidget {
  Cust_Container5(
      {Key? key,
        this.name,
        this.phone,
        this.address,
        this.date,
        this.detail,
        this.koli,
        this.madfoa,
        this.baki,

        this.onTap,

      })
      : super(key: key);
  String? name;
  String? date;
  String? detail;
  String? koli;
  String? madfoa;
  String? baki;
  String? phone;
  String? address;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      style: ListTileStyle.list,
      title: Text(
        name!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            address!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            detail!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            '${koli!}',
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            '${madfoa!}',
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          Text(
            '${baki!}',
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 5,),
          Container(
            height: 40,
            width: 150,
            color: Colors.deepOrangeAccent,
            child: MaterialButton(
              onPressed: () async
              {
                if(await canLaunch(phone!))
                {
                  await launch(phone!);
                }

              },
              child: Text('اتصال',
                style: GoogleFonts.cairo(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.blueGrey,
          ),


        ],
      ),
    );
  }
}


class Cust_Container6 extends StatelessWidget {
  Cust_Container6(
      {Key? key,
        this.date,
        this.name,
        this.detail,


        this.onTap,

      })
      : super(key: key);
  String? name;
  String? date;
  String? detail;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      style: ListTileStyle.list,
      title: Text(
        name!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            detail!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 5,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.blueGrey,
          ),



        ],
      ),
    );
  }
}


class Elwave extends StatelessWidget {
  const Elwave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   WaveWidget(
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
        size: Size(600,600));
  }
}

