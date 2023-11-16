import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';
import 'package:flutter_login/komponen.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the next page when the button is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NextPage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              )
            ]),
        child: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Produk'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListField(
                  namaBarang: 'Donut Coklat', harga: '15000', number: '1'),
              ListField(namaBarang: 'Donut Keju', harga: '18000', number: '2'),
              ListField(namaBarang: 'Pie Susu', harga: '5000', number: '3'),
              ListField(namaBarang: 'Bolu Gulung', harga: '30000', number: '4'),
              ListField(namaBarang: 'Kue Nastar', harga: '40000', number: '5'),
              ListField(
                  namaBarang: 'Cookies Coklat', harga: '10000', number: '6'),
              ListField(namaBarang: 'Pie Coklat', harga: '5000', number: '7'),
              ListField(
                  namaBarang: 'Mille Crepes', harga: '20000', number: '8'),
              ListField(
                  namaBarang: 'Daifuku Mochi', harga: '10000', number: '9'),
              ListField(
                  namaBarang: 'Kue Tart Mini', harga: '25000', number: '10'),
            ],
          ),
        ),
      ),
    );
  }
}
