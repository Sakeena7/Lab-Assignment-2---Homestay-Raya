import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:homestay_raya/views/mainscreen.dart';

import 'profilescreen.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Seller")),
      body: const Center(child: Text("Seller")),
      drawer: Drawer(
        child: ListView(
          children: [
              UserAccountsDrawerHeader(
              accountEmail: 
              const Text('test@mypasar.com'), // keep blank text because email is required
              accountName: Row(
               children: <Widget>[
               Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.check,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 const Text('user'),
                 const Text('@User'),
                ],
              ),
            ],
          ),
          ),
            ListTile(
              title: const Text('Buyer'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context, 
                MaterialPageRoute(
                  builder: (content) => const MainScreen()));
              },
            ),
            ListTile(
              title: const Text('Seller'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context, 
                MaterialPageRoute(
                  builder: (content) => const SellerScreen()));
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context, 
                MaterialPageRoute(
                  builder: (content) => const ProfileScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}