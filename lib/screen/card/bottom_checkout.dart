import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';
class CartButtomSheetCheckout extends StatelessWidget {
  const CartButtomSheetCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Theme.of(context).scaffoldBackgroundColor,
        border: Border(top: BorderSide(
          width:1,color: Colors.grey,
        ))
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: kBottomNavigationBarHeight+10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: TitleTextWidget(
                          label: "Total(5 products/9 items)"),
                    ),

                SubtitleTextWidget(label: "16.0\$",
                color: Colors.blue,),
            ],
          ),
              ),
              ElevatedButton(
                  onPressed: (){},
                  child:Text('Checkout')),
            ],
          ),
        ),
      ) ,
    );
  }
}
