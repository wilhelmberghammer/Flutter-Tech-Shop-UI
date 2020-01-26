import 'package:flutter/material.dart';
import 'package:tech_store/models/products.dart';

class BestSellers extends StatefulWidget {
  @override
  _BestSellersState createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  final List<Products> products = [
    Products(
        id: '1',
        title: 'Beats Pro',
        price: 529.99,
        imagePath: 'assets/beats_pro.png'),
    Products(
        id: '2',
        title: 'Beats Solo 3',
        price: 259.99,
        imagePath: 'assets/beats_solo_3.png'),
    Products(
        id: '3',
        title: 'Beats Studio 3',
        price: 359.99,
        imagePath: 'assets/beats_studio_3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 386,
      color: Colors.transparent,
      child: ListView(
        children: <Widget>[
          Column(
            children: products.map((pd) {
              return Container(
                height: 265,
                width: 315,
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      child: Container(
                        height: 250,
                        width: 310,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  height: 170,
                                  width: 120,
                                  color: Colors.transparent,
                                  child: ClipRRect(
                                    child: Image.asset('${pd.imagePath}'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          pd.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$${pd.price}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
