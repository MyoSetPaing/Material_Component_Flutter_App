

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_component_flutter_app/supplemental/asymmetric_view.dart';

import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("SHRINE"),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: AsymmetricView(products: ProductsRepository.loadProducts(Category.all)),
    );
  }

//  List<Card> _buildGridCards(BuildContext context) {
//    List<Product> products = ProductsRepository.loadProducts(Category.all);
//
//    if(products== null || products.isEmpty){
//      return const <Card>[];
//    }
//
//    final ThemeData theme = Theme.of(context);
//    final NumberFormat formatter = NumberFormat.simpleCurrency(
//        locale: Localizations.localeOf(context).toString());
//
//    return products.map((product) {
//      return Card(
//        clipBehavior: Clip.antiAlias,
//        elevation: 0.0,
//        child: Column(
//          // TODO: Center items on the card (103)
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            AspectRatio(
//              aspectRatio: 18 / 11,
//              child: Image.asset(
//                product.assetName,
//                package: product.assetPackage,
//                fit: BoxFit.fitWidth,
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  // TODO: Change innermost Column (103)
//                  children: <Widget>[
//                    // TODO: Handle overflowing labels (103)
//                    // TODO(larche): Make headline6 when available
//                    Text(
//                      product == null ? '' : product.name,
//                      style: theme.textTheme.button,
//                      softWrap: false,
//                      overflow: TextOverflow.ellipsis,
//                      maxLines: 1,
//                    ),
//                    SizedBox(height: 8.0),
//                    // TODO(larche): Make subtitle2 when available
//                    Text(
//                      product == null ? '' : formatter.format(product.price),
//                      style: theme.textTheme.caption,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      );
//    }).toList();
//  }
}
