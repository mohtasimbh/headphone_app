import 'package:commerialapp/products.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage(
      {Key? key,
      this.name,
      this.subtext,
      this.price,
      this.description,
      this.img})
      : super(key: key);
  String? name;
  String? img;
  double? price;
  String? subtext;
  String? description;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 230, 109, 39),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Product Details"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))]),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network('${widget.img}'),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.description_rounded),
                  Icon(Icons.info_rounded),
                  Icon(Icons.handshake_rounded),
                  Icon(Icons.message_sharp),
                  Icon(Icons.business_center),
                  Icon(Icons.lock),
                  Icon(Icons.star),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text('Name : ${widget.name}'),
          SizedBox(
            height: 12,
          ),
          Text('${widget.subtext}'),
          SizedBox(
            height: 12,
          ),
          Text('Price : ${widget.price}'),
          SizedBox(
            height: 12,
          ),
          Text('${widget.description}'),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Products(
                            img: widget.img,
                            name: widget.name,
                            price: widget.price,
                            subtext: widget.subtext,
                            description: widget.description,
                          )));
                },
                child: Text('Add to Cart')),
          )
        ],
      ),
    );
  }
}
