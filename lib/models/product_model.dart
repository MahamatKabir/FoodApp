class ProductModel {
  String productImage;
  String productName;
  int productPrice;
  //String productId;
  //int productQuantity;
  List<dynamic>? productUnit;
  ProductModel({
    //required this.productQuantity,
    //required this.productId,
    //required this.productUnit,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    this.productUnit,
  });
}
