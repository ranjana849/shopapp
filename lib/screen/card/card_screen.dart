import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/screen/card/card_widget.dart';
import 'package:flutterfirebase_app/services/assets_manager.dart';
import 'package:flutterfirebase_app/widgets/emptyBagwidget.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';

import 'bottom_checkout.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
final bool isEmpty =false;
  @override
  Widget build(BuildContext context) {

    return isEmpty? Scaffold(
      body:EmptyBagWidget(
          imagePath:AssetsManager.shopping_basket,
          title:'Your cart is empty',
          subtitle:"Looks like your card is empty add something \n"
              "and make me happy" ,
          buttonText: "Shop Now"),
    )
        :Scaffold(
      bottomSheet: CartButtomSheetCheckout(),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shopping_cart
          ),),
        title:TitleTextWidget(
          label: "Card(6)",
        ),
        actions: [IconButton(
            onPressed: (){}, icon:Icon(Icons.delete,
        color: Colors.red,))],
      ),
          body: ListView.builder(
          itemCount: 10,
          itemBuilder:(context,index)=>
              CardWidget()
      ),
    );
  }
}
