import 'package:flutter/material.dart';
import 'halamandetail.dart';
import 'data_buku.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Buku"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listBuku.length,
        itemBuilder: (context, index) {
          final DataBuku book = listBuku[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanDetail(book: book,)
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image.network(book.imageLink),
                  ),
                  //text
                  Text(
                    book.title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    book.author,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
