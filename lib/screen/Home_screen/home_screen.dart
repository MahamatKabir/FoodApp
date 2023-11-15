//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:foodapp/providers/product_provider.dart';
import 'package:foodapp/review_cart/review_cart.dart';
//import 'package:foodapp/auth/sign_in.dart';
import 'package:foodapp/screen/Home_screen/drawer_side.dart';
import 'package:foodapp/screen/Home_screen/single_product.dart';
import 'package:foodapp/screen/product_overview/product_overview.dart';
import 'package:foodapp/screen/search/search.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

ProductProvider productProvider =
    ProductProvider(); // You may need to adjust this line based on your actual ProductProvider constructor.

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Herbs Seasonings'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ),
                  );
                },
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                productProvider.getHerbsProductDataList.map((herbsProductData) {
              return SingalProduct(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        // productId: '1',
                        productImage: herbsProductData.productImage,
                        productName: herbsProductData.productName,
                        productPrice: herbsProductData.productPrice,
                      ),
                    ),
                  );
                },
                //productId: '1',
                productImage: herbsProductData.productImage,
                productName: herbsProductData.productName,
                productPrice: herbsProductData.productPrice,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Fresh Fruits'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ),
                  );
                },
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        // productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                // productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        //productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                //productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        //productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                //productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        //productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                //productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        //productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                //productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Root Vegetable'),
              GestureDetector(
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        //productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                // productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
              SingalProduct(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        // productId: '12',
                        productImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                        productName: 'tavuk',
                        productPrice: 500,
                      ),
                    ),
                  );
                },
                //productId: '12',
                productImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU',
                productName: 'tavuk',
                productPrice: 500,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fatchHerbsProductData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 173, 151),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: const Color.fromRGBO(232, 223, 205, 0.702),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: const Color.fromRGBO(230, 223, 208, 0.702),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ReviewCart(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.shop,
                  size: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqCQ2cLi75FbExPFrtp7xA-LXDnRy8H3-A&usqp=CAU")),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Nasra',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.brown,
                                            blurRadius: 10,
                                            offset: Offset(3, 3))
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            '30% OFF',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'in all foods products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                  Expanded(child: Container())
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(context),
            _buildRootProduct(context)
          ],
        ),
      ),
    );
  }
}
