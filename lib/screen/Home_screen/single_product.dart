import 'package:flutter/material.dart';
//import 'package:food_app/config/colors.dart';
//import 'package:food_app/models/product_model.dart';
//import 'package:food_app/widgets/count.dart';
//import 'package:food_app/widgets/product_unit.dart';
import 'package:foodapp/config/colors.dart';

class SingalProduct extends StatefulWidget {
  final String productImage;
  final String productName;
  final int productPrice;
  final Function onTap;
  //final String productId;

  // var productUnit;
  //final ProductModel productUnit;
  SingalProduct(
      {
      //required this.productId,
      required this.productImage,
      required this.productName,
      // this.productUnit,
      required this.onTap,
      required this.productPrice});

  @override
  _SingalProductState createState() => _SingalProductState();
}

class _SingalProductState extends State<SingalProduct> {
  var unitData;
  var firstValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: 230,
              width: 165,
              decoration: BoxDecoration(
                color: const Color(0xffd9dad9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.onTap();
                    },
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      child: Image.network(
                        widget.productImage,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.productName,
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Text(
                          // '${}\$/${unitData ?? firstValue}',
                          // style: const TextStyle(
                          // color: Colors.grey,
                          //),
                          //),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(left: 5),
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  children: [
                                    Expanded(
                                      child: Text('50Gram',
                                          style: TextStyle(fontSize: 10)),
                                    ),
                                    Center(
                                      child: Icon(
                                        Icons.arrow_back,
                                        size: 20,
                                        color: Colors.brown,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.remove, size: 15),
                                    Text('1'),
                                    Icon(Icons.add, size: 15),
                                  ],
                                ),
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
