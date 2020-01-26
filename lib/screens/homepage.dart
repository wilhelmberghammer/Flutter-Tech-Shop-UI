import 'package:flutter/material.dart';
import 'package:tech_store/widgets/best_sellers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                isDense: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: 'search',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Text(
              'Categories',
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.headset,
                    color: Colors.white,
                    size: 35,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Colors.black26,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                    size: 35,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Colors.black26,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.laptop,
                    color: Colors.white,
                    size: 35,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Colors.black26,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 35,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Colors.black26,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 25),
            child: Text(
              'Bestseller',
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BestSellers(),
        ],
      ),
    );
  }
}
