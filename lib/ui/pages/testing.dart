import 'package:flutter/material.dart';

import 'package:komerce/controller/cari_order_controller.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final CariOrderController _controller = CariOrderController();
  final TextEditingController _searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Masukkan kata kunci...',
                labelText: 'Cari',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    final searchQuery = _searchController.text;
                    if (searchQuery.isNotEmpty) {
                      // Panggil metode pencarian dari controller
                      _controller.searchOrder(context, searchQuery);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
