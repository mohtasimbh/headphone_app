import 'package:commerialapp/details_page.dart';
import 'package:commerialapp/model/model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 230, 109, 39),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text("Dokan"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            //    height: double.infinity,
            width: double.infinity,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: mylist.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                                img: mylist[index].img,
                                name: mylist[index].name,
                                subtext: mylist[index].subtext,
                                price: mylist[index].price,
                                description: mylist[index].description,
                              )));
                    },
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('${mylist[index].img}'),
                        ),
                        title: Text('${mylist[index].name}'),
                        subtitle: Text('${mylist[index].subtext}'),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
