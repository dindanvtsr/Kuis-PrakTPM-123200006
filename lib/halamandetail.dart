import 'package:flutter/material.dart';
import 'data_buku.dart';

class HalamanDetail extends StatelessWidget {
  final DataBuku book;
  const HalamanDetail({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Icon actionIcon = new Icon(Icons.search);
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        automaticallyImplyLeading: true,
        actions: <Widget> [
          new IconButton(icon: actionIcon, onPressed: (){})]
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 31,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Image.network(book.imageLink),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text(
                "Judul : " + book.title + "\nPenulis : " + book.author + "\nBahasa : " + book.language + "\nNegara : " + book.country + "\nJumlah Halaman : " + book.pages.toString() + "\nTahun Terbit : " + book.year.toString() + "\nStatus : " + book.isAvailable.toString()
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          Padding(
            padding: const EdgeInsets.only(left:15, right: 15),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Pinjam Buku'),
              )
          ),
        ],
      ),
    );
  }
}
