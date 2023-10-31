import 'package:estados/model/cartModel.dart';
import 'package:estados/model/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Inventario extends StatelessWidget {
  Inventario({Key? key}) : super(key: key);

  List<Product> productos = [
    Product('Gaseosa', 1.50),
    Product('Cerveza', 1.0),
    Product('Chocorramo', 0.50),
    Product('Agua', 0.3),
    Product('Pan', 1.0),
    Product('Leche', 2.0),
    Product('Huevos (dozen)', 3.5),
    Product('Manzanas (kg)', 2.5),
    Product('Pasta', 0.8),
    Product('Café', 4.0),
    Product('Azúcar (kg)', 1.2),
    Product('Aceite de oliva', 5.0),
    Product('Tomates (kg)', 2.0),
    Product('Arroz (kg)', 1.5),
    Product('Jamón', 3.0),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inventario'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 26.0),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart, size: 30.0),
                onPressed: () => context.go('/carrito'),
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          productos[index].name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${productos[index].price.toString()}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            ElevatedButton(
                              onPressed: () {
                                final cart = Provider.of<CarritoModel>(context,
                                    listen: false);
                                cart.addToCart(productos[index]);
                              },
                              child: const Text('+'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 16.0), // Adjust the height as needed
                    ],
                  );
                },
                childCount: productos.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
