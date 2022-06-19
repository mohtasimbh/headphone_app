import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products(
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
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int i = 1;
  //int finalprice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 230, 109, 39),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text("Products"),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ]),
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      i++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                Text('$i'),
                IconButton(
                  onPressed: () {
                    setState(() {
                      i--;
                      //finalprice = (widget.price! * i);
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
            Image.network(
              '${widget.img}',
              height: 250,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Total Price'),
            SizedBox(
              height: 10,
            ),
            Text('${((widget.price)! * i)}'),
            ElevatedButton(onPressed: () {}, child: Text("Buy"))
          ],
        ));
  }
}
