import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'clspage.dart';

class elibilityscreen extends StatelessWidget {
  final agecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Eligibility>(create:(context)=>Eligibility(),
      child: Consumer<Eligibility>(
        builder: (context,provider,child){
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(decoration: BoxDecoration(shape: BoxShape.circle,
                    color: (provider.isEligible==null)?Colors.lightGreen:
                    provider.isEligible?Colors.blue:Colors.red),
                  width: 50,
                  height: 50,),
                SizedBox(height: 20,),
                TextField(controller: agecontroller,
                  keyboardType: TextInputType.number
                  ,decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      ),hintText: "Enter Your Age"),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  final int age = int.parse(agecontroller.text.trim());
                  provider.checkEligibility(age);
                }, child: Text("Check")),
                SizedBox(height: 20,),
                Text(provider.elibilityMessage)
              ],
            ),
          );
        },
      ),);
  }
}
