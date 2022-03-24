import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   bool _value = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _value==false?Colors.white:Colors.black,

      appBar: AppBar(title: Text("Localization"),
      centerTitle: true,
         actions: [
           Switch(value: _value,
               activeColor: Colors.white,
             inactiveTrackColor: Colors.pinkAccent,
               onChanged:(val){
                 setState(() {
                   _value = val;
                 });

               }
               ),
         ],
      ),
      body: Center(
        child: Column(
          children: [

            SizedBox(height: 20,),



            Text("titel".tr,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color:_value==false?Colors.black:Colors.white),),
            SizedBox(height: 20,),
            Text("sub-titel".tr,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color:_value==false?Colors.black:Colors.white),),

            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Get.updateLocale(Locale('en','US'));
            },
                child:Text('English'),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Get.updateLocale(Locale('bn','BD'));
            },
              child:Text('Bangla'),),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Get.updateLocale(Locale('ar',));
            },
              child:Text('Arabic'),

            ),
          ],
        ),
      ),

    );
  }
}
