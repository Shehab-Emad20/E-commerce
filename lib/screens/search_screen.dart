import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce_app/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/products/product_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchTextController;

  @override
  void initState() {
    super.initState();
    searchTextController = TextEditingController(); // ✅ correct initialization
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(label: "Search"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              TextField(
                controller: searchTextController,
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  suffix: GestureDetector(
                    onTap: () {
                      // setState(() {
                        searchTextController.clear();
                        FocusScope.of(context).unfocus();
                      // });
                    },
                    child: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: DynamicHeightGridView(
                  builder: (context, index) {
                    return ProductWidget();
                  },
                  itemCount: 20,
                  crossAxisCount: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
