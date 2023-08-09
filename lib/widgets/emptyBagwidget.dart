import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';

import '../services/assets_manager.dart';
class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget( {super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText});
final String imagePath,title,subtitle,buttonText;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            SizedBox(height:100,),
            Image.asset(imagePath,
              width: double.infinity,
              height: size.height *0.35,
            ),
            SizedBox(height: 21),
            TitleTextWidget(label:"Whoops",
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 40,),
            SizedBox(height: 20,),
            SubtitleTextWidget(label: title,
              fontWeight: FontWeight.w600,),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SubtitleTextWidget(label: subtitle,
                fontWeight: FontWeight.w400,),
            ),SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.amber.shade700
                ),
                onPressed: (){},
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(buttonText),
                ))
          ],
        ),
      ),
    );
  }
}
