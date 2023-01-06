import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:prueba_tecnica/constants.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';



import '../comtrollers/product_controller.dart';

class ApiScreen extends StatelessWidget {

   static String nameroute = 'ApiScreen';


   ApiScreen({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: pPrimarycolor,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: const  BoxDecoration(
              color: pPrimarycolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
              )
            ),
            child: Stack(
              children: [
               Positioned(
                left: 20,
                bottom: 30,
                  child: Container(
                    height: 50,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const[
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10,
                          offset: Offset(0, 5)
                        )
                      ]
                    ),
                    child: const Center(
                      child: Text(
                      'StoreFake',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                  ),
                  
                )
              ]),
          ),
          Expanded(
            child: Obx(
              () {
                if (productController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: productController.productList.length,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    itemBuilder: (context, index) {
                      return CardApi(productController.productList[index]);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}