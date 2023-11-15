import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProductList = [];
  late ProductModel productModel;

  fatchHerbsProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();

    for (var element in value.docs) {
      productModel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"),
      );

      newList.add(productModel);
    }
    herbsProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return herbsProductList;
  }
}
