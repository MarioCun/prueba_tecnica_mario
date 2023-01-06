
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_tecnica/constants.dart';

import '../models/models.dart';

class CardApi extends StatelessWidget {
  final ProductsModel product;
  CardApi(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.image!,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: pPrimarycolor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      )
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child:  Text('\$${product.price}',
                      style: const TextStyle(fontSize: 5, )),
                    ),
                  ) )
                 
              ],
            ),
            const SizedBox(height: 8),
            Text(
              product.title!,
              maxLines: 2,
              style: const TextStyle(
                  fontFamily: 'avenir', fontWeight: FontWeight.w300),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: pPrimarycolor,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating!.rate.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 1),

          ],
        ),
      ),
    );
  }
}
