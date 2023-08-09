
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterfirebase_app/widgets/products/product_widget.dart';

import '../services/assets_manager.dart';
import '../widgets/products/latest_arrival.dart';
import '../widgets/title_text.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var searchTextController =TextEditingController();
  @override
  void initState() {
    searchTextController=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AssetsManager.shopping_cart
              ),),
            title: TitleTextWidget(label: "Search Products",),
          ),
          body:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                children: [
                  TextField(
                    controller:searchTextController ,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap:(){
                              setState(() {
                                searchTextController.clear();
                              });
                            },
                            child: Icon(IconlyLight.closeSquare)),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search'
                    ),
                    onChanged: (value){
                      print('value of the text is $value');
                    },
                    onSubmitted: (value){
                      print('value of the text is $value');
                      print('value of the controller text:${searchTextController.text}');
                    },
                  ),
                  SizedBox(height: 15,),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: 15,
                      itemBuilder: ( context, index) {
                        return LatestArrivalWidget();
                      },

                            ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
