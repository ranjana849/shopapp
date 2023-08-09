import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
class QuantityBottomSheet extends StatelessWidget {
  const QuantityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
       children: [
         Container(
           height: 6,
           width: 50,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12.0),
           color: Colors.grey
         ),),

         Expanded(
           child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
             //shrinkWrap: true,
             itemCount: 25,
               itemBuilder: (context,index)=>
                   InkWell(
                     onTap: (){
                       print("index $index");
                     },
                     child: Center(child: Padding(
                       padding: const EdgeInsets.all(4.0),
                       child: SubtitleTextWidget(label: "${index+1}"),
                     )),
                   )
           ),
         ),
       ],
     ),
   );
  }
}
